package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.v0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/v0.class */
public final class C7578v0 extends AbstractC7609x5<C7578v0, C7539s0> implements AbstractC7636z6 {
    private static final C7578v0 zzj;
    private int zza;
    private int zze;
    private boolean zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        C7578v0 c7578v0 = new C7578v0();
        zzj = c7578v0;
        AbstractC7609x5.m6759w(C7578v0.class, c7578v0);
    }

    private C7578v0() {
    }

    /* renamed from: K */
    public static C7578v0 m6849K() {
        return zzj;
    }

    /* renamed from: A */
    public final boolean m6859A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final zzcd m6858B() {
        zzcd zza = zzcd.zza(this.zze);
        zzcd zzcdVar = zza;
        if (zza == null) {
            zzcdVar = zzcd.UNKNOWN_COMPARISON_TYPE;
        }
        return zzcdVar;
    }

    /* renamed from: C */
    public final boolean m6857C() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: D */
    public final boolean m6856D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final boolean m6855E() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: F */
    public final String m6854F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final boolean m6853G() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: H */
    public final String m6852H() {
        return this.zzh;
    }

    /* renamed from: I */
    public final boolean m6851I() {
        return (this.zza & 16) != 0;
    }

    /* renamed from: J */
    public final String m6850J() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zza", "zze", zzcd.zzb(), "zzf", "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new C7578v0();
            } else {
                if (i2 == 4) {
                    return new C7539s0(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
