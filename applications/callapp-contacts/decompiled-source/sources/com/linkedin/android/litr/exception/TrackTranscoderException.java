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

    /* renamed from: b  reason: collision with root package name */
    private static final String f33737b = "com.linkedin.android.litr.exception.TrackTranscoderException";

    /* renamed from: c  reason: collision with root package name */
    private final a f33738c;

    /* renamed from: d  reason: collision with root package name */
    private final MediaFormat f33739d;
    private final MediaCodec e;
    private final MediaCodecList f;

    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/TrackTranscoderException$a.class */
    public enum a {
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

        a(String str) {
            this.message = str;
        }
    }

    public TrackTranscoderException(a aVar) {
        this(aVar, null, null, null);
    }

    public TrackTranscoderException(a aVar, MediaFormat mediaFormat, MediaCodec mediaCodec, MediaCodecList mediaCodecList) {
        this(aVar, mediaFormat, mediaCodec, mediaCodecList, null);
    }

    public TrackTranscoderException(a aVar, MediaFormat mediaFormat, MediaCodec mediaCodec, MediaCodecList mediaCodecList, Throwable th) {
        super(th);
        this.f33738c = aVar;
        this.f33739d = mediaFormat;
        this.e = mediaCodec;
        this.f = mediaCodecList;
    }

    public TrackTranscoderException(a aVar, Throwable th) {
        this(aVar, null, null, null, th);
    }

    private static String a(MediaCodec mediaCodec) {
        try {
            return a(mediaCodec.getCodecInfo());
        } catch (IllegalStateException e) {
            Log.e(f33737b, "Failed to retrieve media codec info.");
            return "";
        }
    }

    private static String a(MediaCodecInfo mediaCodecInfo) {
        return "MediaCodecInfo: " + mediaCodecInfo.getName() + ',' + mediaCodecInfo.isEncoder() + ',' + Arrays.asList(mediaCodecInfo.getSupportedTypes()).toString();
    }

    private static String a(MediaCodecList mediaCodecList) {
        MediaCodecInfo[] codecInfos;
        StringBuilder sb = new StringBuilder();
        try {
            if (Build.VERSION.SDK_INT > 21) {
                for (MediaCodecInfo mediaCodecInfo : mediaCodecList.getCodecInfos()) {
                    if (mediaCodecInfo != null) {
                        sb.append('\n');
                        sb.append(a(mediaCodecInfo));
                    }
                }
            } else {
                Log.e(f33737b, "Failed to retrieve media codec info below API level 21.");
            }
        } catch (IllegalStateException e) {
            Log.e(f33737b, "Failed to retrieve media codec info.", e);
        }
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f33738c.message;
    }

    @Override // com.linkedin.android.litr.exception.MediaTransformationException, java.lang.Throwable
    public String toString() {
        String str = super.toString() + '\n';
        String str2 = str;
        if (this.f33739d != null) {
            str2 = str + "Media format: " + this.f33739d.toString() + '\n';
        }
        String str3 = str2;
        if (this.e != null) {
            str3 = str2 + "Selected media codec info: " + a(this.e) + '\n';
        }
        String str4 = str3;
        if (this.f != null) {
            str4 = str3 + "Available media codec info list (Name, IsEncoder, Supported Types): " + a(this.f);
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
