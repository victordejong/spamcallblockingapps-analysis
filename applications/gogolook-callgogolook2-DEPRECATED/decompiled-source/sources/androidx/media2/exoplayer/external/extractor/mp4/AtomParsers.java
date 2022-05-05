package androidx.media2.exoplayer.external.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.Ac3Util;
import androidx.media2.exoplayer.external.audio.Ac4Util;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.mp4.Atom;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.CodecSpecificDataUtil;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import androidx.media2.exoplayer.external.video.AvcConfig;
import androidx.media2.exoplayer.external.video.DolbyVisionConfig;
import androidx.media2.exoplayer.external.video.HevcConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/AtomParsers.class */
public final class AtomParsers {
    public static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    public static final String TAG = "AtomParsers";
    public static final int TYPE_clcp = 1668047728;
    public static final int TYPE_mdta = 1835299937;
    public static final int TYPE_meta = 1835365473;
    public static final int TYPE_sbtl = 1935832172;
    public static final int TYPE_soun = 1936684398;
    public static final int TYPE_subt = 1937072756;
    public static final int TYPE_text = 1952807028;
    public static final int TYPE_vide = 1986618469;
    public static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator.class */
    public static final class ChunkIterator {
        public final ParsableByteArray chunkOffsets;
        public final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        public int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        public int remainingSamplesPerChunkChanges;
        public final ParsableByteArray stsc;

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

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox.class */
    public interface SampleSizeBox {
        int getSampleCount();

        boolean isFixedSampleSize();

        int readNextSampleSize();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData.class */
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

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StszSampleSizeBox.class */
    public static final class StszSampleSizeBox implements SampleSizeBox {
        public final ParsableByteArray data;
        public final int fixedSampleSize;
        public final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fixedSampleSize = this.data.readUnsignedIntToInt();
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return this.fixedSampleSize != 0;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            int i2 = i;
            if (i == 0) {
                i2 = this.data.readUnsignedIntToInt();
            }
            return i2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/AtomParsers$Stz2SampleSizeBox.class */
    public static final class Stz2SampleSizeBox implements SampleSizeBox {
        public int currentByte;
        public final ParsableByteArray data;
        public final int fieldSize;
        public final int sampleCount;
        public int sampleIndex;

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fieldSize = this.data.readUnsignedIntToInt() & 255;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 != 0) {
                return this.currentByte & 15;
            }
            this.currentByte = this.data.readUnsignedByte();
            return (this.currentByte & 240) >> 4;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData.class */
    public static final class TkhdData {
        public final long duration;

        /* renamed from: id */
        public final int f83id;
        public final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.f83id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    public static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        boolean z = true;
        int length = jArr.length - 1;
        int constrainValue = Util.constrainValue(4, 0, length);
        int constrainValue2 = Util.constrainValue(jArr.length - 4, 0, length);
        if (jArr[0] > j2 || j2 >= jArr[constrainValue] || jArr[constrainValue2] >= j3 || j3 > j) {
            z = false;
        }
        return z;
    }

    public static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) {
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == 1702061171) {
                return position;
            }
            position += readInt;
        }
        return -1;
    }

    public static int getTrackTypeForHdlr(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 4 : -1;
    }

