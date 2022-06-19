package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ap */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ap.class */
public final class C13368ap extends AbstractC13526gl<C13368ap, C13367ao> implements AbstractC13557hp {
    private static final C13368ap zzm;
    public int zza;
    public int zze;
    public String zzf = "";
    public AbstractC13533gs<C13370ar> zzg = C13566hy.m12660d();
    private boolean zzh;
    private C13376ax zzi;
    public boolean zzj;
    public boolean zzk;
    public boolean zzl;

    static {
        C13368ap c13368ap = new C13368ap();
        zzm = c13368ap;
        AbstractC13526gl.m12763a(C13368ap.class, c13368ap);
    }

    private C13368ap() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13266a(C13368ap c13368ap, int i, C13370ar c13370ar) {
        c13370ar.getClass();
        AbstractC13533gs<C13370ar> abstractC13533gs = c13368ap.zzg;
        if (!abstractC13533gs.mo12750a()) {
            c13368ap.zzg = AbstractC13526gl.m12766a(abstractC13533gs);
        }
        c13368ap.zzg.set(i, c13370ar);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13265a(C13368ap c13368ap, String str) {
        c13368ap.zza |= 2;
        c13368ap.zzf = str;
    }

    /* renamed from: e */
    public static C13367ao m13261e() {
        return zzm.m12759l();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzm, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001င��\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zza", "zze", "zzf", "zzg", C13370ar.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
            }
            if (i2 == 3) {
                return new C13368ap();
            }
            if (i2 == 4) {
                return new C13367ao(null);
            }
            if (i2 == 5) {
                return zzm;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13267a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final int m13264b() {
        return this.zzg.size();
    }

    /* renamed from: c */
    public final boolean m13263c() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: d */
    public final C13376ax m13262d() {
        C13376ax c13376ax = this.zzi;
        C13376ax c13376ax2 = c13376ax;
        if (c13376ax == null) {
            c13376ax2 = C13376ax.m13238g();
        }
        return c13376ax2;
    }
}
