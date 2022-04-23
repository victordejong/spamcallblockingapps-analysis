package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ar.class */
public final class ar extends gl<ar, aq> implements hp {
    private static final ar zzi;
    public int zza;
    private be zze;
    private ax zzf;
    public boolean zzg;
    public String zzh = "";

    static {
        ar arVar = new ar();
        zzi = arVar;
        gl.a(ar.class, arVar);
    }

    private ar() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ar arVar, String str) {
        arVar.zza |= 8;
        arVar.zzh = str;
    }

    public static ar f() {
        return zzi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new ar();
        }
        if (i2 == 4) {
            return new aq(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final be b() {
        be beVar = this.zze;
        be beVar2 = beVar;
        if (beVar == null) {
            beVar2 = be.e();
        }
        return beVar2;
    }

    public final boolean c() {
        return (this.zza & 2) != 0;
    }

    public final ax d() {
        ax axVar = this.zzf;
        ax axVar2 = axVar;
        if (axVar == null) {
            axVar2 = ax.g();
        }
        return axVar2;
    }

    public final boolean e() {
        return (this.zza & 4) != 0;
    }
}
