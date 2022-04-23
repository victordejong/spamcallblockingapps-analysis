package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cp.class */
public final class cp extends gl<cp, co> implements hp {
    private static final cp zzk;
    public int zza;
    public long zze;
    public String zzf = "";
    public String zzg = "";
    public long zzh;
    private float zzi;
    public double zzj;

    static {
        cp cpVar = new cp();
        zzk = cpVar;
        gl.a(cp.class, cpVar);
    }

    private cp() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cp cpVar) {
        cpVar.zza &= -5;
        cpVar.zzg = zzk.zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cp cpVar, double d2) {
        cpVar.zza |= 32;
        cpVar.zzj = d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cp cpVar, long j) {
        cpVar.zza |= 1;
        cpVar.zze = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cp cpVar, String str) {
        str.getClass();
        cpVar.zza |= 2;
        cpVar.zzf = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(cp cpVar) {
        cpVar.zza &= -9;
        cpVar.zzh = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(cp cpVar, long j) {
        cpVar.zza |= 8;
        cpVar.zzh = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(cp cpVar, String str) {
        str.getClass();
        cpVar.zza |= 4;
        cpVar.zzg = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(cp cpVar) {
        cpVar.zza &= -33;
        cpVar.zzj = 0.0d;
    }

    public static co d() {
        return zzk.l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new cp();
        }
        if (i2 == 4) {
            return new co(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzk;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final boolean b() {
        return (this.zza & 8) != 0;
    }

    public final boolean c() {
        return (this.zza & 32) != 0;
    }
}
