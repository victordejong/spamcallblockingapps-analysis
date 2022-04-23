package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cx.class */
public final class cx extends gl<cx, cw> implements hp {
    private static final cx zzg;
    private int zza;
    private gs<dc> zze = hy.d();
    private cs zzf;

    static {
        cx cxVar = new cx();
        zzg = cxVar;
        gl.a(cx.class, cxVar);
    }

    private cx() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\u001b\u0002ဉ��", new Object[]{"zza", "zze", dc.class, "zzf"});
        }
        if (i2 == 3) {
            return new cx();
        }
        if (i2 == 4) {
            return new cw(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
