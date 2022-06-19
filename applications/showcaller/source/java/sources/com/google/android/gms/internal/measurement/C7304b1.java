package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.b1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/b1.class */
public final class C7304b1 extends AbstractC7609x5<C7304b1, C7617y0> implements AbstractC7636z6 {
    private static final C7304b1 zzi;
    private int zza;
    private int zze;
    private boolean zzg;
    private String zzf = "";
    private AbstractC7351e6<String> zzh = AbstractC7609x5.m6764q();

    static {
        C7304b1 c7304b1 = new C7304b1();
        zzi = c7304b1;
        AbstractC7609x5.m6759w(C7304b1.class, c7304b1);
    }

    private C7304b1() {
    }

    /* renamed from: I */
    public static C7304b1 m7669I() {
        return zzi;
    }

    /* renamed from: A */
    public final boolean m7677A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final zzck m7676B() {
        zzck zza = zzck.zza(this.zze);
        zzck zzckVar = zza;
        if (zza == null) {
            zzckVar = zzck.UNKNOWN_MATCH_TYPE;
        }
        return zzckVar;
    }

    /* renamed from: C */
    public final boolean m7675C() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: D */
    public final String m7674D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final boolean m7673E() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: F */
    public final boolean m7672F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final List<String> m7671G() {
        return this.zzh;
    }

    /* renamed from: H */
    public final int m7670H() {
        return this.zzh.size();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zza", "zze", zzck.zzb(), "zzf", "zzg", "zzh"});
            } else if (i2 == 3) {
                return new C7304b1();
            } else {
                if (i2 == 4) {
                    return new C7617y0(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
