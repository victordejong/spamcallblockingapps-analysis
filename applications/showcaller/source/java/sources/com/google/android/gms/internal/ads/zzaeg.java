package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaeg.class */
public final class zzaeg extends zzahc {

    /* renamed from: e */
    public static final AbstractC7093w2<zzaeg> f33470e = C6464f3.f22714a;
    public final int zza;
    public final String zzb;
    public final int zzc;
    public final C7021u4 zzd;
    public final int zze;
    public final ar3 zzf;
    final boolean zzg;

    private zzaeg(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzaeg(int r15, java.lang.Throwable r16, java.lang.String r17, int r18, java.lang.String r19, int r20, com.google.android.gms.internal.ads.C7021u4 r21, int r22, boolean r23) {
        /*
            r14 = this;
            r0 = r15
            if (r0 == 0) goto L7b
            r0 = r15
            r1 = 1
            if (r0 == r1) goto Lf
            java.lang.String r0 = "Unexpected runtime error"
            r17 = r0
            goto L7e
        Lf:
            r0 = r21
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r24 = r0
            r0 = r22
            java.lang.String r0 = com.google.android.gms.internal.ads.C7130x2.m9366d(r0)
            r17 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r19
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 53
            int r2 = r2 + r3
            r3 = r24
            int r3 = r3.length()
            int r2 = r2 + r3
            r3 = r17
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            r25 = r0
            r0 = r25
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r25
            java.lang.String r1 = " error, index="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r25
            r1 = r20
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r25
            java.lang.String r1 = ", format="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r25
            r1 = r24
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r25
            java.lang.String r1 = ", format_supported="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r25
            r1 = r17
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r25
            java.lang.String r0 = r0.toString()
            r17 = r0
            goto L7e
        L7b:
            java.lang.String r0 = "Source error"
            r17 = r0
        L7e:
            r0 = r17
            r24 = r0
            r0 = 0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L90
            r0 = r17
            java.lang.String r1 = ": null"
            java.lang.String r0 = r0.concat(r1)
            r24 = r0
        L90:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeg.<init>(int, java.lang.Throwable, java.lang.String, int, java.lang.String, int, com.google.android.gms.internal.ads.u4, int, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzaeg(java.lang.String r8, java.lang.Throwable r9, int r10, int r11, java.lang.String r12, int r13, com.google.android.gms.internal.ads.C7021u4 r14, int r15, com.google.android.gms.internal.ads.ar3 r16, long r17, boolean r19) {
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
            if (r0 == 0) goto L24
            r0 = r11
            r10 = r0
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L1e
            r0 = 1
            r10 = r0
            goto L27
        L1e:
            r0 = 0
            r21 = r0
            goto L2a
        L24:
            r0 = r11
            r10 = r0
        L27:
            r0 = 1
            r21 = r0
        L2a:
            r0 = r21
            com.google.android.gms.internal.ads.C7173y8.m8898a(r0)
            r0 = r9
            if (r0 != 0) goto L3a
            r0 = r20
            r21 = r0
            goto L3d
        L3a:
            r0 = 1
            r21 = r0
        L3d:
            r0 = r21
            com.google.android.gms.internal.ads.C7173y8.m8898a(r0)
            r0 = r7
            r1 = r10
            r0.zza = r1
            r0 = r7
            r1 = r12
            r0.zzb = r1
            r0 = r7
            r1 = r13
            r0.zzc = r1
            r0 = r7
            r1 = r14
            r0.zzd = r1
            r0 = r7
            r1 = r15
            r0.zze = r1
            r0 = r7
            r1 = r16
            r0.zzf = r1
            r0 = r7
            r1 = r19
            r0.zzg = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeg.<init>(java.lang.String, java.lang.Throwable, int, int, java.lang.String, int, com.google.android.gms.internal.ads.u4, int, com.google.android.gms.internal.ads.ar3, long, boolean):void");
    }

    public static zzaeg zza(IOException iOException, int i) {
        return new zzaeg(0, iOException, i);
    }

    public static zzaeg zzb(Throwable th, String str, int i, C7021u4 c7021u4, int i2, boolean z, int i3) {
        if (c7021u4 == null) {
            i2 = 4;
        }
        return new zzaeg(1, th, null, i3, str, i, c7021u4, i2, z);
    }

    public static zzaeg zzc(RuntimeException runtimeException, int i) {
        return new zzaeg(2, runtimeException, i);
    }

    public final zzaeg zzd(ar3 ar3Var) {
        String message = getMessage();
        int i = C7101wa.f31475a;
        return new zzaeg(message, getCause(), this.zzi, this.zza, this.zzb, this.zzc, this.zzd, this.zze, ar3Var, this.zzj, this.zzg);
    }
}
