package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.y1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y1.class */
public final class C7618y1 extends AbstractC7609x5<C7618y1, C7605x1> implements AbstractC7636z6 {
    private static final C7618y1 zze;
    private AbstractC7351e6<C7291a2> zza = AbstractC7609x5.m6764q();

    static {
        C7618y1 c7618y1 = new C7618y1();
        zze = c7618y1;
        AbstractC7609x5.m6759w(C7618y1.class, c7618y1);
    }

    private C7618y1() {
    }

    /* renamed from: C */
    public static C7605x1 m6748C() {
        return zze.m6762s();
    }

    /* renamed from: E */
    public static /* synthetic */ void m6746E(C7618y1 c7618y1, C7291a2 c7291a2) {
        c7291a2.getClass();
        AbstractC7351e6<C7291a2> abstractC7351e6 = c7618y1.zza;
        if (!abstractC7351e6.zza()) {
            c7618y1.zza = AbstractC7609x5.m6763r(abstractC7351e6);
        }
        c7618y1.zza.add(c7291a2);
    }

    /* renamed from: A */
    public final List<C7291a2> m6750A() {
        return this.zza;
    }

    /* renamed from: B */
    public final C7291a2 m6749B(int i) {
        return this.zza.get(0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", C7291a2.class});
            }
            if (i2 == 3) {
                return new C7618y1();
            }
            if (i2 == 4) {
                return new C7605x1(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
