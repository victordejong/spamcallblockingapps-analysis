package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.an */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/an.class */
public final class C13366an extends AbstractC13526gl<C13366an, C13365am> implements AbstractC13557hp {
    private static final C13366an zzj;
    private int zza;
    public int zze;
    public AbstractC13533gs<C13378az> zzf = C13566hy.m12660d();
    public AbstractC13533gs<C13368ap> zzg = C13566hy.m12660d();
    private boolean zzh;
    private boolean zzi;

    static {
        C13366an c13366an = new C13366an();
        zzj = c13366an;
        AbstractC13526gl.m12763a(C13366an.class, c13366an);
    }

    private C13366an() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13275a(C13366an c13366an, int i, C13368ap c13368ap) {
        c13368ap.getClass();
        AbstractC13533gs<C13368ap> abstractC13533gs = c13366an.zzg;
        if (!abstractC13533gs.mo12750a()) {
            c13366an.zzg = AbstractC13526gl.m12766a(abstractC13533gs);
        }
        c13366an.zzg.set(i, c13368ap);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13274a(C13366an c13366an, int i, C13378az c13378az) {
        c13378az.getClass();
        AbstractC13533gs<C13378az> abstractC13533gs = c13366an.zzf;
        if (!abstractC13533gs.mo12750a()) {
            c13366an.zzf = AbstractC13526gl.m12766a(abstractC13533gs);
        }
        c13366an.zzf.set(i, c13378az);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zza", "zze", "zzf", C13378az.class, "zzg", C13368ap.class, "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new C13366an();
            }
            if (i2 == 4) {
                return new C13365am(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13276a() {
        return (this.zza & 1) != 0;
    }
}
