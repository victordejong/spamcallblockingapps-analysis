package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hn.class */
public final class C6558hn extends ie3<C6558hn, C6335bn> implements nf3 {
    private static final C6558hn zze;
    private re3<C6298an> zzb = ie3.m14425o();

    static {
        C6558hn c6558hn = new C6558hn();
        zze = c6558hn;
        ie3.m14414z(C6558hn.class, c6558hn);
    }

    private C6558hn() {
    }

    /* renamed from: C */
    public static C6335bn m14588C() {
        return zze.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m14586E(C6558hn c6558hn, C6298an c6298an) {
        c6298an.getClass();
        re3<C6298an> re3Var = c6558hn.zzb;
        if (!re3Var.zza()) {
            c6558hn.zzb = ie3.m14424p(re3Var);
        }
        c6558hn.zzb.add(c6298an);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzb", C6298an.class});
            }
            if (i2 == 3) {
                return new C6558hn();
            }
            if (i2 == 4) {
                return new C6335bn(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
