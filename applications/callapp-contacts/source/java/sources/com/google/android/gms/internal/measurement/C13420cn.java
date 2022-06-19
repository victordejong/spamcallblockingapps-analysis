package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cn.class */
public final class C13420cn extends AbstractC13526gl<C13420cn, C13419cm> implements AbstractC13557hp {
    private static final C13420cn zzg;
    private int zza;
    public int zze;
    public AbstractC13532gr zzf = C13546he.m12727d();

    static {
        C13420cn c13420cn = new C13420cn();
        zzg = c13420cn;
        AbstractC13526gl.m12763a(C13420cn.class, c13420cn);
    }

    private C13420cn() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m12956a(C13420cn c13420cn, int i) {
        c13420cn.zza |= 1;
        c13420cn.zze = i;
    }

    /* renamed from: a */
    public static /* synthetic */ void m12955a(C13420cn c13420cn, Iterable iterable) {
        AbstractC13532gr abstractC13532gr = c13420cn.zzf;
        if (!abstractC13532gr.mo12750a()) {
            c13420cn.zzf = AbstractC13526gl.m12767a(abstractC13532gr);
        }
        AbstractC13485ey.m12887a(iterable, c13420cn.zzf);
    }

    /* renamed from: c */
    public static C13419cm m12953c() {
        return zzg.m12759l();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C13420cn();
            }
            if (i2 == 4) {
                return new C13419cm(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m12957a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final int m12954b() {
        return this.zzf.size();
    }
}
