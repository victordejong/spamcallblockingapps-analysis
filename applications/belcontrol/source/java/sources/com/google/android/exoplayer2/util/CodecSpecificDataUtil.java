package com.google.android.exoplayer2.util;

import android.util.Pair;
import com.mopub.mobileads.VastVideoViewController;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/CodecSpecificDataUtil.class */
public final class CodecSpecificDataUtil {
    private static final int AUDIO_OBJECT_TYPE_AAC_LC = 2;
    private static final int AUDIO_OBJECT_TYPE_ER_BSAC = 22;
    private static final int AUDIO_OBJECT_TYPE_ESCAPE = 31;
    private static final int AUDIO_OBJECT_TYPE_PS = 29;
    private static final int AUDIO_OBJECT_TYPE_SBR = 5;
    private static final int AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID = -1;
    private static final int AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY = 15;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final int[] AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 12000, 11025, 8000, 7350};
    private static final int[] AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private CodecSpecificDataUtil() {
    }

    public static byte[] buildAacAudioSpecificConfig(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] buildAacLcAudioSpecificConfig(int i, int i2) {
        int i3 = 0;
        int i4 = -1;
        while (true) {
            int[] iArr = AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE;
            if (i3 >= iArr.length) {
                break;
            }
            if (i == iArr[i3]) {
                i4 = i3;
            }
            i3++;
        }
        int i5 = -1;
        int i6 = 0;
        while (true) {
            int[] iArr2 = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE;
            if (i6 >= iArr2.length) {
                break;
            }
            if (i2 == iArr2[i6]) {
                i5 = i6;
            }
            i6++;
        }
        if (i == -1 || i5 == -1) {
            throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i + ", " + i2);
        }
        return buildAacAudioSpecificConfig(2, i4, i5);
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = NAL_START_CODE;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    private static int findNalStartCode(byte[] bArr, int i) {
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

    private static int getAacAudioObjectType(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(5);
        int i = readBits;
        if (readBits == 31) {
            i = parsableBitArray.readBits(6) + 32;
        }
        return i;
    }

    private static int getAacSamplingFrequency(ParsableBitArray parsableBitArray) {
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

    private static boolean isNalStartCode(byte[] bArr, int i) {
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
        if (r0 == 29) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> parseAacAudioSpecificConfig(com.google.android.exoplayer2.util.ParsableBitArray r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.CodecSpecificDataUtil.parseAacAudioSpecificConfig(com.google.android.exoplayer2.util.ParsableBitArray, boolean):android.util.Pair");
    }

    public static Pair<Integer, Integer> parseAacAudioSpecificConfig(byte[] bArr) {
        return parseAacAudioSpecificConfig(new ParsableBitArray(bArr), false);
    }

    private static void parseGaSpecificConfig(ParsableBitArray parsableBitArray, int i, int i2) {
        parsableBitArray.skipBits(1);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(14);
        }
        boolean readBit = parsableBitArray.readBit();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                parsableBitArray.skipBits(3);
            }
            if (!readBit) {
                return;
            }
            if (i == 22) {
                parsableBitArray.skipBits(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                parsableBitArray.skipBits(3);
            }
            parsableBitArray.skipBits(1);
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [byte[], byte[][]] */
    public static byte[][] splitNalUnits(byte[] bArr) {
        int findNalStartCode;
        if (!isNalStartCode(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            arrayList.add(Integer.valueOf(i));
            findNalStartCode = findNalStartCode(bArr, i + NAL_START_CODE.length);
            i = findNalStartCode;
        } while (findNalStartCode != -1);
        ?? r0 = new byte[arrayList.size()];
        int i2 = 0;
        while (i2 < arrayList.size()) {
            int intValue = ((Integer) arrayList.get(i2)).intValue();
            int intValue2 = (i2 < arrayList.size() - 1 ? ((Integer) arrayList.get(i2 + 1)).intValue() : bArr.length) - intValue;
            byte[] bArr2 = new byte[intValue2];
            System.arraycopy(bArr, intValue, bArr2, 0, intValue2);
            r0[i2] = bArr2;
            i2++;
        }
        return r0;
    }
}
