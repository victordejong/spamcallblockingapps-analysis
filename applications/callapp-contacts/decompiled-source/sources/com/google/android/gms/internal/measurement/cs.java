package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cs.class */
public final class cs extends gl<cs, cr> implements hp {
    private static final cs zze;
    private gs<cv> zza = hy.d();

    static {
        cs csVar = new cs();
        zze = csVar;
        gl.a(cs.class, csVar);
    }

    private cs() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", cv.class});
        }
        if (i2 == 3) {
            return new cs();
        }
        if (i2 == 4) {
            return new cr(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zze;
    }
}
