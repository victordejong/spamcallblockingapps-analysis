package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bj.class */
public final class bj extends gl<bj, bi> implements hp {
    private static final bj zzn;
    public int zza;
    public long zze;
    private int zzg;
    public boolean zzl;
    public String zzf = "";
    public gs<bl> zzh = hy.d();
    gs<bh> zzi = hy.d();
    gs<an> zzj = hy.d();
    private String zzk = "";
    private gs<cx> zzm = hy.d();

    static {
        bj bjVar = new bj();
        zzn = bjVar;
        gl.a(bj.class, bjVar);
    }

    private bj() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bj bjVar, int i, bh bhVar) {
        bhVar.getClass();
        gs<bh> gsVar = bjVar.zzi;
        if (!gsVar.a()) {
            bjVar.zzi = gl.a(gsVar);
        }
        bjVar.zzi.set(i, bhVar);
    }

    public static bi b() {
        return zzn.l();
    }

    public static bj c() {
        return zzn;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzn, "\u0001\t��\u0001\u0001\t\t��\u0004��\u0001ဂ��\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", bl.class, "zzi", bh.class, "zzj", an.class, "zzk", "zzl", "zzm", cx.class});
        }
        if (i2 == 3) {
            return new bj();
        }
        if (i2 == 4) {
            return new bi(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzn;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }
}
