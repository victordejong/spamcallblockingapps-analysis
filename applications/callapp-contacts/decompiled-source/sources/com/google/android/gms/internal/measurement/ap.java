package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ap.class */
public final class ap extends gl<ap, ao> implements hp {
    private static final ap zzm;
    public int zza;
    public int zze;
    public String zzf = "";
    public gs<ar> zzg = hy.d();
    private boolean zzh;
    private ax zzi;
    public boolean zzj;
    public boolean zzk;
    public boolean zzl;

    static {
        ap apVar = new ap();
        zzm = apVar;
        gl.a(ap.class, apVar);
    }

    private ap() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ap apVar, int i, ar arVar) {
        arVar.getClass();
        gs<ar> gsVar = apVar.zzg;
        if (!gsVar.a()) {
            apVar.zzg = gl.a(gsVar);
        }
        apVar.zzg.set(i, arVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ap apVar, String str) {
        apVar.zza |= 2;
        apVar.zzf = str;
    }

    public static ao e() {
        return zzm.l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzm, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001င��\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zza", "zze", "zzf", "zzg", ar.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new ap();
        }
        if (i2 == 4) {
            return new ao(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzm;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final int b() {
        return this.zzg.size();
    }

    public final boolean c() {
        return (this.zza & 8) != 0;
    }

    public final ax d() {
        ax axVar = this.zzi;
        ax axVar2 = axVar;
        if (axVar == null) {
            axVar2 = ax.g();
        }
        return axVar2;
    }
}
