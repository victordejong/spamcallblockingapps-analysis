package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m93.class */
public final class m93 extends ie3<m93, i93> implements nf3 {
    private static final m93 zzf;
    private int zzb;
    private re3<l93> zze = ie3.m14425o();

    static {
        m93 m93Var = new m93();
        zzf = m93Var;
        ie3.m14414z(m93.class, m93Var);
    }

    private m93() {
    }

    /* renamed from: F */
    public static m93 m13333F(byte[] bArr, vd3 vd3Var) {
        return (m93) ie3.m14419u(zzf, bArr, vd3Var);
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzb", "zze", l93.class});
            }
            if (i2 == 3) {
                return new m93();
            }
            if (i2 == 4) {
                return new i93(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m13336C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final List<l93> m13335D() {
        return this.zze;
    }

    /* renamed from: E */
    public final int m13334E() {
        return this.zze.size();
    }
}
