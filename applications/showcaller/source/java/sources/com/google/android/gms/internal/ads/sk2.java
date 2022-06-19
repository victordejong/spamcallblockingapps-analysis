package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sk2.class */
public final class sk2 {
    /* renamed from: a */
    public static zzbcz m11000a(Throwable th) {
        if (th instanceof zzeeg) {
            zzeeg zzeegVar = (zzeeg) th;
            return m10998c(zzeegVar.zza(), zzeegVar.zzb());
        } else if (th instanceof zzdym) {
            return th.getMessage() == null ? m10997d(((zzdym) th).zza(), null, null) : m10997d(((zzdym) th).zza(), th.getMessage(), null);
        } else if (!(th instanceof zzbb)) {
            return m10997d(1, null, null);
        } else {
            zzbb zzbbVar = (zzbb) th;
            return new zzbcz(zzbbVar.zza(), iv2.m14270a(zzbbVar.getMessage()), "com.google.android.gms.ads", null, null);
        }
    }

    /* renamed from: b */
    public static zzbcz m10999b(Throwable th, uw1 uw1Var) {
        zzbcz zzbczVar;
        zzbcz m11000a = m11000a(th);
        int i = m11000a.f33653d;
        if ((i == 3 || i == 0) && (zzbczVar = m11000a.f33656g) != null && !zzbczVar.f33655f.equals("com.google.android.gms.ads")) {
            m11000a.f33656g = null;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25625X5)).booleanValue() && uw1Var != null) {
            m11000a.f33657h = uw1Var.m10168d();
        }
        return m11000a;
    }

    /* renamed from: c */
    public static zzbcz m10998c(int i, zzbcz zzbczVar) {
        if (i != 0) {
            int i2 = i;
            if (i == 8) {
                if (((Integer) C7192yr.m8714c().m14263c(C6679kw.f25601U5)).intValue() > 0) {
                    return zzbczVar;
                }
                i2 = 8;
            }
            return m10997d(i2, null, zzbczVar);
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0275  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzbcz m10997d(int r8, java.lang.String r9, com.google.android.gms.internal.ads.zzbcz r10) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sk2.m10997d(int, java.lang.String, com.google.android.gms.internal.ads.zzbcz):com.google.android.gms.internal.ads.zzbcz");
    }
}
