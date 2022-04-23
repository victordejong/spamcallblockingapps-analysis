package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bu.class */
public final class bu extends gl<bu, bs> implements hp {
    private static final bu zzg;
    private int zza;
    public int zze;
    public long zzf;

    static {
        bu buVar = new bu();
        zzg = buVar;
        gl.a(bu.class, buVar);
    }

    private bu() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bu buVar, int i) {
        buVar.zza |= 1;
        buVar.zze = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bu buVar, long j) {
        buVar.zza |= 2;
        buVar.zzf = j;
    }

    public static bs c() {
        return zzg.l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new bu();
        }
        if (i2 == 4) {
            return new bs(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final boolean b() {
        return (this.zza & 2) != 0;
    }
}
