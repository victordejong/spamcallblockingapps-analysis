package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cl.class */
public final class cl extends gl<cl, ck> implements hp {
    private static final cl zzh;
    public gr zza = he.d();
    public gr zze = he.d();
    public gs<bu> zzf = hy.d();
    public gs<cn> zzg = hy.d();

    static {
        cl clVar = new cl();
        zzh = clVar;
        gl.a(cl.class, clVar);
    }

    private cl() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cl clVar, int i) {
        clVar.g();
        clVar.zzf.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cl clVar, Iterable iterable) {
        gr grVar = clVar.zza;
        if (!grVar.a()) {
            clVar.zza = gl.a(grVar);
        }
        ey.a(iterable, clVar.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(cl clVar, int i) {
        clVar.h();
        clVar.zzg.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(cl clVar, Iterable iterable) {
        gr grVar = clVar.zze;
        if (!grVar.a()) {
            clVar.zze = gl.a(grVar);
        }
        ey.a(iterable, clVar.zze);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(cl clVar, Iterable iterable) {
        clVar.g();
        ey.a(iterable, clVar.zzf);
    }

    public static ck d() {
        return zzh.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(cl clVar, Iterable iterable) {
        clVar.h();
        ey.a(iterable, clVar.zzg);
    }

    public static cl e() {
        return zzh;
    }

    private final void g() {
        gs<bu> gsVar = this.zzf;
        if (!gsVar.a()) {
            this.zzf = gl.a(gsVar);
        }
    }

    private final void h() {
        gs<cn> gsVar = this.zzg;
        if (!gsVar.a()) {
            this.zzg = gl.a(gsVar);
        }
    }

    public final int a() {
        return this.zza.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzh, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zza", "zze", "zzf", bu.class, "zzg", cn.class});
        }
        if (i2 == 3) {
            return new cl();
        }
        if (i2 == 4) {
            return new ck(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzh;
    }

    public final int b() {
        return this.zzf.size();
    }

    public final int c() {
        return this.zzg.size();
    }
}
