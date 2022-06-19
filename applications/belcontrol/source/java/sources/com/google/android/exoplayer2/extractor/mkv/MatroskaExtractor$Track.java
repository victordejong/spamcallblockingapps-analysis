package com.google.android.exoplayer2.extractor.mkv;

import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.HevcConfig;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track.class */
public final class MatroskaExtractor$Track {
    private static final int DEFAULT_MAX_CLL = 1000;
    private static final int DEFAULT_MAX_FALL = 200;
    private static final int DISPLAY_UNIT_PIXELS = 0;
    private static final int MAX_CHROMATICITY = 50000;
    public int audioBitDepth;
    public int channelCount;
    public long codecDelayNs;
    public String codecId;
    public byte[] codecPrivate;
    public int colorRange;
    public int colorSpace;
    public int colorTransfer;
    public TrackOutput.CryptoData cryptoData;
    public int defaultSampleDurationNs;
    public int displayHeight;
    public int displayUnit;
    public int displayWidth;
    public DrmInitData drmInitData;
    public boolean flagDefault;
    public boolean flagForced;
    public boolean hasColorInfo;
    public boolean hasContentEncryption;
    public int height;
    private String language;
    public int maxContentLuminance;
    public int maxFrameAverageLuminance;
    public float maxMasteringLuminance;
    public float minMasteringLuminance;
    public int nalUnitLengthFieldLength;
    public int number;
    public TrackOutput output;
    public float primaryBChromaticityX;
    public float primaryBChromaticityY;
    public float primaryGChromaticityX;
    public float primaryGChromaticityY;
    public float primaryRChromaticityX;
    public float primaryRChromaticityY;
    public byte[] projectionData;
    public int sampleRate;
    public byte[] sampleStrippedBytes;
    public long seekPreRollNs;
    public int stereoMode;
    public MatroskaExtractor$TrueHdSampleRechunker trueHdSampleRechunker;
    public int type;
    public float whitePointChromaticityX;
    public float whitePointChromaticityY;
    public int width;

    private MatroskaExtractor$Track() {
        this.width = -1;
        this.height = -1;
        this.displayWidth = -1;
        this.displayHeight = -1;
        this.displayUnit = 0;
        this.projectionData = null;
        this.stereoMode = -1;
        this.hasColorInfo = false;
        this.colorSpace = -1;
        this.colorTransfer = -1;
        this.colorRange = -1;
        this.maxContentLuminance = 1000;
        this.maxFrameAverageLuminance = 200;
        this.primaryRChromaticityX = -1.0f;
        this.primaryRChromaticityY = -1.0f;
        this.primaryGChromaticityX = -1.0f;
        this.primaryGChromaticityY = -1.0f;
        this.primaryBChromaticityX = -1.0f;
        this.primaryBChromaticityY = -1.0f;
        this.whitePointChromaticityX = -1.0f;
        this.whitePointChromaticityY = -1.0f;
        this.maxMasteringLuminance = -1.0f;
        this.minMasteringLuminance = -1.0f;
        this.channelCount = 1;
        this.audioBitDepth = -1;
        this.sampleRate = 8000;
        this.codecDelayNs = 0L;
        this.seekPreRollNs = 0L;
        this.flagDefault = true;
        this.language = "eng";
    }

