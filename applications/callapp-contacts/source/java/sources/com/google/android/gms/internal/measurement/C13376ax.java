package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ax */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ax.class */
public final class C13376ax extends AbstractC13526gl<C13376ax, C13372at> implements AbstractC13557hp {
    private static final C13376ax zzj;
    private int zza;
    private int zze;
    public boolean zzf;
    public String zzg = "";
    public String zzh = "";
    public String zzi = "";

    static {
        C13376ax c13376ax = new C13376ax();
        zzj = c13376ax;
        AbstractC13526gl.m12763a(C13376ax.class, c13376ax);
    }

    private C13376ax() {
    }

    /* renamed from: g */
    public static C13376ax m13238g() {
        return zzj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zza", "zze", EnumC13375aw.zzb(), "zzf", "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new C13376ax();
            } else {
                if (i2 == 4) {
                    return new C13372at(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13244a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final EnumC13375aw m13243b() {
        EnumC13375aw zza = EnumC13375aw.zza(this.zze);
        EnumC13375aw enumC13375aw = zza;
        if (zza == null) {
            enumC13375aw = EnumC13375aw.UNKNOWN_COMPARISON_TYPE;
        }
        return enumC13375aw;
    }

    /* renamed from: c */
    public final boolean m13242c() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: d */
    public final boolean m13241d() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: e */
    public final boolean m13240e() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: f */
    public final boolean m13239f() {
        return (this.zza & 16) != 0;
    }
}
