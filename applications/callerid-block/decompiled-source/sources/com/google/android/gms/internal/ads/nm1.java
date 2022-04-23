package com.google.android.gms.internal.ads;

import android.os.IBinder;
import com.google.android.gms.ads.internal.util.zzap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nm1.class */
public final class nm1 {
    /* renamed from: a */
    public static zzym m6428a(Throwable th) {
        if (th instanceof zzcwa) {
            zzcwa zzcwaVar = (zzcwa) th;
            return m6426c(zzcwaVar.zza(), zzcwaVar.zzb());
        } else if (th instanceof zzcql) {
            return th.getMessage() == null ? m6425d(((zzcql) th).zza(), null, null) : m6425d(((zzcql) th).zza(), th.getMessage(), null);
        } else if (!(th instanceof zzap)) {
            return m6425d(1, null, null);
        } else {
            zzap zzapVar = (zzap) th;
            return new zzym(zzapVar.zza(), tw1.m5453a(zzapVar.getMessage()), "com.google.android.gms.ads", (zzym) null, (IBinder) null);
        }
    }

    /* renamed from: b */
    public static zzym m6427b(Throwable th, a01 a01Var) {
        zzym zzymVar;
        zzym a = m6428a(th);
        int i = a.b;
        if ((i == 3 || i == 0) && (zzymVar = a.e) != null && !zzymVar.d.equals("com.google.android.gms.ads")) {
            a.e = null;
        }
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7339U4)).booleanValue() && a01Var != null) {
            a.f = a01Var.m8166c();
        }
        return a;
    }

    /* renamed from: c */
    public static zzym m6426c(int i, zzym zzymVar) {
        if (i != 0) {
            int i2 = i;
            if (i == 8) {
                if (((Integer) C1674c.m7906c().m6878b(C1842m3.f7321R4)).intValue() > 0) {
                    return zzymVar;
                }
                i2 = 8;
            }
            return m6425d(i2, null, zzymVar);
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0272  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzym m6425d(int r8, java.lang.String r9, com.google.android.gms.internal.ads.zzym r10) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.nm1.m6425d(int, java.lang.String, com.google.android.gms.internal.ads.zzym):com.google.android.gms.internal.ads.zzym");
    }
}
