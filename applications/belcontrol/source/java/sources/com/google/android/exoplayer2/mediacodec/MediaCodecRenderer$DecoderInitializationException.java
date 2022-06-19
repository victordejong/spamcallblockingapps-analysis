package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
public class MediaCodecRenderer$DecoderInitializationException extends Exception {
    private static final int CUSTOM_ERROR_CODE_BASE = -50000;
    private static final int DECODER_QUERY_ERROR = -49998;
    private static final int NO_SUITABLE_DECODER_ERROR = -49999;
    public final String decoderName;
    public final String diagnosticInfo;
    public final String mimeType;
    public final boolean secureDecoderRequired;

    public MediaCodecRenderer$DecoderInitializationException(Format format, Throwable th, boolean z, int i) {
        super("Decoder init failed: [" + i + "], " + format, th);
        this.mimeType = format.sampleMimeType;
        this.secureDecoderRequired = z;
        this.decoderName = null;
        this.diagnosticInfo = buildCustomDiagnosticInfo(i);
    }

    public MediaCodecRenderer$DecoderInitializationException(Format format, Throwable th, boolean z, String str) {
        super("Decoder init failed: " + str + ", " + format, th);
        this.mimeType = format.sampleMimeType;
        this.secureDecoderRequired = z;
        this.decoderName = str;
        this.diagnosticInfo = Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null;
    }

    private static String buildCustomDiagnosticInfo(int i) {
        String str = i < 0 ? "neg_" : "";
        return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + str + Math.abs(i);
    }

    @TargetApi(21)
    private static String getDiagnosticInfoV21(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
