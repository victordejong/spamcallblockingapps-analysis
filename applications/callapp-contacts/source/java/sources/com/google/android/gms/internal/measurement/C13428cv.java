package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cv.class */
public final class C13428cv extends AbstractC13526gl<C13428cv, C13426ct> implements AbstractC13557hp {
    private static final C13428cv zzg;
    private int zza;
    private String zze = "";
    private AbstractC13533gs<C13436dc> zzf = C13566hy.m12660d();

    static {
        C13428cv c13428cv = new C13428cv();
        zzg = c13428cv;
        AbstractC13526gl.m12763a(C13428cv.class, c13428cv);
    }

    private C13428cv() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001b", new Object[]{"zza", "zze", "zzf", C13436dc.class});
            }
            if (i2 == 3) {
                return new C13428cv();
            }
            if (i2 == 4) {
                return new C13426ct(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
