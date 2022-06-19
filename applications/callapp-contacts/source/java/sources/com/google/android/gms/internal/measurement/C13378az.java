package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.az */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/az.class */
public final class C13378az extends AbstractC13526gl<C13378az, C13377ay> implements AbstractC13557hp {
    private static final C13378az zzk;
    public int zza;
    public int zze;
    public String zzf = "";
    private C13370ar zzg;
    public boolean zzh;
    public boolean zzi;
    public boolean zzj;

    static {
        C13378az c13378az = new C13378az();
        zzk = c13378az;
        AbstractC13526gl.m12763a(C13378az.class, c13378az);
    }

    private C13378az() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13234a(C13378az c13378az, String str) {
        c13378az.zza |= 2;
        c13378az.zzf = str;
    }

    /* renamed from: c */
    public static C13377ay m13232c() {
        return zzk.m12759l();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001င��\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new C13378az();
            }
            if (i2 == 4) {
                return new C13377ay(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13235a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final C13370ar m13233b() {
        C13370ar c13370ar = this.zzg;
        C13370ar c13370ar2 = c13370ar;
        if (c13370ar == null) {
            c13370ar2 = C13370ar.m13252f();
        }
        return c13370ar2;
    }
}
