package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzle.class */
public final class zzle extends Exception {

    /* renamed from: a */
    private final String f17754a;

    /* renamed from: b */
    private final boolean f17755b;

    /* renamed from: c */
    private final String f17756c;

    /* renamed from: d */
    private final String f17757d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzle(com.google.android.gms.internal.ads.dlf r7, java.lang.Throwable r8, boolean r9, int r10) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r11 = r0
            r0 = r6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            r3 = r11
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            r4 = 36
            int r3 = r3 + r4
            r2.<init>(r3)
            java.lang.String r2 = "Decoder init failed: ["
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r10
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "], "
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r11
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r6
            r1 = r7
            java.lang.String r1 = r1.f14635c
            r0.f17754a = r1
            r0 = r6
            r1 = 0
            r0.f17755b = r1
            r0 = r6
            r1 = 0
            r0.f17756c = r1
            r0 = r10
            if (r0 >= 0) goto L7c
            java.lang.String r0 = "neg_"
            r7 = r0
        L4e:
            r0 = r10
            int r0 = java.lang.Math.abs(r0)
            r10 = r0
            r0 = r6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            r3 = r7
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            r4 = 64
            int r3 = r3 + r4
            r2.<init>(r3)
            java.lang.String r2 = "com.google.android.exoplayer.MediaCodecTrackRenderer_"
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r7
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r10
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.f17757d = r1
            return
        L7c:
            java.lang.String r0 = ""
            r7 = r0
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzle.<init>(com.google.android.gms.internal.ads.dlf, java.lang.Throwable, boolean, int):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzle(com.google.android.gms.internal.ads.dlf r7, java.lang.Throwable r8, boolean r9, java.lang.String r10) {
        /*
            r6 = this;
            r0 = 0
            r11 = r0
            r0 = r7
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r12 = r0
            r0 = r6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            r3 = r10
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            r4 = 23
            int r3 = r3 + r4
            r4 = r12
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r4 = r4.length()
            int r3 = r3 + r4
            r2.<init>(r3)
            java.lang.String r2 = "Decoder init failed: "
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r10
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ", "
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r12
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r6
            r1 = r7
            java.lang.String r1 = r1.f14635c
            r0.f17754a = r1
            r0 = r6
            r1 = 0
            r0.f17755b = r1
            r0 = r6
            r1 = r10
            r0.f17756c = r1
            r0 = r11
            r7 = r0
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a
            r1 = 21
            if (r0 < r1) goto L70
            r0 = r11
            r7 = r0
            r0 = r8
            boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
            if (r0 == 0) goto L70
            r0 = r8
            android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
            java.lang.String r0 = r0.getDiagnosticInfo()
            r7 = r0
        L70:
            r0 = r6
            r1 = r7
            r0.f17757d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzle.<init>(com.google.android.gms.internal.ads.dlf, java.lang.Throwable, boolean, java.lang.String):void");
    }
}