    private byte[] getHdrStaticInfo() {
        if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
            return null;
        }
        byte[] bArr = new byte[25];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.put((byte) 0);
        wrap.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
        wrap.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
        wrap.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
        wrap.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
        wrap.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
        wrap.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
        wrap.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
        wrap.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
        wrap.putShort((short) (this.maxMasteringLuminance + 0.5f));
        wrap.putShort((short) (this.minMasteringLuminance + 0.5f));
        wrap.putShort((short) this.maxContentLuminance);
        wrap.putShort((short) this.maxFrameAverageLuminance);
        return bArr;
    }

    private static Pair<String, List<byte[]>> parseFourCcPrivate(ParsableByteArray parsableByteArray) {
        try {
            parsableByteArray.skipBytes(16);
            long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
            if (readLittleEndianUnsignedInt == 1482049860) {
                return new Pair<>(MimeTypes.VIDEO_H263, null);
            }
            if (readLittleEndianUnsignedInt != 826496599) {
                Log.w("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
            }
            byte[] bArr = parsableByteArray.data;
            for (int position = parsableByteArray.getPosition() + 20; position < bArr.length - 4; position++) {
                if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                    return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length)));
                }
            }
            throw new ParserException("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing FourCC private data");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (r5.readLong() == com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.access$400().getLeastSignificantBits()) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean parseMsAcmCodecPrivate(com.google.android.exoplayer2.util.ParsableByteArray r5) {
        /*
            r0 = r5
            int r0 = r0.readLittleEndianUnsignedShort()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto Le
            r0 = 1
            return r0
        Le:
            r0 = r6
            r1 = 65534(0xfffe, float:9.1833E-41)
            if (r0 != r1) goto L43
            r0 = r5
            r1 = 24
            r0.setPosition(r1)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            r0 = r5
            long r0 = r0.readLong()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            java.util.UUID r1 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.access$400()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            long r1 = r1.getMostSignificantBits()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3f
            r0 = r5
            long r0 = r0.readLong()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            r8 = r0
            java.util.UUID r0 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.access$400()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            long r0 = r0.getLeastSignificantBits()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            r10 = r0
            r0 = r8
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3f
            goto L41
        L3f:
            r0 = 0
            r7 = r0
        L41:
            r0 = r7
            return r0
        L43:
            r0 = 0
            return r0
        L45:
            r5 = move-exception
            com.google.android.exoplayer2.ParserException r0 = new com.google.android.exoplayer2.ParserException
            r1 = r0
            java.lang.String r2 = "Error parsing MS/ACM codec private"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track.parseMsAcmCodecPrivate(com.google.android.exoplayer2.util.ParsableByteArray):boolean");
    }

    private static List<byte[]> parseVorbisCodecPrivate(byte[] bArr) {
        try {
            if (bArr[0] != 2) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            int i = 1;
            int i2 = 0;
            while (bArr[i] == -1) {
                i2 += 255;
                i++;
            }
            int i3 = i + 1;
            int i4 = i2 + bArr[i];
            int i5 = 0;
            int i6 = i3;
            while (bArr[i6] == -1) {
                i5 += 255;
                i6++;
            }
            int i7 = i6 + 1;
            byte b = bArr[i6];
            if (bArr[i7] != 1) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i7, bArr2, 0, i4);
            int i8 = i7 + i4;
            if (bArr[i8] != 3) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            int i9 = i8 + i5 + b;
            if (bArr[i9] != 5) {
                throw new ParserException("Error parsing vorbis codec private");
            }
            byte[] bArr3 = new byte[bArr.length - i9];
            System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing vorbis codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void initializeOutput(ExtractorOutput extractorOutput, int i) {
        boolean z;
        int i2;
        String str;
        int i3;
        ArrayList arrayList;
        Format format;
        int i4;
        int i5;
        int i6;
        List<byte[]> singletonList;
        StringBuilder sb;
        String str2;
        int i7;
        String str3;
        String str4 = this.codecId;
        str4.hashCode();
        int i8 = 0;
        switch (str4.hashCode()) {
            case -2095576542:
                if (str4.equals("V_MPEG4/ISO/AP")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -2095575984:
                if (str4.equals("V_MPEG4/ISO/SP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1985379776:
                if (str4.equals("A_MS/ACM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1784763192:
                if (str4.equals("A_TRUEHD")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1730367663:
                if (str4.equals("A_VORBIS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641358:
                if (str4.equals("A_MPEG/L2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641357:
                if (str4.equals("A_MPEG/L3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1373388978:
                if (str4.equals("V_MS/VFW/FOURCC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -933872740:
                if (str4.equals("S_DVBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363189:
                if (str4.equals("V_MPEG4/ISO/ASP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363109:
                if (str4.equals("V_MPEG4/ISO/AVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -425012669:
                if (str4.equals("S_VOBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -356037306:
                if (str4.equals("A_DTS/LOSSLESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923557:
                if (str4.equals("A_AAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923603:
                if (str4.equals("A_AC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62927045:
                if (str4.equals("A_DTS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82338133:
                if (str4.equals("V_VP8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82338134:
                if (str4.equals("V_VP9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 99146302:
                if (str4.equals("S_HDMV/PGS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 444813526:
                if (str4.equals("V_THEORA")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 542569478:
                if (str4.equals("A_DTS/EXPRESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 725957860:
                if (str4.equals("A_PCM/INT/LIT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 738597099:
                if (str4.equals("S_TEXT/ASS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 855502857:
                if (str4.equals("V_MPEGH/ISO/HEVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1422270023:
                if (str4.equals("S_TEXT/UTF8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1809237540:
                if (str4.equals("V_MPEG2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950749482:
                if (str4.equals("A_EAC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950789798:
                if (str4.equals("A_FLAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1951062397:
                if (str4.equals("A_OPUS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        String str5 = ". Setting mimeType to ";
        switch (z) {
            case false:
            case true:
            case true:
                byte[] bArr = this.codecPrivate;
                singletonList = bArr == null ? null : Collections.singletonList(bArr);
                str = MimeTypes.VIDEO_MP4V;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                if (parseMsAcmCodecPrivate(new ParsableByteArray(this.codecPrivate))) {
                    int pcmEncoding = Util.getPcmEncoding(this.audioBitDepth);
                    i7 = pcmEncoding;
                    if (pcmEncoding == 0) {
                        sb = new StringBuilder();
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(this.audioBitDepth);
                        sb.append(str5);
                        sb.append(MimeTypes.AUDIO_UNKNOWN);
                        Log.w("MatroskaExtractor", sb.toString());
                        str2 = MimeTypes.AUDIO_UNKNOWN;
                        str = str2;
                        singletonList = null;
                        i2 = -1;
                        i3 = -1;
                        arrayList = singletonList;
                        break;
                    }
                    str = MimeTypes.AUDIO_RAW;
                    singletonList = null;
                    i2 = i7;
                    i3 = -1;
                    arrayList = singletonList;
                } else {
                    sb = new StringBuilder();
                    str5 = "Non-PCM MS/ACM is unsupported. Setting mimeType to ";
                    sb.append(str5);
                    sb.append(MimeTypes.AUDIO_UNKNOWN);
                    Log.w("MatroskaExtractor", sb.toString());
                    str2 = MimeTypes.AUDIO_UNKNOWN;
                    str = str2;
                    singletonList = null;
                    i2 = -1;
                    i3 = -1;
                    arrayList = singletonList;
                }
            case true:
                this.trueHdSampleRechunker = new MatroskaExtractor$TrueHdSampleRechunker();
                str2 = MimeTypes.AUDIO_TRUEHD;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                arrayList = parseVorbisCodecPrivate(this.codecPrivate);
                str = MimeTypes.AUDIO_VORBIS;
                i2 = -1;
                i3 = 8192;
                break;
            case true:
                str3 = MimeTypes.AUDIO_MPEG_L2;
                str = str3;
                arrayList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case true:
                str3 = MimeTypes.AUDIO_MPEG;
                str = str3;
                arrayList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case true:
                Pair<String, List<byte[]>> parseFourCcPrivate = parseFourCcPrivate(new ParsableByteArray(this.codecPrivate));
                str = (String) parseFourCcPrivate.first;
                singletonList = (List) parseFourCcPrivate.second;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                byte[] bArr2 = this.codecPrivate;
                singletonList = Collections.singletonList(new byte[]{bArr2[0], bArr2[1], bArr2[2], bArr2[3]});
                str = MimeTypes.APPLICATION_DVBSUBS;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                AvcConfig parse = AvcConfig.parse(new ParsableByteArray(this.codecPrivate));
                singletonList = parse.initializationData;
                this.nalUnitLengthFieldLength = parse.nalUnitLengthFieldLength;
                str = MimeTypes.VIDEO_H264;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                singletonList = Collections.singletonList(this.codecPrivate);
                str = MimeTypes.APPLICATION_VOBSUB;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.AUDIO_DTS_HD;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                singletonList = Collections.singletonList(this.codecPrivate);
                str = MimeTypes.AUDIO_AAC;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.AUDIO_AC3;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
            case true:
                str2 = MimeTypes.AUDIO_DTS;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.VIDEO_VP8;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.VIDEO_VP9;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.APPLICATION_PGS;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.VIDEO_UNKNOWN;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                int pcmEncoding2 = Util.getPcmEncoding(this.audioBitDepth);
                i7 = pcmEncoding2;
                if (pcmEncoding2 == 0) {
                    sb = new StringBuilder();
                    sb.append("Unsupported PCM bit depth: ");
                    sb.append(this.audioBitDepth);
                    sb.append(str5);
                    sb.append(MimeTypes.AUDIO_UNKNOWN);
                    Log.w("MatroskaExtractor", sb.toString());
                    str2 = MimeTypes.AUDIO_UNKNOWN;
                    str = str2;
                    singletonList = null;
                    i2 = -1;
                    i3 = -1;
                    arrayList = singletonList;
                    break;
                }
                str = MimeTypes.AUDIO_RAW;
                singletonList = null;
                i2 = i7;
                i3 = -1;
                arrayList = singletonList;
            case true:
                str2 = MimeTypes.TEXT_SSA;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                HevcConfig parse2 = HevcConfig.parse(new ParsableByteArray(this.codecPrivate));
                singletonList = parse2.initializationData;
                this.nalUnitLengthFieldLength = parse2.nalUnitLengthFieldLength;
                str = MimeTypes.VIDEO_H265;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.APPLICATION_SUBRIP;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.VIDEO_MPEG2;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                str2 = MimeTypes.AUDIO_E_AC3;
                str = str2;
                singletonList = null;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                singletonList = Collections.singletonList(this.codecPrivate);
                str = MimeTypes.AUDIO_FLAC;
                i2 = -1;
                i3 = -1;
                arrayList = singletonList;
                break;
            case true:
                ArrayList arrayList2 = new ArrayList(3);
                arrayList2.add(this.codecPrivate);
                arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.codecDelayNs).array());
                arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.seekPreRollNs).array());
                str = MimeTypes.AUDIO_OPUS;
                i2 = -1;
                i3 = 5760;
                arrayList = arrayList2;
                break;
            default:
                throw new ParserException("Unrecognized codec identifier.");
        }
        boolean z2 = this.flagDefault;
        if (this.flagForced) {
            i8 = 2;
        }
        int i9 = (z2 ? 1 : 0) | 0 | i8;
        if (MimeTypes.isAudio(str)) {
            format = Format.createAudioSampleFormat(Integer.toString(i), str, null, -1, i3, this.channelCount, this.sampleRate, i2, arrayList, this.drmInitData, i9, this.language);
            i4 = 1;
        } else if (MimeTypes.isVideo(str)) {
            if (this.displayUnit == 0) {
                int i10 = this.displayWidth;
                int i11 = i10;
                if (i10 == -1) {
                    i11 = this.width;
                }
                this.displayWidth = i11;
                int i12 = this.displayHeight;
                int i13 = i12;
                if (i12 == -1) {
                    i13 = this.height;
                }
                this.displayHeight = i13;
            }
            format = Format.createVideoSampleFormat(Integer.toString(i), str, null, -1, i3, this.width, this.height, -1.0f, arrayList, -1, (this.displayWidth == -1 || (i6 = this.displayHeight) == -1) ? -1.0f : (this.height * i5) / (this.width * i6), this.projectionData, this.stereoMode, this.hasColorInfo ? new ColorInfo(this.colorSpace, this.colorRange, this.colorTransfer, getHdrStaticInfo()) : null, this.drmInitData);
            i4 = 2;
        } else {
            if (MimeTypes.APPLICATION_SUBRIP.equals(str)) {
                format = Format.createTextSampleFormat(Integer.toString(i), str, i9, this.language, this.drmInitData);
            } else if (MimeTypes.TEXT_SSA.equals(str)) {
                ArrayList arrayList3 = new ArrayList(2);
                arrayList3.add(MatroskaExtractor.access$300());
                arrayList3.add(this.codecPrivate);
                format = Format.createTextSampleFormat(Integer.toString(i), str, null, -1, i9, this.language, -1, this.drmInitData, Long.MAX_VALUE, arrayList3);
            } else if (!MimeTypes.APPLICATION_VOBSUB.equals(str) && !MimeTypes.APPLICATION_PGS.equals(str) && !MimeTypes.APPLICATION_DVBSUBS.equals(str)) {
                throw new ParserException("Unexpected MIME type.");
            } else {
                format = Format.createImageSampleFormat(Integer.toString(i), str, null, -1, i9, arrayList, this.language, this.drmInitData);
            }
            i4 = 3;
        }
        TrackOutput track = extractorOutput.track(this.number, i4);
        this.output = track;
        track.format(format);
    }

    public void outputPendingSampleMetadata() {
        MatroskaExtractor$TrueHdSampleRechunker matroskaExtractor$TrueHdSampleRechunker = this.trueHdSampleRechunker;
        if (matroskaExtractor$TrueHdSampleRechunker != null) {
            matroskaExtractor$TrueHdSampleRechunker.outputPendingSampleMetadata(this);
        }
    }

    public void reset() {
        MatroskaExtractor$TrueHdSampleRechunker matroskaExtractor$TrueHdSampleRechunker = this.trueHdSampleRechunker;
        if (matroskaExtractor$TrueHdSampleRechunker != null) {
            matroskaExtractor$TrueHdSampleRechunker.reset();
        }
    }
}
