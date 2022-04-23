package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cn.class */
public final class cn extends gl<cn, cm> implements hp {
    private static final cn zzg;
    private int zza;
    public int zze;
    public gr zzf = he.d();

    static {
        cn cnVar = new cn();
        zzg = cnVar;
        gl.a(cn.class, cnVar);
    }

    private cn() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cn cnVar, int i) {
        cnVar.zza |= 1;
        cnVar.zze = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cn cnVar, Iterable iterable) {
        gr grVar = cnVar.zzf;
        if (!grVar.a()) {
            cnVar.zzf = gl.a(grVar);
        }
        ey.a(iterable, cnVar.zzf);
    }

    public static cm c() {
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
            return a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new cn();
        }
        if (i2 == 4) {
            return new cm(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final int b() {
        return this.zzf.size();
    }
}
