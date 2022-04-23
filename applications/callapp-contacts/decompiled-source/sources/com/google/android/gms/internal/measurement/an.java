package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/an.class */
public final class an extends gl<an, am> implements hp {
    private static final an zzj;
    private int zza;
    public int zze;
    public gs<az> zzf = hy.d();
    public gs<ap> zzg = hy.d();
    private boolean zzh;
    private boolean zzi;

    static {
        an anVar = new an();
        zzj = anVar;
        gl.a(an.class, anVar);
    }

    private an() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(an anVar, int i, ap apVar) {
        apVar.getClass();
        gs<ap> gsVar = anVar.zzg;
        if (!gsVar.a()) {
            anVar.zzg = gl.a(gsVar);
        }
        anVar.zzg.set(i, apVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(an anVar, int i, az azVar) {
        azVar.getClass();
        gs<az> gsVar = anVar.zzf;
        if (!gsVar.a()) {
            anVar.zzf = gl.a(gsVar);
        }
        anVar.zzf.set(i, azVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zza", "zze", "zzf", az.class, "zzg", ap.class, "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new an();
        }
        if (i2 == 4) {
            return new am(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzj;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }
}
