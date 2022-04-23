package androidx.media2.exoplayer.external.audio;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import androidx.media2.exoplayer.external.source.SilenceMediaSource;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import com.facebook.ads.AdError;
import java.nio.ByteBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/Ac4Util.class */
public final class Ac4Util {
    public static final int AC40_SYNCWORD = 44096;
    public static final int AC41_SYNCWORD = 44097;
    public static final int CHANNEL_COUNT_2 = 2;
    public static final int HEADER_SIZE_FOR_PARSER = 16;
    public static final int[] SAMPLE_COUNT = {AdError.CACHE_ERROR_CODE, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo.class */
    public static final class SyncFrameInfo {
        public final int bitstreamVersion;
        public final int channelCount;
        public final int frameSize;
        public final int sampleCount;
        public final int sampleRate;

        public SyncFrameInfo(int i, int i2, int i3, int i4, int i5) {
            this.bitstreamVersion = i;
            this.channelCount = i2;
            this.sampleRate = i3;
            this.frameSize = i4;
            this.sampleCount = i5;
        }
    }

    public static void getAc4SampleHeader(int i, ParsableByteArray parsableByteArray) {
        parsableByteArray.reset(7);
        byte[] bArr = parsableByteArray.data;
        bArr[0] = (byte) (-84);
        bArr[1] = (byte) 64;
        bArr[2] = (byte) (-1);
        bArr[3] = (byte) (-1);
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }

    public static Format parseAc4AnnexEFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        parsableByteArray.skipBytes(1);
        return Format.createAudioSampleFormat(str, MimeTypes.AUDIO_AC4, null, -1, -1, 2, ((parsableByteArray.readUnsignedByte() & 32) >> 5) == 1 ? OpusReader.SAMPLE_RATE : SilenceMediaSource.SAMPLE_RATE_HZ, null, drmInitData, 0, str2);
    }

    public static int parseAc4SyncframeAudioSampleCount(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return parseAc4SyncframeInfo(new ParsableBitArray(bArr)).sampleCount;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00de, code lost:
        if (r0 == 11) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f2, code lost:
        if (r0 == 11) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0105, code lost:
        if (r0 == 8) goto L_0x010e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.audio.Ac4Util.SyncFrameInfo parseAc4SyncframeInfo(androidx.media2.exoplayer.external.util.ParsableBitArray r9) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.Ac4Util.parseAc4SyncframeInfo(androidx.media2.exoplayer.external.util.ParsableBitArray):androidx.media2.exoplayer.external.audio.Ac4Util$SyncFrameInfo");
    }

    public static int parseAc4SyncframeSize(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i3 == 65535) {
            i3 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i2 = 4;
        }
        int i4 = i2;
        if (i == 44097) {
            i4 = i2 + 2;
        }
        return i3 + i4;
    }

    public static int readVariableBits(ParsableBitArray parsableBitArray, int i) {
        int i2 = 0;
        while (true) {
            int readBits = i2 + parsableBitArray.readBits(i);
            if (!parsableBitArray.readBit()) {
                return readBits;
            }
            i2 = (readBits + 1) << i;
        }
    }
}
