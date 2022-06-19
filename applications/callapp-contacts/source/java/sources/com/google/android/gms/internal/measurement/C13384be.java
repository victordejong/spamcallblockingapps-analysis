package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.be */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/be.class */
public final class C13384be extends AbstractC13526gl<C13384be, C13380ba> implements AbstractC13557hp {
    private static final C13384be zzi;
    public int zza;
    private int zze;
    public boolean zzg;
    public String zzf = "";
    public AbstractC13533gs<String> zzh = C13566hy.m12660d();

    static {
        C13384be c13384be = new C13384be();
        zzi = c13384be;
        AbstractC13526gl.m12763a(C13384be.class, c13384be);
    }

    private C13384be() {
    }

    /* renamed from: e */
    public static C13384be m13226e() {
        return zzi;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zza", "zze", EnumC13383bd.zzb(), "zzf", "zzg", "zzh"});
            } else if (i2 == 3) {
                return new C13384be();
            } else {
                if (i2 == 4) {
                    return new C13380ba(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13230a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final EnumC13383bd m13229b() {
        EnumC13383bd zza = EnumC13383bd.zza(this.zze);
        EnumC13383bd enumC13383bd = zza;
        if (zza == null) {
            enumC13383bd = EnumC13383bd.UNKNOWN_MATCH_TYPE;
        }
        return enumC13383bd;
    }

    /* renamed from: c */
    public final boolean m13228c() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: d */
    public final int m13227d() {
        return this.zzh.size();
    }
}
