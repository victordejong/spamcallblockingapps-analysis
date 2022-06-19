package com.google.android.gms.internal.ads;

import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ia3.class */
public final class ia3 extends ie3<ia3, ha3> implements nf3 {
    private static final ia3 zzf;
    private String zzb = "";
    private re3<g93> zze = ie3.m14425o();

    static {
        ia3 ia3Var = new ia3();
        zzf = ia3Var;
        ie3.m14414z(ia3.class, ia3Var);
    }

    private ia3() {
    }

    /* renamed from: D */
    public static ia3 m14461D() {
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zzb", "zze", g93.class});
            }
            if (i2 == 3) {
                return new ia3();
            }
            if (i2 == 4) {
                return new ha3(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final List<g93> m14462C() {
        return this.zze;
    }
}
