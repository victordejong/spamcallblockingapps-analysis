package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.g1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g1.class */
public final class C7374g1 extends AbstractC7609x5<C7374g1, C7360f1> implements AbstractC7636z6 {
    private static final C7374g1 zzn;
    private int zza;
    private long zze;
    private int zzg;
    private boolean zzl;
    private String zzf = "";
    private AbstractC7351e6<C7402i1> zzh = AbstractC7609x5.m6764q();
    private AbstractC7351e6<C7346e1> zzi = AbstractC7609x5.m6764q();
    private AbstractC7351e6<C7457m0> zzj = AbstractC7609x5.m6764q();
    private String zzk = "";
    private AbstractC7351e6<C7541s2> zzm = AbstractC7609x5.m6764q();

    static {
        C7374g1 c7374g1 = new C7374g1();
        zzn = c7374g1;
        AbstractC7609x5.m6759w(C7374g1.class, c7374g1);
    }

    private C7374g1() {
    }

    /* renamed from: J */
    public static C7360f1 m7451J() {
        return zzn.m6762s();
    }

    /* renamed from: K */
    public static C7374g1 m7450K() {
        return zzn;
    }

    /* renamed from: M */
    public static /* synthetic */ void m7448M(C7374g1 c7374g1, int i, C7346e1 c7346e1) {
        c7346e1.getClass();
        AbstractC7351e6<C7346e1> abstractC7351e6 = c7374g1.zzi;
        if (!abstractC7351e6.zza()) {
            c7374g1.zzi = AbstractC7609x5.m6763r(abstractC7351e6);
        }
        c7374g1.zzi.set(i, c7346e1);
    }

    /* renamed from: A */
    public final boolean m7460A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final long m7459B() {
        return this.zze;
    }

    /* renamed from: C */
    public final boolean m7458C() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: D */
    public final String m7457D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final List<C7402i1> m7456E() {
        return this.zzh;
    }

    /* renamed from: F */
    public final int m7455F() {
        return this.zzi.size();
    }

    /* renamed from: G */
    public final C7346e1 m7454G(int i) {
        return this.zzi.get(i);
    }

    /* renamed from: H */
    public final List<C7457m0> m7453H() {
        return this.zzj;
    }

    /* renamed from: I */
    public final boolean m7452I() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzn, "\u0001\t��\u0001\u0001\t\t��\u0004��\u0001ဂ��\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", C7402i1.class, "zzi", C7346e1.class, "zzj", C7457m0.class, "zzk", "zzl", "zzm", C7541s2.class});
            }
            if (i2 == 3) {
                return new C7374g1();
            }
            if (i2 == 4) {
                return new C7360f1(null);
            }
            if (i2 == 5) {
                return zzn;
            }
            return null;
        }
        return (byte) 1;
    }
}
