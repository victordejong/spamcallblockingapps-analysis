package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzly.class */
public final class zzly extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final String f28638a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28639b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28640c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28641d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzly(com.google.android.gms.internal.ads.zzht r6, java.lang.Throwable r7, boolean r8, int r9) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r10
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 36
            int r2 = r2 + r3
            r1.<init>(r2)
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Decoder init failed: ["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = "], "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r11
            java.lang.String r1 = r1.toString()
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.zzaho
            r0.f28638a = r1
            r0 = r5
            r1 = 0
            r0.f28639b = r1
            r0 = r5
            r1 = 0
            r0.f28640c = r1
            r0 = r9
            if (r0 >= 0) goto L_0x0061
            java.lang.String r0 = "neg_"
            r6 = r0
            goto L_0x0064
        L_0x0061:
            java.lang.String r0 = ""
            r6 = r0
        L_0x0064:
            r0 = r9
            int r0 = java.lang.Math.abs(r0)
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r6
            int r2 = r2.length()
            r3 = 64
            int r2 = r2 + r3
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "com.google.android.exoplayer.MediaCodecTrackRenderer_"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.toString()
            r0.f28641d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzly.<init>(com.google.android.gms.internal.ads.zzht, java.lang.Throwable, boolean, int):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzly(com.google.android.gms.internal.ads.zzht r6, java.lang.Throwable r7, boolean r8, java.lang.String r9) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r9
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 23
            int r2 = r2 + r3
            r3 = r10
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Decoder init failed: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = ", "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r11
            java.lang.String r1 = r1.toString()
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.zzaho
            r0.f28638a = r1
            r0 = r5
            r1 = 0
            r0.f28639b = r1
            r0 = r5
            r1 = r9
            r0.f28640c = r1
            int r0 = com.google.android.gms.internal.ads.ede.f27664a
            r12 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r12
            r1 = 21
            if (r0 < r1) goto L_0x0084
            r0 = r9
            r6 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
            if (r0 == 0) goto L_0x0084
            r0 = r7
            android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
            java.lang.String r0 = r0.getDiagnosticInfo()
            r6 = r0
        L_0x0084:
            r0 = r5
            r1 = r6
            r0.f28641d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzly.<init>(com.google.android.gms.internal.ads.zzht, java.lang.Throwable, boolean, java.lang.String):void");
    }
}
