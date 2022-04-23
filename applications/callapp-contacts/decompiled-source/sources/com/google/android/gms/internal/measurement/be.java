package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/be.class */
public final class be extends gl<be, ba> implements hp {
    private static final be zzi;
    public int zza;
    private int zze;
    public boolean zzg;
    public String zzf = "";
    public gs<String> zzh = hy.d();

    static {
        be beVar = new be();
        zzi = beVar;
        gl.a(be.class, beVar);
    }

    private be() {
    }

    public static be e() {
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
            return a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zza", "zze", bd.zzb(), "zzf", "zzg", "zzh"});
        } else if (i2 == 3) {
            return new be();
        } else {
            if (i2 == 4) {
                return new ba(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zzi;
        }
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final bd b() {
        bd zza = bd.zza(this.zze);
        bd bdVar = zza;
        if (zza == null) {
            bdVar = bd.UNKNOWN_MATCH_TYPE;
        }
        return bdVar;
    }

    public final boolean c() {
        return (this.zza & 2) != 0;
    }

    public final int d() {
        return this.zzh.size();
    }
}
