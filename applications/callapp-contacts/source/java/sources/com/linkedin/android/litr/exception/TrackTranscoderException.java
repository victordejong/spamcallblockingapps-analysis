package com.linkedin.android.litr.exception;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/TrackTranscoderException.class */
public class TrackTranscoderException extends MediaTransformationException {

    /* renamed from: b */
    private static final String f58577b = "com.linkedin.android.litr.exception.TrackTranscoderException";

    /* renamed from: c */
    private final EnumC16646a f58578c;

    /* renamed from: d */
    private final MediaFormat f58579d;

    /* renamed from: e */
    private final MediaCodec f58580e;

    /* renamed from: f */
    private final MediaCodecList f58581f;

    /* renamed from: com.linkedin.android.litr.exception.TrackTranscoderException$a */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/TrackTranscoderException$a.class */
    public enum EnumC16646a {
        DECODER_FORMAT_NOT_FOUND("Failed to create decoder codec."),
        DECODER_CONFIGURATION_ERROR("Failed to configure decoder codec."),
        ENCODER_FORMAT_NOT_FOUND("Failed to create encoder codec."),
        ENCODER_CONFIGURATION_ERROR("Failed to configure encoder codec."),
        DECODER_NOT_FOUND("No decoder found."),
        ENCODER_NOT_FOUND("No encoder found."),
        CODEC_IN_RELEASED_STATE("Codecs are in released state."),
        SOURCE_TRACK_MIME_TYPE_NOT_FOUND("Mime type not found for the source track."),
        NO_TRACKS_FOUND("No tracks found."),
        INTERNAL_CODEC_ERROR("Internal codec error occurred."),
        NO_FRAME_AVAILABLE("No frame available for specified tag"),
        DECODER_NOT_PROVIDED("Decoder is not provided"),
        ENCODER_NOT_PROVIDED("Encoder is not provided"),
        RENDERER_NOT_PROVIDED("Renderer is not provided");
        
        private final String message;

        EnumC16646a(String str) {
            this.message = str;
        }
    }

    public TrackTranscoderException(EnumC16646a enumC16646a) {
        this(enumC16646a, null, null, null);
    }

    public TrackTranscoderException(EnumC16646a enumC16646a, MediaFormat mediaFormat, MediaCodec mediaCodec, MediaCodecList mediaCodecList) {
        this(enumC16646a, mediaFormat, mediaCodec, mediaCodecList, null);
    }

    public TrackTranscoderException(EnumC16646a enumC16646a, MediaFormat mediaFormat, MediaCodec mediaCodec, MediaCodecList mediaCodecList, Throwable th) {
        super(th);
        this.f58578c = enumC16646a;
        this.f58579d = mediaFormat;
        this.f58580e = mediaCodec;
        this.f58581f = mediaCodecList;
    }

    public TrackTranscoderException(EnumC16646a enumC16646a, Throwable th) {
        this(enumC16646a, null, null, null, th);
    }

    /* renamed from: a */
    private static String m6829a(MediaCodec mediaCodec) {
        try {
            return m6828a(mediaCodec.getCodecInfo());
        } catch (IllegalStateException e) {
            Log.e(f58577b, "Failed to retrieve media codec info.");
            return "";
        }
    }

    /* renamed from: a */
    private static String m6828a(MediaCodecInfo mediaCodecInfo) {
        return "MediaCodecInfo: " + mediaCodecInfo.getName() + ',' + mediaCodecInfo.isEncoder() + ',' + Arrays.asList(mediaCodecInfo.getSupportedTypes()).toString();
    }

    /* renamed from: a */
    private static String m6827a(MediaCodecList mediaCodecList) {
        MediaCodecInfo[] codecInfos;
        StringBuilder sb = new StringBuilder();
        try {
            if (Build.VERSION.SDK_INT > 21) {
                for (MediaCodecInfo mediaCodecInfo : mediaCodecList.getCodecInfos()) {
                    if (mediaCodecInfo != null) {
                        sb.append('\n');
                        sb.append(m6828a(mediaCodecInfo));
                    }
                }
            } else {
                Log.e(f58577b, "Failed to retrieve media codec info below API level 21.");
            }
        } catch (IllegalStateException e) {
            Log.e(f58577b, "Failed to retrieve media codec info.", e);
        }
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f58578c.message;
    }

    @Override // com.linkedin.android.litr.exception.MediaTransformationException, java.lang.Throwable
    public String toString() {
        String str = super.toString() + '\n';
        String str2 = str;
        if (this.f58579d != null) {
            str2 = str + "Media format: " + this.f58579d.toString() + '\n';
        }
        String str3 = str2;
        if (this.f58580e != null) {
            str3 = str2 + "Selected media codec info: " + m6829a(this.f58580e) + '\n';
        }
        String str4 = str3;
        if (this.f58581f != null) {
            str4 = str3 + "Available media codec info list (Name, IsEncoder, Supported Types): " + m6827a(this.f58581f);
        }
        String str5 = str4;
        if (Build.VERSION.SDK_INT >= 21) {
            str5 = str4;
            if (getCause() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(str4);
                sb.append("Diagnostic info: ");
                Throwable cause = getCause();
                sb.append(!(cause instanceof MediaCodec.CodecException) ? null : ((MediaCodec.CodecException) cause).getDiagnosticInfo());
                str5 = sb.toString();
            }
        }
        return str5;
    }
}