    public static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) throws ParserException {
        int i6;
        int i7;
        int i8;
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (z) {
            i6 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            int readUnsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            i8 = readUnsignedFixedPoint1616;
            i7 = readUnsignedShort;
            if (i6 == 1) {
                parsableByteArray.skipBytes(16);
                i7 = readUnsignedShort;
                i8 = readUnsignedFixedPoint1616;
            }
        } else if (i6 == 2) {
            parsableByteArray.skipBytes(16);
            i8 = (int) Math.round(parsableByteArray.readDouble());
            i7 = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
        } else {
            return;
        }
        int position = parsableByteArray.getPosition();
        DrmInitData drmInitData2 = drmInitData;
        i = i;
        if (i == 1701733217) {
            Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i2, i3);
            drmInitData2 = drmInitData;
            if (parseSampleEntryEncryptionData != null) {
                i = ((Integer) parseSampleEntryEncryptionData.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.copyWithSchemeType(((TrackEncryptionBox) parseSampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) parseSampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str2 = i == 1633889587 ? MimeTypes.AUDIO_AC3 : i == 1700998451 ? MimeTypes.AUDIO_E_AC3 : i == 1633889588 ? MimeTypes.AUDIO_AC4 : i == 1685353315 ? MimeTypes.AUDIO_DTS : (i == 1685353320 || i == 1685353324) ? MimeTypes.AUDIO_DTS_HD : i == 1685353317 ? MimeTypes.AUDIO_DTS_EXPRESS : i == 1935764850 ? MimeTypes.AUDIO_AMR_NB : i == 1935767394 ? MimeTypes.AUDIO_AMR_WB : (i == 1819304813 || i == 1936684916) ? MimeTypes.AUDIO_RAW : i == 778924083 ? MimeTypes.AUDIO_MPEG : i == 1634492771 ? MimeTypes.AUDIO_ALAC : i == 1634492791 ? MimeTypes.AUDIO_ALAW : i == 1970037111 ? MimeTypes.AUDIO_MLAW : i == 1332770163 ? MimeTypes.AUDIO_OPUS : i == 1716281667 ? MimeTypes.AUDIO_FLAC : null;
        int i9 = position;
        byte[] bArr = null;
        while (i9 - i2 < i3) {
            parsableByteArray.setPosition(i9);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1702061171 || (z && readInt2 == 2002876005)) {
                int i10 = i9;
                if (readInt2 != 1702061171) {
                    i10 = findEsdsPosition(parsableByteArray, i10, readInt);
                }
                if (i10 != -1) {
                    Pair<String, byte[]> parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, i10);
                    String str3 = (String) parseEsdsFromParent.first;
                    byte[] bArr2 = (byte[]) parseEsdsFromParent.second;
                    str2 = str3;
                    bArr = bArr2;
                    if (MimeTypes.AUDIO_AAC.equals(str3)) {
                        Pair<Integer, Integer> parseAacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArr2);
                        i8 = ((Integer) parseAacAudioSpecificConfig.first).intValue();
                        i7 = ((Integer) parseAacAudioSpecificConfig.second).intValue();
                        str2 = str3;
                        bArr = bArr2;
                    }
                }
            } else {
                if (readInt2 == 1684103987) {
                    parsableByteArray.setPosition(i9 + 8);
                    stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData2);
                } else if (readInt2 == 1684366131) {
                    parsableByteArray.setPosition(i9 + 8);
                    stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData2);
                } else if (readInt2 == 1684103988) {
                    parsableByteArray.setPosition(i9 + 8);
                    stsdData.format = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(i4), str, drmInitData2);
                } else if (readInt2 == 1684305011) {
                    stsdData.format = Format.createAudioSampleFormat(Integer.toString(i4), str2, null, -1, -1, i7, i8, null, drmInitData2, 0, str);
                } else if (readInt2 == 1634492771) {
                    bArr = new byte[readInt];
                    parsableByteArray.setPosition(i9);
                    parsableByteArray.readBytes(bArr, 0, readInt);
                    i7 = i7;
                    i8 = i8;
                    str2 = str2;
                } else if (readInt2 == 1682927731) {
                    int i11 = readInt - 8;
                    byte[] bArr3 = opusMagic;
                    bArr = new byte[bArr3.length + i11];
                    System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                    parsableByteArray.setPosition(i9 + 8);
                    parsableByteArray.readBytes(bArr, opusMagic.length, i11);
                    i7 = i7;
                    i8 = i8;
                    str2 = str2;
                } else {
                    i7 = i7;
                    i8 = i8;
                    str2 = str2;
                    if (readInt == 1684425825) {
                        int i12 = readInt - 12;
                        bArr = new byte[i12];
                        parsableByteArray.setPosition(i9 + 12);
                        parsableByteArray.readBytes(bArr, 0, i12);
                        i7 = i7;
                        i8 = i8;
                        str2 = str2;
                    }
                }
                i7 = i7;
                i8 = i8;
            }
            i9 += readInt;
        }
        if (stsdData.format == null && str2 != null) {
            stsdData.format = Format.createAudioSampleFormat(Integer.toString(i4), str2, null, -1, -1, i7, i8, MimeTypes.AUDIO_RAW.equals(str2) ? 2 : -1, bArr == null ? null : Collections.singletonList(bArr), drmInitData2, 0, str);
        }
    }

    public static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        String str = null;
        Integer num = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1718775137) {
                num = Integer.valueOf(parsableByteArray.readInt());
                str = str;
            } else if (readInt2 == 1935894637) {
                parsableByteArray.skipBytes(4);
                str = parsableByteArray.readString(4);
                num = num;
            } else {
                str = str;
                num = num;
                if (readInt2 == 1935894633) {
                    i4 = i3;
                    i5 = readInt;
                    num = num;
                    str = str;
                }
            }
            i3 += readInt;
        }
        if (!"cenc".equals(str) && !C0463C.CENC_TYPE_cbc1.equals(str) && !C0463C.CENC_TYPE_cens.equals(str) && !C0463C.CENC_TYPE_cbcs.equals(str)) {
            return null;
        }
        boolean z = true;
        Assertions.checkArgument(num != null, "frma atom is mandatory");
        Assertions.checkArgument(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox parseSchiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, str);
        if (parseSchiFromParent == null) {
            z = false;
        }
        Assertions.checkArgument(z, "tenc atom is mandatory");
        return Pair.create(num, parseSchiFromParent);
    }

    public static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
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
            jArr[i] = parseFullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = parseFullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() == 1) {
                parsableByteArray.skipBytes(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    public static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
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

    public static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    public static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    @Nullable
    public static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
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

    public static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        parsableByteArray.skipBytes(i);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        char c = (char) (((readUnsignedShort >> 10) & 31) + 96);
        char c2 = (char) (((readUnsignedShort >> 5) & 31) + 96);
        char c3 = (char) ((readUnsignedShort & 31) + 96);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c);
        sb.append(c2);
        sb.append(c3);
        return Pair.create(Long.valueOf(readUnsignedInt), sb.toString());
    }

    @Nullable
    public static Metadata parseMdtaFromMeta(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_hdlr);
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_keys);
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_ilst);
        Metadata metadata = null;
        if (leafAtomOfType != null) {
            metadata = null;
            if (leafAtomOfType2 != null) {
                metadata = null;
                if (leafAtomOfType3 != null) {
                    if (parseHdlr(leafAtomOfType.data) != 1835299937) {
                        metadata = null;
                    } else {
                        ParsableByteArray parsableByteArray = leafAtomOfType2.data;
                        parsableByteArray.setPosition(12);
                        int readInt = parsableByteArray.readInt();
                        String[] strArr = new String[readInt];
                        for (int i = 0; i < readInt; i++) {
                            int readInt2 = parsableByteArray.readInt();
                            parsableByteArray.skipBytes(4);
                            strArr[i] = parsableByteArray.readString(readInt2 - 8);
                        }
                        ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
                        parsableByteArray2.setPosition(8);
                        ArrayList arrayList = new ArrayList();
                        while (parsableByteArray2.bytesLeft() > 8) {
                            int position = parsableByteArray2.getPosition();
                            int readInt3 = parsableByteArray2.readInt();
                            int readInt4 = parsableByteArray2.readInt() - 1;
                            if (readInt4 < 0 || readInt4 >= strArr.length) {
                                StringBuilder sb = new StringBuilder(52);
                                sb.append("Skipped metadata with unknown key index: ");
                                sb.append(readInt4);
                                Log.m37483w(TAG, sb.toString());
                            } else {
                                MdtaMetadataEntry parseMdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + readInt3, strArr[readInt4]);
                                if (parseMdtaMetadataEntryFromIlst != null) {
                                    arrayList.add(parseMdtaMetadataEntryFromIlst);
                                }
                            }
                            parsableByteArray2.setPosition(position + readInt3);
                        }
                        metadata = arrayList.isEmpty() ? null : new Metadata(arrayList);
                    }
                }
            }
        }
        return metadata;
    }

    public static long parseMvhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0) {
            i = 16;
        }
        parsableByteArray.skipBytes(i);
        return parsableByteArray.readUnsignedInt();
    }

    public static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    public static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i;
        int i4 = 8;
        while (true) {
            int i5 = i3 + i4;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.data, i5, readInt + i5);
            }
            i3 = i5;
            i4 = readInt;
        }
    }

    public static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) {
        Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == 1936289382 && (parseCommonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, readInt)) != null) {
                return parseCommonEncryptionSinfFromParent;
            }
            position += readInt;
        }
        return null;
    }

    public static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i7);
            i6 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (parseFullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i3 = 0;
                    i4 = 0;
                } else {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    i4 = readUnsignedByte & 15;
                    i3 = (readUnsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr = new byte[16];
                parsableByteArray.readBytes(bArr, 0, bArr.length);
                byte[] bArr2 = null;
                if (z) {
                    bArr2 = null;
                    if (readUnsignedByte2 == 0) {
                        int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                        bArr2 = new byte[readUnsignedByte3];
                        parsableByteArray.readBytes(bArr2, 0, readUnsignedByte3);
                    }
                }
                return new TrackEncryptionBox(z, str, readUnsignedByte2, bArr, i3, i4, bArr2);
            }
            i5 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0310 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02eb  */
    /* JADX WARN: Type inference failed for: r38v12 */
    /* JADX WARN: Type inference failed for: r38v6 */
    /* JADX WARN: Type inference failed for: r38v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp4.TrackSampleTable parseStbl(androidx.media2.exoplayer.external.extractor.mp4.Track r15, androidx.media2.exoplayer.external.extractor.mp4.Atom.ContainerAtom r16, androidx.media2.exoplayer.external.extractor.GaplessInfoHolder r17) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 2240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.parseStbl(androidx.media2.exoplayer.external.extractor.mp4.Track, androidx.media2.exoplayer.external.extractor.mp4.Atom$ContainerAtom, androidx.media2.exoplayer.external.extractor.GaplessInfoHolder):androidx.media2.exoplayer.external.extractor.mp4.TrackSampleTable");
    }

    public static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(readInt);
        for (int i3 = 0; i3 < readInt; i3++) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            Assertions.checkArgument(readInt2 > 0, "childAtomSize should be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == 1635148593 || readInt3 == 1635148595 || readInt3 == 1701733238 || readInt3 == 1836070006 || readInt3 == 1752589105 || readInt3 == 1751479857 || readInt3 == 1932670515 || readInt3 == 1987063864 || readInt3 == 1987063865 || readInt3 == 1635135537 || readInt3 == 1685479798 || readInt3 == 1685479729 || readInt3 == 1685481573 || readInt3 == 1685481521) {
                parseVideoSampleEntry(parsableByteArray, readInt3, position, readInt2, i, i2, drmInitData, stsdData, i3);
            } else if (readInt3 == 1836069985 || readInt3 == 1701733217 || readInt3 == 1633889587 || readInt3 == 1700998451 || readInt3 == 1633889588 || readInt3 == 1685353315 || readInt3 == 1685353317 || readInt3 == 1685353320 || readInt3 == 1685353324 || readInt3 == 1935764850 || readInt3 == 1935767394 || readInt3 == 1819304813 || readInt3 == 1936684916 || readInt3 == 778924083 || readInt3 == 1634492771 || readInt3 == 1634492791 || readInt3 == 1970037111 || readInt3 == 1332770163 || readInt3 == 1716281667) {
                parseAudioSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, z, drmInitData, stsdData, i3);
            } else if (readInt3 == 1414810956 || readInt3 == 1954034535 || readInt3 == 2004251764 || readInt3 == 1937010800 || readInt3 == 1664495672) {
                parseTextSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, stsdData);
            } else if (readInt3 == 1667329389) {
                stsdData.format = Format.createSampleFormat(Integer.toString(i), MimeTypes.APPLICATION_CAMERA_MOTION, null, -1, null);
            }
            parsableByteArray.setPosition(position + readInt2);
        }
        return stsdData;
    }

    public static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) throws ParserException {
        String str2;
        parsableByteArray.setPosition(i2 + 8 + 8);
        List list = null;
        long j = Long.MAX_VALUE;
        if (i == 1414810956) {
            str2 = MimeTypes.APPLICATION_TTML;
        } else if (i == 1954034535) {
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            parsableByteArray.readBytes(bArr, 0, i5);
            list = Collections.singletonList(bArr);
            str2 = MimeTypes.APPLICATION_TX3G;
        } else if (i == 2004251764) {
            str2 = MimeTypes.APPLICATION_MP4VTT;
        } else if (i == 1937010800) {
            j = 0;
            str2 = MimeTypes.APPLICATION_TTML;
        } else if (i == 1664495672) {
            stsdData.requiredSampleTransformation = 1;
            str2 = MimeTypes.APPLICATION_MP4CEA608;
        } else {
            throw new IllegalStateException();
        }
        stsdData.format = Format.createTextSampleFormat(Integer.toString(i4), str2, null, -1, 0, str, -1, null, j, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.TkhdData parseTkhd(androidx.media2.exoplayer.external.util.ParsableByteArray r7) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.AtomParsers.parseTkhd(androidx.media2.exoplayer.external.util.ParsableByteArray):androidx.media2.exoplayer.external.extractor.mp4.AtomParsers$TkhdData");
    }

    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData parseTkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        long j2 = C0463C.TIME_UNSET;
        if (j == C0463C.TIME_UNSET) {
            j = parseTkhd.duration;
        }
        long parseMvhd = parseMvhd(leafAtom.data);
        if (j != C0463C.TIME_UNSET) {
            j2 = Util.scaleLargeTimestamp(j, 1000000L, parseMvhd);
        }
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair<Long, String> parseMdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData parseStsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, parseTkhd.f83id, parseTkhd.rotationDegrees, (String) parseMdhd.second, drmInitData, z2);
        if (!z) {
            Pair<long[], long[]> parseEdts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
            jArr2 = (long[]) parseEdts.first;
            jArr = (long[]) parseEdts.second;
        } else {
            jArr2 = null;
            jArr = null;
        }
        return parseStsd.format == null ? null : new Track(parseTkhd.f83id, trackTypeForHdlr, ((Long) parseMdhd.first).longValue(), parseMvhd, j2, parseStsd.format, parseStsd.requiredSampleTransformation, parseStsd.trackEncryptionBoxes, parseStsd.nalUnitLengthFieldLength, jArr2, jArr);
    }

    @Nullable
    public static Metadata parseUdta(Atom.LeafAtom leafAtom, boolean z) {
        if (z) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1835365473) {
                parsableByteArray.setPosition(position);
                return parseUdtaMeta(parsableByteArray, position + readInt);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return null;
    }

    @Nullable
    public static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + readInt);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return null;
    }

    public static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        parsableByteArray.setPosition(i2 + 8 + 8);
        parsableByteArray.skipBytes(16);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        DrmInitData drmInitData2 = drmInitData;
        i = i;
        if (i == 1701733238) {
            Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i2, i3);
            drmInitData2 = drmInitData;
            if (parseSampleEntryEncryptionData != null) {
                i = ((Integer) parseSampleEntryEncryptionData.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.copyWithSchemeType(((TrackEncryptionBox) parseSampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i6] = (TrackEncryptionBox) parseSampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str = null;
        byte[] bArr = null;
        boolean z = false;
        float f = 1.0f;
        int i7 = -1;
        List<byte[]> list = null;
        String str2 = null;
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (readInt == 0 && parsableByteArray.getPosition() - i2 == i3) {
                break;
            }
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1635148611) {
                Assertions.checkState(str2 == null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig parse = AvcConfig.parse(parsableByteArray);
                list = parse.initializationData;
                stsdData.nalUnitLengthFieldLength = parse.nalUnitLengthFieldLength;
                f = f;
                if (!z) {
                    f = parse.pixelWidthAspectRatio;
                }
                str2 = MimeTypes.VIDEO_H264;
                str = str;
                z = z;
                bArr = bArr;
                i7 = i7;
            } else if (readInt2 == 1752589123) {
                Assertions.checkState(str2 == null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig parse2 = HevcConfig.parse(parsableByteArray);
                list = parse2.initializationData;
                stsdData.nalUnitLengthFieldLength = parse2.nalUnitLengthFieldLength;
                str2 = MimeTypes.VIDEO_H265;
                str = str;
                z = z;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (readInt2 == 1685480259 || readInt2 == 1685485123) {
                DolbyVisionConfig parse3 = DolbyVisionConfig.parse(parsableByteArray);
                str = str;
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
                if (parse3 != null) {
                    str = parse3.codecs;
                    str2 = MimeTypes.VIDEO_DOLBY_VISION;
                    i7 = i7;
                    bArr = bArr;
                    f = f;
                    list = list;
                    z = z;
                }
            } else if (readInt2 == 1987076931) {
                Assertions.checkState(str2 == null);
                str2 = i == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                str = str;
                z = z;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (readInt2 == 1635135811) {
                Assertions.checkState(str2 == null);
                str2 = MimeTypes.VIDEO_AV1;
                str = str;
                z = z;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (readInt2 == 1681012275) {
                Assertions.checkState(str2 == null);
                str2 = MimeTypes.VIDEO_H263;
                str = str;
                z = z;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (readInt2 == 1702061171) {
                Assertions.checkState(str2 == null);
                Pair<String, byte[]> parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                str2 = (String) parseEsdsFromParent.first;
                list = Collections.singletonList((byte[]) parseEsdsFromParent.second);
                str = str;
                z = z;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (readInt2 == 1885434736) {
                f = parsePaspFromParent(parsableByteArray, position2);
                z = true;
                str = str;
                str2 = str2;
                list = list;
                bArr = bArr;
                i7 = i7;
            } else if (readInt2 == 1937126244) {
                bArr = parseProjFromParent(parsableByteArray, position2, readInt);
                str = str;
                z = z;
                str2 = str2;
                list = list;
                f = f;
                i7 = i7;
            } else {
                str = str;
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
                if (readInt2 == 1936995172) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(3);
                    str = str;
                    z = z;
                    str2 = str2;
                    list = list;
                    f = f;
                    bArr = bArr;
                    i7 = i7;
                    if (readUnsignedByte == 0) {
                        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                        if (readUnsignedByte2 == 0) {
                            i7 = 0;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        } else if (readUnsignedByte2 == 1) {
                            i7 = 1;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        } else if (readUnsignedByte2 == 2) {
                            i7 = 2;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        } else if (readUnsignedByte2 != 3) {
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                            i7 = i7;
                        } else {
                            i7 = 3;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        }
                    }
                }
            }
            position += readInt;
        }
        if (str2 != null) {
            stsdData.format = Format.createVideoSampleFormat(Integer.toString(i4), str2, str, -1, -1, readUnsignedShort, readUnsignedShort2, -1.0f, list, i5, f, bArr, i7, null, drmInitData2);
        }
    }
}
