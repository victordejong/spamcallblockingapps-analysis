package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bl.class */
public final class bl extends gl<bl, bk> implements hp {
    private static final bl zzg;
    private int zza;
    public String zze = "";
    public String zzf = "";

    static {
        bl blVar = new bl();
        zzg = blVar;
        gl.a(bl.class, blVar);
    }

    private bl() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new bl();
        }
        if (i2 == 4) {
            return new bk(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
