package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ar */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ar.class */
public final class C13370ar extends AbstractC13526gl<C13370ar, C13369aq> implements AbstractC13557hp {
    private static final C13370ar zzi;
    public int zza;
    private C13384be zze;
    private C13376ax zzf;
    public boolean zzg;
    public String zzh = "";

    static {
        C13370ar c13370ar = new C13370ar();
        zzi = c13370ar;
        AbstractC13526gl.m12763a(C13370ar.class, c13370ar);
    }

    private C13370ar() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13257a(C13370ar c13370ar, String str) {
        c13370ar.zza |= 8;
        c13370ar.zzh = str;
    }

    /* renamed from: f */
    public static C13370ar m13252f() {
        return zzi;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new C13370ar();
            }
            if (i2 == 4) {
                return new C13369aq(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13258a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final C13384be m13256b() {
        C13384be c13384be = this.zze;
        C13384be c13384be2 = c13384be;
        if (c13384be == null) {
            c13384be2 = C13384be.m13226e();
        }
        return c13384be2;
    }

    /* renamed from: c */
    public final boolean m13255c() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: d */
    public final C13376ax m13254d() {
        C13376ax c13376ax = this.zzf;
        C13376ax c13376ax2 = c13376ax;
        if (c13376ax == null) {
            c13376ax2 = C13376ax.m13238g();
        }
        return c13376ax2;
    }

    /* renamed from: e */
    public final boolean m13253e() {
        return (this.zza & 4) != 0;
    }
}
