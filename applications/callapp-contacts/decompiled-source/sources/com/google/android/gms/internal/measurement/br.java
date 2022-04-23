package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/br.class */
public final class br extends gl<br, bq> implements hp {
    private static final br zzi;
    public int zza;
    public int zze;
    private cl zzf;
    public cl zzg;
    public boolean zzh;

    static {
        br brVar = new br();
        zzi = brVar;
        gl.a(br.class, brVar);
    }

    private br() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(br brVar, int i) {
        brVar.zza |= 1;
        brVar.zze = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(br brVar, cl clVar) {
        clVar.getClass();
        brVar.zzf = clVar;
        brVar.zza |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(br brVar, boolean z) {
        brVar.zza |= 8;
        brVar.zzh = z;
    }

    public static bq b() {
        return zzi.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(br brVar, cl clVar) {
        brVar.zzg = clVar;
        brVar.zza |= 4;
    }

    public final cl a() {
        cl clVar = this.zzf;
        cl clVar2 = clVar;
        if (clVar == null) {
            clVar2 = cl.e();
        }
        return clVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new br();
        }
        if (i2 == 4) {
            return new bq(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }
}
