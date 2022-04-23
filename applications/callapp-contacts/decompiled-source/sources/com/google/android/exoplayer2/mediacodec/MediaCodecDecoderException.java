package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.decoder.DecoderException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecDecoderException.class */
public class MediaCodecDecoderException extends DecoderException {

    /* renamed from: a  reason: collision with root package name */
    public final g f21386a;

    /* renamed from: b  reason: collision with root package name */
    public final String f21387b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaCodecDecoderException(java.lang.Throwable r5, com.google.android.exoplayer2.mediacodec.g r6) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Decoder failed: "
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0017
            r0 = 0
            r9 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r6
            java.lang.String r0 = r0.f21428a
            r9 = r0
        L_0x001d:
            r0 = r7
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r7
            java.lang.String r1 = r1.toString()
            r2 = r5
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r6
            r0.f21386a = r1
            r0 = r8
            r6 = r0
            int r0 = com.google.android.exoplayer2.util.af.f22275a
            r1 = 21
            if (r0 < r1) goto L_0x004f
            r0 = r8
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
            if (r0 == 0) goto L_0x004f
            r0 = r5
            android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
            java.lang.String r0 = r0.getDiagnosticInfo()
            r6 = r0
        L_0x004f:
            r0 = r4
            r1 = r6
            r0.f21387b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException.<init>(java.lang.Throwable, com.google.android.exoplayer2.mediacodec.g):void");
    }
}
