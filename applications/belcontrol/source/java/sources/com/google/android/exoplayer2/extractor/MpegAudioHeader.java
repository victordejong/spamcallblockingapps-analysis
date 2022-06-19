package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.MimeTypes;
import org.bouncycastle.crypto.tls.CipherSuite;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/MpegAudioHeader.class */
public final class MpegAudioHeader {
    public static final int MAX_FRAME_SIZE_BYTES = 4096;
    public int bitrate;
    public int channels;
    public int frameSize;
    public String mimeType;
    public int sampleRate;
    public int samplesPerFrame;
    public int version;
    private static final String[] MIME_TYPE_BY_LAYER = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    private static final int[] SAMPLING_RATE_V1 = {44100, 48000, 32000};
    private static final int[] BITRATE_V1_L1 = {32, 64, 96, 128, 160, 192, 224, 256, 288, 320, 352, 384, 416, 448};
    private static final int[] BITRATE_V2_L1 = {32, 48, 56, 64, 80, 96, 112, 128, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA, 160, 176, 192, 224, 256};
    private static final int[] BITRATE_V1_L2 = {32, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384};
    private static final int[] BITRATE_V1_L3 = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320};
    private static final int[] BITRATE_V2 = {8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA, 160};

    public static int getFrameSize(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = SAMPLING_RATE_V1[i5];
        if (i2 == 2) {
            i6 = i7 / 2;
        } else {
            i6 = i7;
            if (i2 == 0) {
                i6 = i7 / 4;
            }
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? BITRATE_V1_L1[i4 - 1] : BITRATE_V2_L1[i4 - 1]) * 12000) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? BITRATE_V1_L2[i4 - 1] : BITRATE_V1_L3[i4 - 1] : BITRATE_V2[i4 - 1];
        int i10 = 144000;
        if (i2 == 3) {
            return ((i9 * 144000) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72000;
        }
        return ((i10 * i9) / i6) + i8;
    }

    public static boolean populateHeader(int i, MpegAudioHeader mpegAudioHeader) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i10 = SAMPLING_RATE_V1[i5];
        if (i2 == 2) {
            i6 = i10 / 2;
        } else {
            i6 = i10;
            if (i2 == 0) {
                i6 = i10 / 4;
            }
        }
        int i11 = (i >>> 9) & 1;
        int i12 = 1152;
        if (i3 == 3) {
            i9 = i2 == 3 ? BITRATE_V1_L1[i4 - 1] : BITRATE_V2_L1[i4 - 1];
            i7 = (((i9 * 12000) / i6) + i11) * 4;
            i8 = 384;
        } else {
            int i13 = 144000;
            if (i2 == 3) {
                i9 = i3 == 2 ? BITRATE_V1_L2[i4 - 1] : BITRATE_V1_L3[i4 - 1];
                i7 = ((144000 * i9) / i6) + i11;
                i8 = 1152;
            } else {
                int i14 = BITRATE_V2[i4 - 1];
                if (i3 == 1) {
                    i12 = 576;
                }
                if (i3 == 1) {
                    i13 = 72000;
                }
                i7 = ((i13 * i14) / i6) + i11;
                i8 = i12;
                i9 = i14;
            }
        }
        mpegAudioHeader.setValues(i2, MIME_TYPE_BY_LAYER[3 - i3], i7, i6, ((i >> 6) & 3) == 3 ? 1 : 2, i9 * 1000, i8);
        return true;
    }

    private void setValues(int i, String str, int i2, int i3, int i4, int i5, int i6) {
        this.version = i;
        this.mimeType = str;
        this.frameSize = i2;
        this.sampleRate = i3;
        this.channels = i4;
        this.bitrate = i5;
        this.samplesPerFrame = i6;
    }
}
