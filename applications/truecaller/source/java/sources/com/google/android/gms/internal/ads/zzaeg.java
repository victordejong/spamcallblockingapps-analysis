package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaeg.class */
public final class zzaeg extends zzahc {
    public static final zzadw<zzaeg> zzh = zzaef.zza;
    public final int zza;
    public final String zzb;
    public final int zzc;
    public final zzafv zzd;
    public final int zze;
    public final zzo zzf;
    public final boolean zzg;

    private zzaeg(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzaeg(int r15, java.lang.Throwable r16, java.lang.String r17, int r18, java.lang.String r19, int r20, com.google.android.gms.internal.ads.zzafv r21, int r22, boolean r23) {
        /*
            r14 = this;
            r0 = r15
            if (r0 == 0) goto L71
            r0 = r15
            r1 = 1
            if (r0 == r1) goto Lf
            java.lang.String r0 = "Unexpected runtime error"
            r17 = r0
            goto L74
        Lf:
            r0 = r21
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r24 = r0
            r0 = r22
            java.lang.String r0 = com.google.android.gms.internal.ads.zzadx.zzd(r0)
            r17 = r0
            r0 = r19
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r0 = r0.length()
            r25 = r0
            r0 = r24
            int r0 = r0.length()
            r26 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r17
            int r2 = r2.length()
            r3 = r25
            r4 = 53
            int r3 = r3 + r4
            r4 = r26
            int r3 = r3 + r4
            int r2 = r2 + r3
            r1.<init>(r2)
            r27 = r0
            r0 = r27
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r27
            java.lang.String r1 = " error, index="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r27
            r1 = r20
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r27
            java.lang.String r1 = ", format="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r27
            r1 = r24
            java.lang.String r2 = ", format_supported="
            r3 = r17
            java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8610j(r0, r1, r2, r3)
            r17 = r0
            goto L74
        L71:
            java.lang.String r0 = "Source error"
            r17 = r0
        L74:
            r0 = r17
            r24 = r0
            r0 = 0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L86
            r0 = r17
            java.lang.String r1 = ": null"
            java.lang.String r0 = r0.concat(r1)
            r24 = r0
        L86:
            r0 = r14
            r1 = r24
            r2 = r16
            r3 = r18
            r4 = r15
            r5 = r19
            r6 = r20
            r7 = r21
            r8 = r22
            r9 = 0
            long r10 = android.os.SystemClock.elapsedRealtime()
            r11 = r23
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeg.<init>(int, java.lang.Throwable, java.lang.String, int, java.lang.String, int, com.google.android.gms.internal.ads.zzafv, int, boolean):void");
    }

    private zzaeg(String str, Throwable th, int i, int i2, String str2, int i3, zzafv zzafvVar, int i4, zzo zzoVar, long j, boolean z) {
        super(str, th, i, j);
        boolean z2;
        int i5;
        boolean z3 = false;
        if (z) {
            i5 = i2;
            if (i5 == 1) {
                i5 = 1;
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            i5 = i2;
            z2 = true;
        }
        zzakt.zza(z2);
        zzakt.zza(th != null ? true : z3);
        this.zza = i5;
        this.zzb = str2;
        this.zzc = i3;
        this.zzd = zzafvVar;
        this.zze = i4;
        this.zzf = zzoVar;
        this.zzg = z;
    }

    public static zzaeg zza(IOException iOException, int i) {
        return new zzaeg(0, iOException, i);
    }

    public static zzaeg zzb(Throwable th, String str, int i, zzafv zzafvVar, int i2, boolean z, int i3) {
        if (zzafvVar == null) {
            i2 = 4;
        }
        return new zzaeg(1, th, null, i3, str, i, zzafvVar, i2, z);
    }

    public static zzaeg zzc(RuntimeException runtimeException, int i) {
        return new zzaeg(2, runtimeException, i);
    }

    public final zzaeg zzd(zzo zzoVar) {
        String message = getMessage();
        int i = zzamq.zza;
        return new zzaeg(message, getCause(), this.zzi, this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzoVar, this.zzj, this.zzg);
    }
}
