package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgg.class */
public final class zzgg extends zzbl {
    public static final zzj<zzgg> zzd = zzgf.zza;
    public final int zze;
    public final String zzf;
    public final int zzg;
    public final zzab zzh;
    public final int zzi;
    public final zzbf zzj;
    public final boolean zzk;

    private zzgg(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzgg(int r15, java.lang.Throwable r16, java.lang.String r17, int r18, java.lang.String r19, int r20, com.google.android.gms.internal.ads.zzab r21, int r22, boolean r23) {
        /*
            r14 = this;
            r0 = r15
            if (r0 == 0) goto L6e
            r0 = r15
            r1 = 1
            if (r0 == r1) goto Lf
            java.lang.String r0 = "Unexpected runtime error"
            r17 = r0
            goto L71
        Lf:
            r0 = r21
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r24 = r0
            r0 = r22
            java.lang.String r0 = com.google.android.gms.internal.ads.zzk.zze(r0)
            r25 = r0
            r0 = r19
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r0 = r0.length()
            r26 = r0
            r0 = r24
            int r0 = r0.length()
            r27 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r25
            int r2 = r2.length()
            r3 = r26
            r4 = 53
            int r3 = r3 + r4
            r4 = r27
            int r3 = r3 + r4
            int r2 = r2 + r3
            r1.<init>(r2)
            r17 = r0
            r0 = r17
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r17
            java.lang.String r1 = " error, index="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r17
            r1 = r20
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r17
            java.lang.String r1 = ", format="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r17
            r1 = r24
            java.lang.String r2 = ", format_supported="
            r3 = r25
            java.lang.String r0 = androidx.recyclerview.widget.C0608b.m7625j(r0, r1, r2, r3)
            r17 = r0
            goto L71
        L6e:
            java.lang.String r0 = "Source error"
            r17 = r0
        L71:
            r0 = r17
            r25 = r0
            r0 = 0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L83
            r0 = r17
            java.lang.String r1 = ": null"
            java.lang.String r0 = r0.concat(r1)
            r25 = r0
        L83:
            r0 = r14
            r1 = r25
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgg.<init>(int, java.lang.Throwable, java.lang.String, int, java.lang.String, int, com.google.android.gms.internal.ads.zzab, int, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzgg(java.lang.String r8, java.lang.Throwable r9, int r10, int r11, java.lang.String r12, int r13, com.google.android.gms.internal.ads.zzab r14, int r15, com.google.android.gms.internal.ads.zzbf r16, long r17, boolean r19) {
        /*
            r7 = this;
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r17
            r0.<init>(r1, r2, r3, r4)
            r0 = 0
            r20 = r0
            r0 = r19
            if (r0 == 0) goto L25
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L1c
            r0 = 1
            r10 = r0
            goto L28
        L1c:
            r0 = 0
            r21 = r0
            r0 = r11
            r10 = r0
            goto L2b
        L25:
            r0 = r11
            r10 = r0
        L28:
            r0 = 1
            r21 = r0
        L2b:
            r0 = r21
            com.google.android.gms.internal.ads.zzdy.zzd(r0)
            r0 = r9
            if (r0 != 0) goto L3b
            r0 = r20
            r21 = r0
            goto L3e
        L3b:
            r0 = 1
            r21 = r0
        L3e:
            r0 = r21
            com.google.android.gms.internal.ads.zzdy.zzd(r0)
            r0 = r7
            r1 = r10
            r0.zze = r1
            r0 = r7
            r1 = r12
            r0.zzf = r1
            r0 = r7
            r1 = r13
            r0.zzg = r1
            r0 = r7
            r1 = r14
            r0.zzh = r1
            r0 = r7
            r1 = r15
            r0.zzi = r1
            r0 = r7
            r1 = r16
            r0.zzj = r1
            r0 = r7
            r1 = r19
            r0.zzk = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgg.<init>(java.lang.String, java.lang.Throwable, int, int, java.lang.String, int, com.google.android.gms.internal.ads.zzab, int, com.google.android.gms.internal.ads.zzbf, long, boolean):void");
    }

    public static zzgg zzb(Throwable th, String str, int i, zzab zzabVar, int i2, boolean z, int i3) {
        if (zzabVar == null) {
            i2 = 4;
        }
        return new zzgg(1, th, null, i3, str, i, zzabVar, i2, z);
    }

    public static zzgg zzc(IOException iOException, int i) {
        return new zzgg(0, iOException, i);
    }

    public static zzgg zzd(RuntimeException runtimeException, int i) {
        return new zzgg(2, runtimeException, i);
    }

    public final zzgg zza(zzbf zzbfVar) {
        String message = getMessage();
        int i = zzfn.zza;
        return new zzgg(message, getCause(), this.zzb, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, zzbfVar, this.zzc, this.zzk);
    }
}
