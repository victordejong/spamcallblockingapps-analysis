package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.jq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jq.class */
public final class C6636jq extends ie3<C6636jq, C6599iq> implements nf3 {
    private static final C6636jq zzg;
    private int zzb;
    private boolean zze;
    private int zzf;

    static {
        C6636jq c6636jq = new C6636jq();
        zzg = c6636jq;
        ie3.m14414z(C6636jq.class, c6636jq);
    }

    private C6636jq() {
    }

    /* renamed from: D */
    public static C6599iq m14072D() {
        return zzg.m14418v();
    }

    /* renamed from: F */
    public static /* synthetic */ void m14070F(C6636jq c6636jq, boolean z) {
        c6636jq.zzb |= 1;
        c6636jq.zze = z;
    }

    /* renamed from: G */
    public static /* synthetic */ void m14069G(C6636jq c6636jq, int i) {
        c6636jq.zzb |= 2;
        c6636jq.zzf = i;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002င\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C6636jq();
            }
            if (i2 == 4) {
                return new C6599iq(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final boolean m14073C() {
        return this.zze;
    }
}
