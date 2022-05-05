package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.amr.AmrExtractor;
import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import androidx.media2.exoplayer.external.source.SilenceMediaSource;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.video.spherical.ProjectionDecoder;
import androidx.media2.session.SessionCommand;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/MpegAudioHeader.class */
public final class MpegAudioHeader {
    public static final int MAX_FRAME_SIZE_BYTES = 4096;
    public int bitrate;
    public int channels;
    public int frameSize;
    public String mimeType;
    public int sampleRate;
    public int samplesPerFrame;
    public int version;
    public static final String[] MIME_TYPE_BY_LAYER = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    public static final int[] SAMPLING_RATE_V1 = {SilenceMediaSource.SAMPLE_RATE_HZ, OpusReader.SAMPLE_RATE, ProjectionDecoder.MAX_VERTEX_COUNT};
    public static final int[] BITRATE_V1_L1 = {ProjectionDecoder.MAX_VERTEX_COUNT, 64000, 96000, ProjectionDecoder.MAX_TRIANGLE_INDICES, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};
    public static final int[] BITRATE_V2_L1 = {ProjectionDecoder.MAX_VERTEX_COUNT, OpusReader.SAMPLE_RATE, 56000, 64000, 80000, 96000, 112000, ProjectionDecoder.MAX_TRIANGLE_INDICES, 144000, 160000, 176000, 192000, 224000, 256000};
    public static final int[] BITRATE_V1_L2 = {ProjectionDecoder.MAX_VERTEX_COUNT, OpusReader.SAMPLE_RATE, 56000, 64000, 80000, 96000, 112000, ProjectionDecoder.MAX_TRIANGLE_INDICES, 160000, 192000, 224000, 256000, 320000, 384000};
    public static final int[] BITRATE_V1_L3 = {ProjectionDecoder.MAX_VERTEX_COUNT, SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD, OpusReader.SAMPLE_RATE, 56000, 64000, 80000, 96000, 112000, ProjectionDecoder.MAX_TRIANGLE_INDICES, 160000, 192000, 224000, 256000, 320000};
    public static final int[] BITRATE_V2 = {8000, AmrExtractor.SAMPLE_RATE_WB, 24000, ProjectionDecoder.MAX_VERTEX_COUNT, SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD, OpusReader.SAMPLE_RATE, 56000, 64000, 80000, 96000, 112000, ProjectionDecoder.MAX_TRIANGLE_INDICES, 144000, 160000};

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
            return ((((i2 == 3 ? BITRATE_V1_L1[i4 - 1] : BITRATE_V2_L1[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? BITRATE_V1_L2[i4 - 1] : BITRATE_V1_L3[i4 - 1] : BITRATE_V2[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return ((i9 * 144) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72;
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
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i8 = SAMPLING_RATE_V1[i5];
        if (i2 == 2) {
            i6 = i8 / 2;
        } else {
            i6 = i8;
            if (i2 == 0) {
                i6 = i8 / 4;
            }
        }
        int i9 = (i >>> 9) & 1;
        int i10 = 1152;
        if (i3 == 3) {
            i7 = ((((i2 == 3 ? BITRATE_V1_L1[i4 - 1] : BITRATE_V2_L1[i4 - 1]) * 12) / i6) + i9) * 4;
            i10 = 384;
        } else {
            int i11 = 144;
            if (i2 == 3) {
                i7 = (((i3 == 2 ? BITRATE_V1_L2[i4 - 1] : BITRATE_V1_L3[i4 - 1]) * 144) / i6) + i9;
                i10 = 1152;
            } else {
                int i12 = BITRATE_V2[i4 - 1];
                if (i3 == 1) {
                    i10 = 576;
                }
                if (i3 == 1) {
                    i11 = 72;
                }
                i7 = ((i11 * i12) / i6) + i9;
            }
        }
        mpegAudioHeader.setValues(i2, MIME_TYPE_BY_LAYER[3 - i3], i7, i6, ((i >> 6) & 3) == 3 ? 1 : 2, ((i7 * 8) * i6) / i10, i10);
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
