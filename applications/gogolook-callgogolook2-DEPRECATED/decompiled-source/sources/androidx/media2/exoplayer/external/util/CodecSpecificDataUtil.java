package androidx.media2.exoplayer.external.util;

import android.util.Pair;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.amr.AmrExtractor;
import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import androidx.media2.exoplayer.external.source.SilenceMediaSource;
import androidx.media2.exoplayer.external.video.spherical.ProjectionDecoder;
import gogolook.callgogolook2.gson.UserProfile;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/CodecSpecificDataUtil.class */
public final class CodecSpecificDataUtil {
    public static final int AUDIO_OBJECT_TYPE_AAC_LC = 2;
    public static final int AUDIO_OBJECT_TYPE_ER_BSAC = 22;
    public static final int AUDIO_OBJECT_TYPE_ESCAPE = 31;
    public static final int AUDIO_OBJECT_TYPE_PS = 29;
    public static final int AUDIO_OBJECT_TYPE_SBR = 5;
    public static final int AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID = -1;
    public static final int AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY = 15;
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final int[] AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE = {96000, 88200, 64000, OpusReader.SAMPLE_RATE, SilenceMediaSource.SAMPLE_RATE_HZ, ProjectionDecoder.MAX_VERTEX_COUNT, 24000, 22050, AmrExtractor.SAMPLE_RATE_WB, 12000, 11025, 8000, 7350};
    public static final int[] AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static byte[] buildAacAudioSpecificConfig(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] buildAacLcAudioSpecificConfig(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        while (true) {
            int[] iArr = AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE;
            if (i4 >= iArr.length) {
                break;
            }
            if (i == iArr[i4]) {
                i5 = i4;
            }
            i4++;
        }
        int i6 = -1;
        while (true) {
            int[] iArr2 = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE;
            if (i3 >= iArr2.length) {
                break;
            }
            if (i2 == iArr2[i3]) {
                i6 = i3;
            }
            i3++;
        }
        if (i != -1 && i6 != -1) {
            return buildAacAudioSpecificConfig(2, i5, i6);
        }
        StringBuilder sb = new StringBuilder(67);
        sb.append("Invalid sample rate or number of channels: ");
        sb.append(i);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static String buildAvcCodecString(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = NAL_START_CODE;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, NAL_START_CODE.length, i2);
        return bArr3;
    }

    public static int findNalStartCode(byte[] bArr, int i) {
        int length = bArr.length;
        int length2 = NAL_START_CODE.length;
        while (i <= length - length2) {
            if (isNalStartCode(bArr, i)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int getAacAudioObjectType(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(5);
        int i = readBits;
        if (readBits == 31) {
            i = parsableBitArray.readBits(6) + 32;
        }
        return i;
    }

    public static int getAacSamplingFrequency(ParsableBitArray parsableBitArray) {
        int i;
        int readBits = parsableBitArray.readBits(4);
        if (readBits == 15) {
            i = parsableBitArray.readBits(24);
        } else {
            Assertions.checkArgument(readBits < 13);
            i = AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[readBits];
        }
        return i;
    }

    public static boolean isNalStartCode(byte[] bArr, int i) {
        if (bArr.length - i <= NAL_START_CODE.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = NAL_START_CODE;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i + i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r0 == 29) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> parseAacAudioSpecificConfig(androidx.media2.exoplayer.external.util.ParsableBitArray r4, boolean r5) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.CodecSpecificDataUtil.parseAacAudioSpecificConfig(androidx.media2.exoplayer.external.util.ParsableBitArray, boolean):android.util.Pair");
    }

    public static Pair<Integer, Integer> parseAacAudioSpecificConfig(byte[] bArr) throws ParserException {
        return parseAacAudioSpecificConfig(new ParsableBitArray(bArr), false);
    }

    public static void parseGaSpecificConfig(ParsableBitArray parsableBitArray, int i, int i2) {
        parsableBitArray.skipBits(1);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(14);
        }
        boolean readBit = parsableBitArray.readBit();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                parsableBitArray.skipBits(3);
            }
            if (readBit) {
                if (i == 22) {
                    parsableBitArray.skipBits(16);
                }
                if (i == 17 || i == 19 || i == 20 || i == 23) {
                    parsableBitArray.skipBits(3);
                }
                parsableBitArray.skipBits(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[][] splitNalUnits(byte[] r6) {
        /*
            r0 = r6
            r1 = 0
            boolean r0 = isNalStartCode(r0, r1)
            if (r0 != 0) goto L_0x000a
            r0 = 0
            return r0
        L_0x000a:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0014:
            r0 = r7
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.add(r1)
            r0 = r6
            r1 = r8
            byte[] r2 = androidx.media2.exoplayer.external.util.CodecSpecificDataUtil.NAL_START_CODE
            int r2 = r2.length
            int r1 = r1 + r2
            int r0 = findNalStartCode(r0, r1)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = -1
            if (r0 != r1) goto L_0x0014
            r0 = r7
            int r0 = r0.size()
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = 0
            r8 = r0
        L_0x003e:
            r0 = r8
            r1 = r7
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x0099
            r0 = r7
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            r11 = r0
            r0 = r8
            r1 = r7
            int r1 = r1.size()
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0076
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 + r2
            java.lang.Object r0 = r0.get(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            r9 = r0
            goto L_0x0079
        L_0x0076:
            r0 = r6
            int r0 = r0.length
            r9 = r0
        L_0x0079:
            r0 = r9
            r1 = r11
            int r0 = r0 - r1
            byte[] r0 = new byte[r0]
            r12 = r0
            r0 = r6
            r1 = r11
            r2 = r12
            r3 = 0
            r4 = r12
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r10
            r1 = r8
            r2 = r12
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x003e
        L_0x0099:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.CodecSpecificDataUtil.splitNalUnits(byte[]):byte[][]");
    }
}
