package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cs */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cs.class */
public final class C13425cs extends AbstractC13526gl<C13425cs, C13424cr> implements AbstractC13557hp {
    private static final C13425cs zze;
    private AbstractC13533gs<C13428cv> zza = C13566hy.m12660d();

    static {
        C13425cs c13425cs = new C13425cs();
        zze = c13425cs;
        AbstractC13526gl.m12763a(C13425cs.class, c13425cs);
    }

    private C13425cs() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", C13428cv.class});
            }
            if (i2 == 3) {
                return new C13425cs();
            }
            if (i2 == 4) {
                return new C13424cr(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
