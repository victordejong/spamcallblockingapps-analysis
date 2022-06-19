package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d93.class */
public final class d93 extends ie3<d93, c93> implements nf3 {
    private static final d93 zzg;
    private String zzb = "";
    private zzgex zze = zzgex.f34110d;
    private int zzf;

    static {
        d93 d93Var = new d93();
        zzg = d93Var;
        ie3.m14414z(d93.class, d93Var);
    }

    private d93() {
    }

    /* renamed from: E */
    public static c93 m15858E() {
        return zzg.m14418v();
    }

    /* renamed from: F */
    public static d93 m15857F() {
        return zzg;
    }

    /* renamed from: G */
    public static /* synthetic */ d93 m15856G() {
        return zzg;
    }

    /* renamed from: H */
    public static /* synthetic */ void m15855H(d93 d93Var, String str) {
        str.getClass();
        d93Var.zzb = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m15854I(d93 d93Var, zzgex zzgexVar) {
        d93Var.zze = zzgexVar;
    }

    /* renamed from: L */
    public static /* synthetic */ void m15852L(d93 d93Var, int i) {
        d93Var.zzf = fa3.m15289a(i);
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new d93();
            }
            if (i2 == 4) {
                return new c93(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final String m15860C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m15859D() {
        return this.zze;
    }

    /* renamed from: J */
    public final int m15853J() {
        int m15288b = fa3.m15288b(this.zzf);
        int i = m15288b;
        if (m15288b == 0) {
            i = 1;
        }
        return i;
    }
}
