package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bj.class */
public final class C13389bj extends AbstractC13526gl<C13389bj, C13388bi> implements AbstractC13557hp {
    private static final C13389bj zzn;
    public int zza;
    public long zze;
    private int zzg;
    public boolean zzl;
    public String zzf = "";
    public AbstractC13533gs<C13391bl> zzh = C13566hy.m12660d();
    AbstractC13533gs<C13387bh> zzi = C13566hy.m12660d();
    AbstractC13533gs<C13366an> zzj = C13566hy.m12660d();
    private String zzk = "";
    private AbstractC13533gs<C13430cx> zzm = C13566hy.m12660d();

    static {
        C13389bj c13389bj = new C13389bj();
        zzn = c13389bj;
        AbstractC13526gl.m12763a(C13389bj.class, c13389bj);
    }

    private C13389bj() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13209a(C13389bj c13389bj, int i, C13387bh c13387bh) {
        c13387bh.getClass();
        AbstractC13533gs<C13387bh> abstractC13533gs = c13389bj.zzi;
        if (!abstractC13533gs.mo12750a()) {
            c13389bj.zzi = AbstractC13526gl.m12766a(abstractC13533gs);
        }
        c13389bj.zzi.set(i, c13387bh);
    }

    /* renamed from: b */
    public static C13388bi m13208b() {
        return zzn.m12759l();
    }

    /* renamed from: c */
    public static C13389bj m13207c() {
        return zzn;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzn, "\u0001\t��\u0001\u0001\t\t��\u0004��\u0001ဂ��\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", C13391bl.class, "zzi", C13387bh.class, "zzj", C13366an.class, "zzk", "zzl", "zzm", C13430cx.class});
            }
            if (i2 == 3) {
                return new C13389bj();
            }
            if (i2 == 4) {
                return new C13388bi(null);
            }
            if (i2 == 5) {
                return zzn;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13211a() {
        return (this.zza & 1) != 0;
    }
}
