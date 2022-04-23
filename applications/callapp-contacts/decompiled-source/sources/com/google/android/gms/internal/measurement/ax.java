package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ax.class */
public final class ax extends gl<ax, at> implements hp {
    private static final ax zzj;
    private int zza;
    private int zze;
    public boolean zzf;
    public String zzg = "";
    public String zzh = "";
    public String zzi = "";

    static {
        ax axVar = new ax();
        zzj = axVar;
        gl.a(ax.class, axVar);
    }

    private ax() {
    }

    public static ax g() {
        return zzj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zza", "zze", aw.zzb(), "zzf", "zzg", "zzh", "zzi"});
        } else if (i2 == 3) {
            return new ax();
        } else {
            if (i2 == 4) {
                return new at(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zzj;
        }
    }

    public final boolean a() {
        return (this.zza & 1) != 0;
    }

    public final aw b() {
        aw zza = aw.zza(this.zze);
        aw awVar = zza;
        if (zza == null) {
            awVar = aw.UNKNOWN_COMPARISON_TYPE;
        }
        return awVar;
    }

    public final boolean c() {
        return (this.zza & 2) != 0;
    }

    public final boolean d() {
        return (this.zza & 4) != 0;
    }

    public final boolean e() {
        return (this.zza & 8) != 0;
    }

    public final boolean f() {
        return (this.zza & 16) != 0;
    }
}
