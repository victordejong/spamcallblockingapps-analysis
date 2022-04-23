package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ca.class */
public final class ca extends gl<ca, bz> implements hp {
    private static final ca zzk;
    public int zza;
    public long zzg;
    public float zzh;
    public double zzi;
    public String zze = "";
    public String zzf = "";
    public gs<ca> zzj = hy.d();

    static {
        ca caVar = new ca();
        zzk = caVar;
        gl.a(ca.class, caVar);
    }

    private ca() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ca caVar) {
        caVar.zza &= -3;
        caVar.zzf = zzk.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ca caVar, double d2) {
        caVar.zza |= 16;
        caVar.zzi = d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ca caVar, long j) {
        caVar.zza |= 4;
        caVar.zzg = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ca caVar, ca caVar2) {
        caVar2.getClass();
        caVar.g();
        caVar.zzj.add(caVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ca caVar, Iterable iterable) {
        caVar.g();
        ey.a(iterable, caVar.zzj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ca caVar, String str) {
        str.getClass();
        caVar.zza |= 1;
        caVar.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ca caVar) {
        caVar.zza &= -5;
        caVar.zzg = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ca caVar, String str) {
        str.getClass();
        caVar.zza |= 2;
        caVar.zzf = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ca caVar) {
        caVar.zza &= -17;
        caVar.zzi = 0.0d;
    }

    public static bz e() {
        return zzk.l();
    }

    private final void g() {
        gs<ca> gsVar = this.zzj;
        if (!gsVar.a()) {
            this.zzj = gl.a(gsVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", ca.class});
        }
        if (i2 == 3) {
            return new ca();
        }
        if (i2 == 4) {
            return new bz(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzk;
    }

    public final boolean a() {
        return (this.zza & 2) != 0;
    }

    public final boolean b() {
        return (this.zza & 4) != 0;
    }

    public final boolean c() {
        return (this.zza & 16) != 0;
    }

    public final int d() {
        return this.zzj.size();
    }
}
