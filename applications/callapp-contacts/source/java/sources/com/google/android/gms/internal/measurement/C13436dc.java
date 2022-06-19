package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.dc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dc.class */
public final class C13436dc extends AbstractC13526gl<C13436dc, C13431cy> implements AbstractC13557hp {
    private static final C13436dc zzk;
    private int zza;
    private int zze;
    private AbstractC13533gs<C13436dc> zzf = C13566hy.m12660d();
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;
    private double zzj;

    static {
        C13436dc c13436dc = new C13436dc();
        zzk = c13436dc;
        AbstractC13526gl.m12763a(C13436dc.class, c13436dc);
    }

    private C13436dc() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဌ��\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zza", "zze", EnumC13435db.zzb(), "zzf", C13436dc.class, "zzg", "zzh", "zzi", "zzj"});
            } else if (i2 == 3) {
                return new C13436dc();
            } else {
                if (i2 == 4) {
                    return new C13431cy(null);
                }
                if (i2 == 5) {
                    return zzk;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
