package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dc.class */
public final class dc extends gl<dc, cy> implements hp {
    private static final dc zzk;
    private int zza;
    private int zze;
    private gs<dc> zzf = hy.d();
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;
    private double zzj;

    static {
        dc dcVar = new dc();
        zzk = dcVar;
        gl.a(dc.class, dcVar);
    }

    private dc() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဌ��\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zza", "zze", db.zzb(), "zzf", dc.class, "zzg", "zzh", "zzi", "zzj"});
        } else if (i2 == 3) {
            return new dc();
        } else {
            if (i2 == 4) {
                return new cy(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zzk;
        }
    }
}
