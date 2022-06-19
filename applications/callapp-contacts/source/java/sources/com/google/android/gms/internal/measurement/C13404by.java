package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.by */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/by.class */
public final class C13404by extends AbstractC13526gl<C13404by, C13403bx> implements AbstractC13557hp {
    private static final C13404by zzg;
    private int zza;
    private String zze = "";
    private long zzf;

    static {
        C13404by c13404by = new C13404by();
        zzg = c13404by;
        AbstractC13526gl.m12763a(C13404by.class, c13404by);
    }

    private C13404by() {
    }

    /* renamed from: a */
    public static C13403bx m13153a() {
        return zzg.m12759l();
    }

    /* renamed from: a */
    public static /* synthetic */ void m13152a(C13404by c13404by, long j) {
        c13404by.zza |= 2;
        c13404by.zzf = j;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13151a(C13404by c13404by, String str) {
        str.getClass();
        c13404by.zza |= 1;
        c13404by.zze = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C13404by();
            }
            if (i2 == 4) {
                return new C13403bx(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
