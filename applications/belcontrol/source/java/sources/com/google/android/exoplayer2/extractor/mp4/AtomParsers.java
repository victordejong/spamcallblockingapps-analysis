package com.google.android.exoplayer2.extractor.mp4;

import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/AtomParsers.class */
public final class AtomParsers {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 3;
    private static final String TAG = "AtomParsers";
    private static final int TYPE_vide = Util.getIntegerCodeForString("vide");
    private static final int TYPE_soun = Util.getIntegerCodeForString("soun");
    private static final int TYPE_text = Util.getIntegerCodeForString("text");
    private static final int TYPE_sbtl = Util.getIntegerCodeForString("sbtl");
    private static final int TYPE_subt = Util.getIntegerCodeForString("subt");
    private static final int TYPE_clcp = Util.getIntegerCodeForString("clcp");
    private static final int TYPE_meta = Util.getIntegerCodeForString("meta");

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator.class */
    public static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            Assertions.checkState(parsableByteArray.readInt() != 1 ? false : true, "first_chunk must be 1");
            this.index = -1;
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index != this.nextSamplesPerChunkChangeIndex) {
                return true;
            }
            this.numSamples = this.stsc.readUnsignedIntToInt();
            this.stsc.skipBytes(4);
            int i2 = this.remainingSamplesPerChunkChanges - 1;
            this.remainingSamplesPerChunkChanges = i2;
            this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox.class */
    public interface SampleSizeBox {
        int getSampleCount();

        boolean isFixedSampleSize();

        int readNextSampleSize();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData.class */
    public static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData.class */
    public static final class TkhdData {
        private final long duration;

        /* renamed from: id */
        private final int f3600id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.f3600id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    private AtomParsers() {
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        boolean z = true;
        int length = jArr.length - 1;
        int constrainValue = Util.constrainValue(3, 0, length);
        int constrainValue2 = Util.constrainValue(jArr.length - 3, 0, length);
        if (jArr[0] > j2 || j2 >= jArr[constrainValue] || jArr[constrainValue2] >= j3 || j3 > j) {
            z = false;
        }
        return z;
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) {
        int position = parsableByteArray.getPosition();
        while (true) {
            int i3 = position;
            if (i3 - i < i2) {
                parsableByteArray.setPosition(i3);
                int readInt = parsableByteArray.readInt();
                Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
                if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                    return i3;
                }
                position = i3 + readInt;
            } else {
                return -1;
            }
        }
    }

    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        Format parseEAc3AnnexFFormat;
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (z) {
            i6 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            i7 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            int readUnsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            if (i6 == 1) {
                parsableByteArray.skipBytes(16);
            }
            i8 = readUnsignedFixedPoint1616;
        } else if (i6 != 2) {
            return;
        } else {
            parsableByteArray.skipBytes(16);
            i8 = (int) Math.round(parsableByteArray.readDouble());
            i7 = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
        }
        int position = parsableByteArray.getPosition();
        DrmInitData drmInitData2 = drmInitData;
        int i10 = i;
        if (i == Atom.TYPE_enca) {
            Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i2, i3);
            drmInitData2 = drmInitData;
            if (parseSampleEntryEncryptionData != null) {
                i = ((Integer) parseSampleEntryEncryptionData.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.copyWithSchemeType(((TrackEncryptionBox) parseSampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) parseSampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
            i10 = i;
        }
        DrmInitData drmInitData3 = drmInitData2;
        String str2 = i10 == Atom.TYPE_ac_3 ? MimeTypes.AUDIO_AC3 : i10 == Atom.TYPE_ec_3 ? MimeTypes.AUDIO_E_AC3 : i10 == Atom.TYPE_dtsc ? MimeTypes.AUDIO_DTS : (i10 == Atom.TYPE_dtsh || i10 == Atom.TYPE_dtsl) ? MimeTypes.AUDIO_DTS_HD : i10 == Atom.TYPE_dtse ? MimeTypes.AUDIO_DTS_EXPRESS : i10 == Atom.TYPE_samr ? MimeTypes.AUDIO_AMR_NB : i10 == Atom.TYPE_sawb ? MimeTypes.AUDIO_AMR_WB : (i10 == Atom.TYPE_lpcm || i10 == Atom.TYPE_sowt) ? MimeTypes.AUDIO_RAW : i10 == Atom.TYPE__mp3 ? MimeTypes.AUDIO_MPEG : i10 == Atom.TYPE_alac ? MimeTypes.AUDIO_ALAC : null;
        int i11 = position;
        byte[] bArr = null;
        while (i11 - i2 < i3) {
            parsableByteArray.setPosition(i11);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            int readInt2 = parsableByteArray.readInt();
            int i12 = Atom.TYPE_esds;
            if (readInt2 == i12 || (z && readInt2 == Atom.TYPE_wave)) {
                int findEsdsPosition = readInt2 == i12 ? i11 : findEsdsPosition(parsableByteArray, i11, readInt);
                i9 = i11;
                if (findEsdsPosition != -1) {
                    Pair<String, byte[]> parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, findEsdsPosition);
                    String str3 = (String) parseEsdsFromParent.first;
                    byte[] bArr2 = (byte[]) parseEsdsFromParent.second;
                    i9 = i11;
                    str2 = str3;
                    bArr = bArr2;
                    if (MimeTypes.AUDIO_AAC.equals(str3)) {
                        Pair<Integer, Integer> parseAacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArr2);
                        i8 = ((Integer) parseAacAudioSpecificConfig.first).intValue();
                        i7 = ((Integer) parseAacAudioSpecificConfig.second).intValue();
                        bArr = bArr2;
                        str2 = str3;
                        i9 = i11;
                    }
                }
            } else {
                if (readInt2 == Atom.TYPE_dac3) {
                    parsableByteArray.setPosition(i11 + 8);
                    parseEAc3AnnexFFormat = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData3);
                } else if (readInt2 == Atom.TYPE_dec3) {
                    parsableByteArray.setPosition(i11 + 8);
                    parseEAc3AnnexFFormat = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData3);
                } else {
                    if (readInt2 == Atom.TYPE_ddts) {
                        stsdData.format = Format.createAudioSampleFormat(Integer.toString(i4), str2, null, -1, -1, i7, i8, null, drmInitData3, 0, str);
                    } else if (readInt2 == Atom.TYPE_alac) {
                        bArr = new byte[readInt];
                        parsableByteArray.setPosition(i11);
                        parsableByteArray.readBytes(bArr, 0, readInt);
                        i9 = i11;
                    }
                    i9 = i11;
                }
                stsdData.format = parseEAc3AnnexFFormat;
                i9 = i11;
            }
            i11 = i9 + readInt;
        }
        if (stsdData.format != null || str2 == null) {
            return;
        }
        stsdData.format = Format.createAudioSampleFormat(Integer.toString(i4), str2, null, -1, -1, i7, i8, MimeTypes.AUDIO_RAW.equals(str2) ? 2 : -1, bArr == null ? null : Collections.singletonList(bArr), drmInitData3, 0, str);
    }

    public static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        String str;
        Integer num;
        int i3 = i + 8;
        String str2 = null;
        Integer num2 = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == Atom.TYPE_frma) {
                num = Integer.valueOf(parsableByteArray.readInt());
                str = str2;
            } else if (readInt2 == Atom.TYPE_schm) {
                parsableByteArray.skipBytes(4);
                str = parsableByteArray.readString(4);
                num = num2;
            } else {
                str = str2;
                num = num2;
                if (readInt2 == Atom.TYPE_schi) {
                    i4 = i3;
                    i5 = readInt;
                    num = num2;
                    str = str2;
                }
            }
            i3 += readInt;
            str2 = str;
            num2 = num;
        }
        if (C0515C.CENC_TYPE_cenc.equals(str2) || C0515C.CENC_TYPE_cbc1.equals(str2) || C0515C.CENC_TYPE_cens.equals(str2) || C0515C.CENC_TYPE_cbcs.equals(str2)) {
            Assertions.checkArgument(num2 != null, "frma atom is mandatory");
            Assertions.checkArgument(i4 != -1, "schi atom is mandatory");
            TrackEncryptionBox parseSchiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, str2);
            boolean z = false;
            if (parseSchiFromParent != null) {
                z = true;
            }
            Assertions.checkArgument(z, "tenc atom is mandatory");
            return Pair.create(num2, parseSchiFromParent);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType;
        if (containerAtom == null || (leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst)) == null) {
            return Pair.create(null, null);
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[readUnsignedIntToInt];
        long[] jArr2 = new long[readUnsignedIntToInt];
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            jArr[i] = (parseFullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt()) == true ? 1 : 0;
            jArr2[i] = (parseFullAtomVersion == 1 ? parsableByteArray.readLong() : (long) parsableByteArray.readInt()) == true ? 1 : 0;
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (MimeTypes.AUDIO_MPEG.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int parseExpandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[parseExpandableClassSize];
        parsableByteArray.readBytes(bArr, 0, parseExpandableClassSize);
        return Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while (true) {
            int i2 = i;
            if ((readUnsignedByte & 128) == 128) {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
                i = (i2 << 7) | (readUnsignedByte & 127);
            } else {
                return i2;
            }
        }
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        int readInt = parsableByteArray.readInt();
        if (readInt == TYPE_soun) {
            return 1;
        }
        if (readInt == TYPE_vide) {
            return 2;
        }
        if (readInt == TYPE_text || readInt == TYPE_sbtl || readInt == TYPE_subt || readInt == TYPE_clcp) {
            return 3;
        }
        return readInt == TYPE_meta ? 4 : -1;
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry parseIlstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (parseIlstElement != null) {
                arrayList.add(parseIlstElement);
            }
        }
        return arrayList.isEmpty() ? null : new Metadata(arrayList);
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        int i = 8;
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        parsableByteArray.skipBytes(i);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(readUnsignedInt), "" + ((char) (((readUnsignedShort >> 10) & 31) + 96)) + ((char) (((readUnsignedShort >> 5) & 31) + 96)) + ((char) ((readUnsignedShort & 31) + 96)));
    }

    private static Metadata parseMetaAtom(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_ilst) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + readInt);
            }
            parsableByteArray.skipBytes(readInt - 8);
        }
        return null;
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0) {
            i = 16;
        }
        parsableByteArray.skipBytes(i);
        return parsableByteArray.readUnsignedInt();
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i;
        int i4 = 8;
        while (true) {
            int i5 = i3 + i4;
            if (i5 - i < i2) {
                parsableByteArray.setPosition(i5);
                int readInt = parsableByteArray.readInt();
                if (parsableByteArray.readInt() == Atom.TYPE_proj) {
                    return Arrays.copyOfRange(parsableByteArray.data, i5, readInt + i5);
                }
                i3 = i5;
                i4 = readInt;
            } else {
                return null;
            }
        }
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) {
        Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (true) {
            int i3 = position;
            if (i3 - i < i2) {
                parsableByteArray.setPosition(i3);
                int readInt = parsableByteArray.readInt();
                Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
                if (parsableByteArray.readInt() == Atom.TYPE_sinf && (parseCommonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, i3, readInt)) != null) {
                    return parseCommonEncryptionSinfFromParent;
                }
                position = i3 + readInt;
            } else {
                return null;
            }
        }
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i < i2) {
                parsableByteArray.setPosition(i7);
                int readInt = parsableByteArray.readInt();
                if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                    int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                    parsableByteArray.skipBytes(1);
                    if (parseFullAtomVersion == 0) {
                        parsableByteArray.skipBytes(1);
                        i4 = 0;
                        i3 = 0;
                    } else {
                        int readUnsignedByte = parsableByteArray.readUnsignedByte();
                        i3 = readUnsignedByte & 15;
                        i4 = (readUnsignedByte & HighLevelEncoder.LATCH_TO_EDIFACT) >> 4;
                    }
                    boolean z = parsableByteArray.readUnsignedByte() == 1;
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    byte[] bArr = new byte[16];
                    parsableByteArray.readBytes(bArr, 0, 16);
                    byte[] bArr2 = null;
                    if (z) {
                        bArr2 = null;
                        if (readUnsignedByte2 == 0) {
                            int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                            bArr2 = new byte[readUnsignedByte3];
                            parsableByteArray.readBytes(bArr2, 0, readUnsignedByte3);
                        }
                    }
                    return new TrackEncryptionBox(z, str, readUnsignedByte2, bArr, i4, i3, bArr2);
                }
                i5 = i7;
                i6 = readInt;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v228, types: [long] */
    /* JADX WARN: Type inference failed for: r0v255, types: [long] */
    /* JADX WARN: Type inference failed for: r0v318, types: [long] */
    /* JADX WARN: Type inference failed for: r0v326, types: [long] */
    /* JADX WARN: Type inference failed for: r0v373, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    public static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) {
        SampleSizeBox sampleSizeBox;
        boolean z;
        int i;
        int i2;
        char c;
        int i3;
        long[] jArr;
        int[] iArr;
        int[] iArr2;
        long[] jArr2;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            sampleSizeBox = new StszSampleSizeBox(leafAtomOfType);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            sampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = sampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], C0515C.TIME_UNSET);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = null;
        ParsableByteArray parsableByteArray5 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray6 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int readUnsignedIntToInt = parsableByteArray3.readUnsignedIntToInt() - 1;
        int readUnsignedIntToInt2 = parsableByteArray3.readUnsignedIntToInt();
        int readUnsignedIntToInt3 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray6 != null) {
            parsableByteArray6.setPosition(12);
            i = parsableByteArray6.readUnsignedIntToInt();
        } else {
            i = 0;
        }
        int i4 = -1;
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            int readUnsignedIntToInt4 = parsableByteArray5.readUnsignedIntToInt();
            i2 = readUnsignedIntToInt4;
            if (readUnsignedIntToInt4 > 0) {
                i4 = parsableByteArray5.readUnsignedIntToInt() - 1;
                i2 = readUnsignedIntToInt4;
                parsableByteArray4 = parsableByteArray5;
            }
        } else {
            i2 = 0;
            parsableByteArray4 = parsableByteArray5;
        }
        if (!(sampleSizeBox.isFixedSampleSize() && MimeTypes.AUDIO_RAW.equals(track.format.sampleMimeType) && readUnsignedIntToInt == 0 && i == 0 && i2 == 0)) {
            jArr2 = new long[sampleCount];
            int[] iArr3 = new int[sampleCount];
            long[] jArr3 = new long[sampleCount];
            iArr2 = new int[sampleCount];
            char c2 = 0;
            char c3 = 0;
            int i5 = readUnsignedIntToInt;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = i2;
            int i10 = 0;
            int i11 = i4;
            int i12 = 0;
            while (i6 < sampleCount) {
                int i13 = readUnsignedIntToInt2;
                char c4 = c3;
                while (i8 == 0) {
                    Assertions.checkState(chunkIterator.moveNext());
                    c4 = chunkIterator.offset;
                    i8 = chunkIterator.numSamples;
                }
                int i14 = i5;
                int i15 = i;
                int i16 = i7;
                int i17 = i10;
                if (parsableByteArray6 != null) {
                    while (i7 == 0 && i > 0) {
                        i7 = parsableByteArray6.readUnsignedIntToInt();
                        i10 = parsableByteArray6.readInt();
                        i--;
                    }
                    i16 = i7 - 1;
                    i17 = i10;
                    i15 = i;
                }
                jArr2[i6] = c4 == 1 ? 1 : 0;
                iArr3[i6] = sampleSizeBox.readNextSampleSize();
                int i18 = i12;
                if (iArr3[i6] > i12) {
                    i18 = iArr3[i6];
                }
                jArr3[i6] = c2 + i17;
                iArr2[i6] = parsableByteArray4 == null ? 1 : 0;
                int i19 = i9;
                int i20 = i11;
                if (i6 == i11) {
                    iArr2[i6] = 1;
                    int i21 = i9 - 1;
                    i19 = i21;
                    i20 = i11;
                    if (i21 > 0) {
                        i20 = parsableByteArray4.readUnsignedIntToInt() - 1;
                        i19 = i21;
                    }
                }
                c2 += readUnsignedIntToInt3;
                int i22 = i13 - 1;
                int i23 = readUnsignedIntToInt3;
                int i24 = i22;
                int i25 = i14;
                if (i22 == 0) {
                    i23 = readUnsignedIntToInt3;
                    i24 = i22;
                    i25 = i14;
                    if (i14 > 0) {
                        i24 = parsableByteArray3.readUnsignedIntToInt();
                        i23 = parsableByteArray3.readInt();
                        i25 = i14 - 1;
                    }
                }
                c3 = c4 + iArr3[i6];
                i8--;
                i6++;
                readUnsignedIntToInt2 = i24;
                i10 = i17;
                readUnsignedIntToInt3 = i23;
                i9 = i19;
                i12 = i18;
                i11 = i20;
                i5 = i25;
                i = i15;
                i7 = i16;
            }
            c = c2 + i10;
            Assertions.checkArgument(i7 == 0);
            while (i > 0) {
                Assertions.checkArgument(parsableByteArray6.readUnsignedIntToInt() == 0);
                parsableByteArray6.readInt();
                i--;
            }
            if (i9 != 0 || readUnsignedIntToInt2 != 0 || i8 != 0 || i5 != 0) {
                Log.w(TAG, "Inconsistent stbl box for track " + track.f3601id + ": remainingSynchronizationSamples " + i9 + ", remainingSamplesAtTimestampDelta " + readUnsignedIntToInt2 + ", remainingSamplesInChunk " + i8 + ", remainingTimestampDeltaChanges " + i5);
            }
            jArr = jArr3;
            iArr = iArr3;
            i3 = i12;
        } else {
            int i26 = chunkIterator.length;
            long[] jArr4 = new long[i26];
            int[] iArr4 = new int[i26];
            while (chunkIterator.moveNext()) {
                int i27 = chunkIterator.index;
                jArr4[i27] = chunkIterator.offset;
                iArr4[i27] = chunkIterator.numSamples;
            }
            Format format = track.format;
            FixedSampleSizeRechunker.Results rechunk = FixedSampleSizeRechunker.rechunk(Util.getPcmFrameSize(format.pcmEncoding, format.channelCount), jArr4, iArr4, readUnsignedIntToInt3);
            jArr2 = rechunk.offsets;
            iArr = rechunk.sizes;
            i3 = rechunk.maximumSize;
            jArr = rechunk.timestamps;
            iArr2 = rechunk.flags;
            c = rechunk.duration;
        }
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(c, C0515C.MICROS_PER_SECOND, track.timescale);
        if (track.editListDurations == null || gaplessInfoHolder.hasGaplessInfo()) {
            Util.scaleLargeTimestampsInPlace(jArr, C0515C.MICROS_PER_SECOND, track.timescale);
            return new TrackSampleTable(track, jArr2, iArr, i3, jArr, iArr2, scaleLargeTimestamp);
        }
        long[] jArr5 = track.editListDurations;
        if (jArr5.length == 1 && track.type == 1 && jArr.length >= 2) {
            long j = track.editListMediaTimes[0];
            long scaleLargeTimestamp2 = j + Util.scaleLargeTimestamp(jArr5[0], track.timescale, track.movieTimescale);
            if (canApplyEditWithGaplessInfo(jArr, c, j, scaleLargeTimestamp2)) {
                long scaleLargeTimestamp3 = Util.scaleLargeTimestamp(j - jArr[0], track.format.sampleRate, track.timescale);
                long scaleLargeTimestamp4 = Util.scaleLargeTimestamp(c - scaleLargeTimestamp2, track.format.sampleRate, track.timescale);
                if ((scaleLargeTimestamp3 != 0 || scaleLargeTimestamp4 != 0) && scaleLargeTimestamp3 <= 2147483647L && scaleLargeTimestamp4 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) scaleLargeTimestamp3;
                    gaplessInfoHolder.encoderPadding = (int) scaleLargeTimestamp4;
                    Util.scaleLargeTimestampsInPlace(jArr, C0515C.MICROS_PER_SECOND, track.timescale);
                    return new TrackSampleTable(track, jArr2, iArr, i3, jArr, iArr2, scaleLargeTimestamp);
                }
            }
        }
        long[] jArr6 = track.editListDurations;
        if (jArr6.length == 1 && jArr6[0] == 0) {
            long j2 = track.editListMediaTimes[0];
            for (int i28 = 0; i28 < jArr.length; i28++) {
                jArr[i28] = Util.scaleLargeTimestamp(jArr[i28] - j2, C0515C.MICROS_PER_SECOND, track.timescale);
            }
            return new TrackSampleTable(track, jArr2, iArr, i3, jArr, iArr2, Util.scaleLargeTimestamp(c - j2, C0515C.MICROS_PER_SECOND, track.timescale));
        }
        boolean z2 = track.type == 1;
        boolean z3 = false;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        while (true) {
            long[] jArr7 = track.editListDurations;
            if (i31 >= jArr7.length) {
                break;
            }
            long j3 = track.editListMediaTimes[i31];
            boolean z4 = z3;
            int i32 = i29;
            int i33 = i30;
            if (j3 != -1) {
                long scaleLargeTimestamp5 = Util.scaleLargeTimestamp(jArr7[i31], track.timescale, track.movieTimescale);
                int binarySearchCeil = Util.binarySearchCeil(jArr, j3, true, true);
                i33 = Util.binarySearchCeil(jArr, j3 + scaleLargeTimestamp5, z2, false);
                i32 = i29 + (i33 - binarySearchCeil);
                z4 = z3 | (i30 != binarySearchCeil);
            }
            i31++;
            z3 = z4;
            i29 = i32;
            i30 = i33;
        }
        long[] jArr8 = jArr2;
        boolean z5 = z3 | (i29 != sampleCount);
        long[] jArr9 = z5 ? new long[i29] : jArr8;
        int[] iArr5 = z5 ? new int[i29] : iArr;
        int i34 = i3;
        if (z5) {
            i34 = 0;
        }
        int[] iArr6 = z5 ? new int[i29] : iArr2;
        long[] jArr10 = new long[i29];
        int i35 = 0;
        int i36 = 0;
        char c5 = 0;
        while (true) {
            long[] jArr11 = track.editListDurations;
            if (i36 >= jArr11.length) {
                return new TrackSampleTable(track, jArr9, iArr5, i34, jArr10, iArr6, Util.scaleLargeTimestamp(c5, C0515C.MICROS_PER_SECOND, track.timescale));
            }
            long j4 = track.editListMediaTimes[i36];
            long j5 = jArr11[i36];
            if (j4 != -1) {
                long scaleLargeTimestamp6 = Util.scaleLargeTimestamp(j5, track.timescale, track.movieTimescale);
                int binarySearchCeil2 = Util.binarySearchCeil(jArr, j4, true, true);
                int binarySearchCeil3 = Util.binarySearchCeil(jArr, scaleLargeTimestamp6 + j4, z2, false);
                if (z5) {
                    int i37 = binarySearchCeil3 - binarySearchCeil2;
                    System.arraycopy(jArr8, binarySearchCeil2, jArr9, i35, i37);
                    System.arraycopy(iArr, binarySearchCeil2, iArr5, i35, i37);
                    System.arraycopy(iArr2, binarySearchCeil2, iArr6, i35, i37);
                }
                if (binarySearchCeil2 < binarySearchCeil3 && (iArr6[i35] & 1) == 0) {
                    Log.w(TAG, "Ignoring edit list: edit does not start with a sync sample.");
                    throw new UnhandledEditListException();
                }
                while (binarySearchCeil2 < binarySearchCeil3) {
                    jArr10[i35] = Util.scaleLargeTimestamp(c5, C0515C.MICROS_PER_SECOND, track.movieTimescale) + Util.scaleLargeTimestamp(jArr[binarySearchCeil2] - j4, C0515C.MICROS_PER_SECOND, track.timescale);
                    int i38 = i34;
                    if (z5) {
                        i38 = i34;
                        if (iArr5[i35] > i34) {
                            i38 = iArr[binarySearchCeil2];
                        }
                    }
                    i35++;
                    binarySearchCeil2++;
                    i34 = i38;
                }
            }
            c5 += j5;
            i36++;
        }
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) {
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(readInt);
        for (int i3 = 0; i3 < readInt; i3++) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            Assertions.checkArgument(readInt2 > 0, "childAtomSize should be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == Atom.TYPE_avc1 || readInt3 == Atom.TYPE_avc3 || readInt3 == Atom.TYPE_encv || readInt3 == Atom.TYPE_mp4v || readInt3 == Atom.TYPE_hvc1 || readInt3 == Atom.TYPE_hev1 || readInt3 == Atom.TYPE_s263 || readInt3 == Atom.TYPE_vp08 || readInt3 == Atom.TYPE_vp09) {
                parseVideoSampleEntry(parsableByteArray, readInt3, position, readInt2, i, i2, drmInitData, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_mp4a || readInt3 == Atom.TYPE_enca || readInt3 == Atom.TYPE_ac_3 || readInt3 == Atom.TYPE_ec_3 || readInt3 == Atom.TYPE_dtsc || readInt3 == Atom.TYPE_dtse || readInt3 == Atom.TYPE_dtsh || readInt3 == Atom.TYPE_dtsl || readInt3 == Atom.TYPE_samr || readInt3 == Atom.TYPE_sawb || readInt3 == Atom.TYPE_lpcm || readInt3 == Atom.TYPE_sowt || readInt3 == Atom.TYPE__mp3 || readInt3 == Atom.TYPE_alac) {
                parseAudioSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, z, drmInitData, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_TTML || readInt3 == Atom.TYPE_tx3g || readInt3 == Atom.TYPE_wvtt || readInt3 == Atom.TYPE_stpp || readInt3 == Atom.TYPE_c608) {
                parseTextSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, stsdData);
            } else if (readInt3 == Atom.TYPE_camm) {
                stsdData.format = Format.createSampleFormat(Integer.toString(i), MimeTypes.APPLICATION_CAMERA_MOTION, null, -1, null);
            }
            parsableByteArray.setPosition(position + readInt2);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) {
        String str2;
        parsableByteArray.setPosition(i2 + 8 + 8);
        List list = null;
        char c = 65535;
        if (i == Atom.TYPE_TTML) {
            str2 = MimeTypes.APPLICATION_TTML;
        } else if (i == Atom.TYPE_tx3g) {
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            parsableByteArray.readBytes(bArr, 0, i5);
            list = Collections.singletonList(bArr);
            str2 = MimeTypes.APPLICATION_TX3G;
        } else if (i == Atom.TYPE_wvtt) {
            str2 = MimeTypes.APPLICATION_MP4VTT;
        } else if (i == Atom.TYPE_stpp) {
            c = 0;
            str2 = MimeTypes.APPLICATION_TTML;
        } else if (i != Atom.TYPE_c608) {
            throw new IllegalStateException();
        } else {
            stsdData.requiredSampleTransformation = 1;
            str2 = MimeTypes.APPLICATION_MP4CEA608;
        }
        stsdData.format = Format.createTextSampleFormat(Integer.toString(i4), str2, null, -1, 0, str, -1, null, c, list);
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        boolean z;
        char c;
        int i;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i2 = 8;
        if (parseFullAtomVersion == 0) {
            i2 = 4;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                z = true;
                break;
            } else if (parsableByteArray.data[position + i3] != -1) {
                z = false;
                break;
            } else {
                i3++;
            }
        }
        if (z) {
            parsableByteArray.skipBytes(i2);
            c = 1;
        } else {
            c = parseFullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (c == 0) {
                c = 1;
            }
        }
        parsableByteArray.skipBytes(16);
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        if (readInt2 == 0 && readInt3 == 65536 && readInt4 == -65536 && readInt5 == 0) {
            i = 90;
        } else if (readInt2 == 0 && readInt3 == -65536 && readInt4 == 65536 && readInt5 == 0) {
            i = 270;
        } else {
            i = 0;
            if (readInt2 == -65536) {
                i = 0;
                if (readInt3 == 0) {
                    i = 0;
                    if (readInt4 == 0) {
                        i = 0;
                        if (readInt5 == -65536) {
                            i = 180;
                        }
                    }
                }
            }
        }
        return new TkhdData(readInt, c, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z, boolean z2) {
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int parseHdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        if (parseHdlr == -1) {
            return null;
        }
        TkhdData parseTkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        int i = (j > C0515C.TIME_UNSET ? 1 : (j == C0515C.TIME_UNSET ? 0 : -1));
        ?? r19 = j;
        if (i == 0) {
            r19 = parseTkhd.duration;
        }
        long parseMvhd = parseMvhd(leafAtom.data);
        char scaleLargeTimestamp = r19 == C0515C.TIME_UNSET ? (char) 1 : Util.scaleLargeTimestamp(r19, C0515C.MICROS_PER_SECOND, parseMvhd);
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair<Long, String> parseMdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData parseStsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, parseTkhd.f3600id, parseTkhd.rotationDegrees, (String) parseMdhd.second, drmInitData, z2);
        if (!z) {
            Pair<long[], long[]> parseEdts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
            jArr2 = (long[]) parseEdts.first;
            jArr = (long[]) parseEdts.second;
        } else {
            jArr2 = null;
            jArr = null;
        }
        return parseStsd.format == null ? null : new Track(parseTkhd.f3600id, parseHdlr, ((Long) parseMdhd.first).longValue(), parseMvhd, scaleLargeTimestamp, parseStsd.format, parseStsd.requiredSampleTransformation, parseStsd.trackEncryptionBoxes, parseStsd.nalUnitLengthFieldLength, jArr2, jArr);
    }

    public static Metadata parseUdta(Atom.LeafAtom leafAtom, boolean z) {
        if (z) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_meta) {
                parsableByteArray.setPosition(position);
                return parseMetaAtom(parsableByteArray, position + readInt);
            }
            parsableByteArray.skipBytes(readInt - 8);
        }
        return null;
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, StsdData stsdData, int i6) {
        byte[] bArr;
        float f;
        boolean z;
        List<byte[]> list;
        String str;
        int i7;
        parsableByteArray.setPosition(i2 + 8 + 8);
        parsableByteArray.skipBytes(16);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        String str2 = null;
        DrmInitData drmInitData2 = drmInitData;
        int i8 = i;
        if (i == Atom.TYPE_encv) {
            Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i2, i3);
            DrmInitData drmInitData3 = drmInitData;
            if (parseSampleEntryEncryptionData != null) {
                i = ((Integer) parseSampleEntryEncryptionData.first).intValue();
                drmInitData3 = drmInitData == null ? null : drmInitData.copyWithSchemeType(((TrackEncryptionBox) parseSampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i6] = (TrackEncryptionBox) parseSampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
            i8 = i;
            drmInitData2 = drmInitData3;
        }
        List<byte[]> list2 = null;
        byte[] bArr2 = null;
        float f2 = 1.0f;
        int i9 = -1;
        int i10 = position;
        boolean z2 = false;
        while (i10 - i2 < i3) {
            parsableByteArray.setPosition(i10);
            int position2 = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (readInt == 0 && parsableByteArray.getPosition() - i2 == i3) {
                break;
            }
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == Atom.TYPE_avcC) {
                Assertions.checkState(str2 == null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig parse = AvcConfig.parse(parsableByteArray);
                list = parse.initializationData;
                stsdData.nalUnitLengthFieldLength = parse.nalUnitLengthFieldLength;
                if (!z2) {
                    f2 = parse.pixelWidthAspectRatio;
                }
                str = MimeTypes.VIDEO_H264;
                z = z2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (readInt2 == Atom.TYPE_hvcC) {
                Assertions.checkState(str2 == null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig parse2 = HevcConfig.parse(parsableByteArray);
                list = parse2.initializationData;
                stsdData.nalUnitLengthFieldLength = parse2.nalUnitLengthFieldLength;
                str = MimeTypes.VIDEO_H265;
                z = z2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (readInt2 == Atom.TYPE_vpcC) {
                Assertions.checkState(str2 == null);
                str = i8 == Atom.TYPE_vp08 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                z = z2;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (readInt2 == Atom.TYPE_d263) {
                Assertions.checkState(str2 == null);
                str = MimeTypes.VIDEO_H263;
                z = z2;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (readInt2 == Atom.TYPE_esds) {
                Assertions.checkState(str2 == null);
                Pair<String, byte[]> parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                str = (String) parseEsdsFromParent.first;
                list = Collections.singletonList(parseEsdsFromParent.second);
                z = z2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (readInt2 == Atom.TYPE_pasp) {
                f = parsePaspFromParent(parsableByteArray, position2);
                z = true;
                str = str2;
                list = list2;
                bArr = bArr2;
                i7 = i9;
            } else if (readInt2 == Atom.TYPE_sv3d) {
                bArr = parseProjFromParent(parsableByteArray, position2, readInt);
                z = z2;
                str = str2;
                list = list2;
                f = f2;
                i7 = i9;
            } else {
                z = z2;
                str = str2;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
                if (readInt2 == Atom.TYPE_st3d) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(3);
                    z = z2;
                    str = str2;
                    list = list2;
                    f = f2;
                    bArr = bArr2;
                    i7 = i9;
                    if (readUnsignedByte == 0) {
                        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                        if (readUnsignedByte2 == 0) {
                            i7 = 0;
                            bArr = bArr2;
                            f = f2;
                            list = list2;
                            str = str2;
                            z = z2;
                        } else if (readUnsignedByte2 == 1) {
                            i7 = 1;
                            z = z2;
                            str = str2;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                        } else if (readUnsignedByte2 == 2) {
                            i7 = 2;
                            z = z2;
                            str = str2;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                        } else if (readUnsignedByte2 != 3) {
                            z = z2;
                            str = str2;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                            i7 = i9;
                        } else {
                            i7 = 3;
                            z = z2;
                            str = str2;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                        }
                    }
                }
            }
            i10 += readInt;
            z2 = z;
            str2 = str;
            list2 = list;
            f2 = f;
            bArr2 = bArr;
            i9 = i7;
        }
        if (str2 == null) {
            return;
        }
        stsdData.format = Format.createVideoSampleFormat(Integer.toString(i4), str2, null, -1, -1, readUnsignedShort, readUnsignedShort2, -1.0f, list2, i5, f2, bArr2, i9, null, drmInitData2);
    }
}
