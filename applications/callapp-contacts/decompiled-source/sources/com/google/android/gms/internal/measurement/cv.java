package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cv.class */
public final class cv extends gl<cv, ct> implements hp {
    private static final cv zzg;
    private int zza;
    private String zze = "";
    private gs<dc> zzf = hy.d();

    static {
        cv cvVar = new cv();
        zzg = cvVar;
        gl.a(cv.class, cvVar);
    }

    private cv() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001b", new Object[]{"zza", "zze", "zzf", dc.class});
        }
        if (i2 == 3) {
            return new cv();
        }
        if (i2 == 4) {
            return new ct(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
