package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bw.class */
public final class bw extends gl<bw, bv> implements hp {
    private static final bw zzj;
    public int zza;
    public gs<ca> zze = hy.d();
    public String zzf = "";
    public long zzg;
    public long zzh;
    public int zzi;

    static {
        bw bwVar = new bw();
        zzj = bwVar;
        gl.a(bw.class, bwVar);
    }

    private bw() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bw bwVar, int i) {
        bwVar.e();
        bwVar.zze.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bw bwVar, int i, ca caVar) {
        caVar.getClass();
        bwVar.e();
        bwVar.zze.set(i, caVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bw bwVar, long j) {
        bwVar.zza |= 2;
        bwVar.zzg = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bw bwVar, ca caVar) {
        caVar.getClass();
        bwVar.e();
        bwVar.zze.add(caVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bw bwVar, Iterable iterable) {
        bwVar.e();
        ey.a(iterable, bwVar.zze);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bw bwVar, String str) {
        str.getClass();
        bwVar.zza |= 1;
        bwVar.zzf = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(bw bwVar, long j) {
        bwVar.zza |= 4;
        bwVar.zzh = j;
    }

    public static bv c() {
        return zzj.l();
    }

    private final void e() {
        gs<ca> gsVar = this.zze;
        if (!gsVar.a()) {
            this.zze = gl.a(gsVar);
        }
    }

    public final int a() {
        return this.zze.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zza", "zze", ca.class, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new bw();
        }
        if (i2 == 4) {
            return new bv(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzj;
    }

    public final boolean b() {
        return (this.zza & 2) != 0;
    }
}
