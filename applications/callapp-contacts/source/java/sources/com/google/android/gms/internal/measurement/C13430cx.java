package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cx.class */
public final class C13430cx extends AbstractC13526gl<C13430cx, C13429cw> implements AbstractC13557hp {
    private static final C13430cx zzg;
    private int zza;
    private AbstractC13533gs<C13436dc> zze = C13566hy.m12660d();
    private C13425cs zzf;

    static {
        C13430cx c13430cx = new C13430cx();
        zzg = c13430cx;
        AbstractC13526gl.m12763a(C13430cx.class, c13430cx);
    }

    private C13430cx() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\u001b\u0002ဉ��", new Object[]{"zza", "zze", C13436dc.class, "zzf"});
            }
            if (i2 == 3) {
                return new C13430cx();
            }
            if (i2 == 4) {
                return new C13429cw(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
