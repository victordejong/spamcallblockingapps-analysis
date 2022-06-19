package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cc.class */
public final class C13409cc extends AbstractC13526gl<C13409cc, C13408cb> implements AbstractC13557hp {
    private static final C13409cc zze;
    public AbstractC13533gs<C13411ce> zza = C13566hy.m12660d();

    static {
        C13409cc c13409cc = new C13409cc();
        zze = c13409cc;
        AbstractC13526gl.m12763a(C13409cc.class, c13409cc);
    }

    private C13409cc() {
    }

    /* renamed from: a */
    public static C13408cb m13119a() {
        return zze.m12759l();
    }

    /* renamed from: a */
    public static /* synthetic */ void m13118a(C13409cc c13409cc, C13411ce c13411ce) {
        c13411ce.getClass();
        AbstractC13533gs<C13411ce> abstractC13533gs = c13409cc.zza;
        if (!abstractC13533gs.mo12750a()) {
            c13409cc.zza = AbstractC13526gl.m12766a(abstractC13533gs);
        }
        c13409cc.zza.add(c13411ce);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", C13411ce.class});
            }
            if (i2 == 3) {
                return new C13409cc();
            }
            if (i2 == 4) {
                return new C13408cb(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
