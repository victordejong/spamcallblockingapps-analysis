package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/az.class */
public final class az extends gl<az, ay> implements hp {
    private static final az zzk;
    public int zza;
    public int zze;
    public String zzf = "";
    private ar zzg;
    public boolean zzh;
    public boolean zzi;
    public boolean zzj;

    static {
        az azVar = new az();
        zzk = azVar;
        gl.a(az.class, azVar);
    }

    private az() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(az azVar, String str) {
        azVar.zza |= 2;
        azVar.zzf = str;
    }

    public static ay c() {
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
            return a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001င��\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new az();
        }
        if (i2 == 4) {
            return new ay(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzk;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final ar b() {
        ar arVar = this.zzg;
        ar arVar2 = arVar;
        if (arVar == null) {
            arVar2 = ar.f();
        }
        return arVar2;
    }
}
