package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.e2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/e2.class */
public final class C7347e2 extends AbstractC7609x5<C7347e2, C7305b2> implements AbstractC7636z6 {
    private static final C7347e2 zzg;
    private int zza;
    private int zze = 1;
    private AbstractC7351e6<C7566u1> zzf = AbstractC7609x5.m6764q();

    static {
        C7347e2 c7347e2 = new C7347e2();
        zzg = c7347e2;
        AbstractC7609x5.m6759w(C7347e2.class, c7347e2);
    }

    private C7347e2() {
    }

    /* renamed from: A */
    public static C7305b2 m7561A() {
        return zzg.m6762s();
    }

    /* renamed from: C */
    public static /* synthetic */ void m7559C(C7347e2 c7347e2, C7566u1 c7566u1) {
        c7566u1.getClass();
        AbstractC7351e6<C7566u1> abstractC7351e6 = c7347e2.zzf;
        if (!abstractC7351e6.zza()) {
            c7347e2.zzf = AbstractC7609x5.m6763r(abstractC7351e6);
        }
        c7347e2.zzf.add(c7566u1);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zza", "zze", zzdo.zzb(), "zzf", C7566u1.class});
            } else if (i2 == 3) {
                return new C7347e2();
            } else {
                if (i2 == 4) {
                    return new C7305b2(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
