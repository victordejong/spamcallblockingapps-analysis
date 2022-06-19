package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.pn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pn.class */
public final class C6855pn extends ie3<C6855pn, C6818on> implements nf3 {
    private static final C6855pn zzh;
    private int zzb;
    private String zze = "";
    private re3<C6707ln> zzf = ie3.m14425o();
    private int zzg;

    static {
        C6855pn c6855pn = new C6855pn();
        zzh = c6855pn;
        ie3.m14414z(C6855pn.class, c6855pn);
    }

    private C6855pn() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzb", "zze", "zzf", C6707ln.class, "zzg", C6299ao.f20061a});
            } else if (i2 == 3) {
                return new C6855pn();
            } else {
                if (i2 == 4) {
                    return new C6818on(null);
                }
                if (i2 == 5) {
                    return zzh;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
