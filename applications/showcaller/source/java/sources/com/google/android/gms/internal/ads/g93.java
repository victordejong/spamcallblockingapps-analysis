package com.google.android.gms.internal.ads;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g93.class */
public final class g93 extends ie3<g93, f93> implements nf3 {
    private static final g93 zzi;
    private int zzf;
    private boolean zzg;
    private String zzb = "";
    private String zze = "";
    private String zzh = "";

    static {
        g93 g93Var = new g93();
        zzi = g93Var;
        ie3.m14414z(g93.class, g93Var);
    }

    private g93() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzi, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new g93();
            }
            if (i2 == 4) {
                return new f93(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final String m14970C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final String m14969D() {
        return this.zze;
    }

    /* renamed from: E */
    public final int m14968E() {
        return this.zzf;
    }

    /* renamed from: F */
    public final boolean m14967F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final String m14966G() {
        return this.zzh;
    }
}
