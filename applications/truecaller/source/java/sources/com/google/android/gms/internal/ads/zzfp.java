package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfp.class */
public final class zzfp extends Exception {
    public final String zza;
    public final boolean zzb;
    public final zzfo zzc;
    public final String zzd;
    public final zzfp zze;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzfp(com.google.android.gms.internal.ads.zzafv r10, java.lang.Throwable r11, boolean r12, int r13) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r14 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r14
            int r2 = r2.length()
            r3 = 36
            int r2 = r2 + r3
            r1.<init>(r2)
            r15 = r0
            r0 = r15
            java.lang.String r1 = "Decoder init failed: ["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            java.lang.String r1 = "], "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            r1 = r14
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r0 = r0.zzl
            r10 = r0
            r0 = r13
            int r0 = java.lang.Math.abs(r0)
            r13 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = 75
            r1.<init>(r2)
            r14 = r0
            r0 = r14
            java.lang.String r1 = "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_neg_"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r15
            java.lang.String r1 = r1.toString()
            r2 = r11
            r3 = r10
            r4 = 0
            r5 = 0
            r6 = r14
            java.lang.String r6 = r6.toString()
            r7 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfp.<init>(com.google.android.gms.internal.ads.zzafv, java.lang.Throwable, boolean, int):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzfp(com.google.android.gms.internal.ads.zzafv r10, java.lang.Throwable r11, boolean r12, com.google.android.gms.internal.ads.zzfo r13) {
        /*
            r9 = this;
            r0 = r13
            java.lang.String r0 = r0.zza
            r14 = r0
            r0 = r10
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r15 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r14
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 23
            int r2 = r2 + r3
            r3 = r15
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            java.lang.String r1 = "Decoder init failed: "
            r2 = r14
            java.lang.String r3 = ", "
            r4 = r15
            java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8606k(r0, r1, r2, r3, r4)
            r15 = r0
            r0 = r10
            java.lang.String r0 = r0.zzl
            r14 = r0
            int r0 = com.google.android.gms.internal.ads.zzamq.zza
            r1 = 21
            if (r0 < r1) goto L52
            r0 = r11
            boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
            if (r0 == 0) goto L52
            r0 = r11
            android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
            java.lang.String r0 = r0.getDiagnosticInfo()
            r10 = r0
            goto L54
        L52:
            r0 = 0
            r10 = r0
        L54:
            r0 = r9
            r1 = r15
            r2 = r11
            r3 = r14
            r4 = 0
            r5 = r13
            r6 = r10
            r7 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfp.<init>(com.google.android.gms.internal.ads.zzafv, java.lang.Throwable, boolean, com.google.android.gms.internal.ads.zzfo):void");
    }

    private zzfp(String str, Throwable th, String str2, boolean z, zzfo zzfoVar, String str3, zzfp zzfpVar) {
        super(str, th);
        this.zza = str2;
        this.zzb = false;
        this.zzc = zzfoVar;
        this.zzd = str3;
        this.zze = zzfpVar;
    }

    public static /* synthetic */ zzfp zza(zzfp zzfpVar, zzfp zzfpVar2) {
        return new zzfp(zzfpVar.getMessage(), zzfpVar.getCause(), zzfpVar.zza, false, zzfpVar.zzc, zzfpVar.zzd, zzfpVar2);
    }
}
