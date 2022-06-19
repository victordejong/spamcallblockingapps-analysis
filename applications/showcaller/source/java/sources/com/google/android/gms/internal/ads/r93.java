package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r93.class */
public final class r93 extends ie3<r93, o93> implements nf3 {
    private static final r93 zzf;
    private int zzb;
    private re3<q93> zze = ie3.m14425o();

    static {
        r93 r93Var = new r93();
        zzf = r93Var;
        ie3.m14414z(r93.class, r93Var);
    }

    private r93() {
    }

    /* renamed from: C */
    public static o93 m11637C() {
        return zzf.m14418v();
    }

    /* renamed from: F */
    public static /* synthetic */ void m11634F(r93 r93Var, q93 q93Var) {
        q93Var.getClass();
        re3<q93> re3Var = r93Var.zze;
        if (!re3Var.zza()) {
            r93Var.zze = ie3.m14424p(re3Var);
        }
        r93Var.zze.add(q93Var);
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzb", "zze", q93.class});
            }
            if (i2 == 3) {
                return new r93();
            }
            if (i2 == 4) {
                return new o93(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }
}
