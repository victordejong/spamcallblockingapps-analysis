package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cj.class */
public final class C13416cj extends AbstractC13526gl<C13416cj, C13412cf> implements AbstractC13557hp {
    private static final C13416cj zzg;
    private int zza;
    private int zze = 1;
    private AbstractC13533gs<C13404by> zzf = C13566hy.m12660d();

    static {
        C13416cj c13416cj = new C13416cj();
        zzg = c13416cj;
        AbstractC13526gl.m12763a(C13416cj.class, c13416cj);
    }

    private C13416cj() {
    }

    /* renamed from: a */
    public static C13412cf m12986a() {
        return zzg.m12759l();
    }

    /* renamed from: a */
    public static /* synthetic */ void m12985a(C13416cj c13416cj, C13404by c13404by) {
        c13404by.getClass();
        AbstractC13533gs<C13404by> abstractC13533gs = c13416cj.zzf;
        if (!abstractC13533gs.mo12750a()) {
            c13416cj.zzf = AbstractC13526gl.m12766a(abstractC13533gs);
        }
        c13416cj.zzf.add(c13404by);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zza", "zze", EnumC13415ci.zzb(), "zzf", C13404by.class});
            } else if (i2 == 3) {
                return new C13416cj();
            } else {
                if (i2 == 4) {
                    return new C13412cf(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
