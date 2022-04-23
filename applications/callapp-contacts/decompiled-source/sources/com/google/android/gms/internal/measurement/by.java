package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/by.class */
public final class by extends gl<by, bx> implements hp {
    private static final by zzg;
    private int zza;
    private String zze = "";
    private long zzf;

    static {
        by byVar = new by();
        zzg = byVar;
        gl.a(by.class, byVar);
    }

    private by() {
    }

    public static bx a() {
        return zzg.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(by byVar, long j) {
        byVar.zza |= 2;
        byVar.zzf = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(by byVar, String str) {
        str.getClass();
        byVar.zza |= 1;
        byVar.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new by();
        }
        if (i2 == 4) {
            return new bx(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
