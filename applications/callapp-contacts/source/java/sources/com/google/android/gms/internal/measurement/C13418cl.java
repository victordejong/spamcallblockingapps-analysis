package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cl.class */
public final class C13418cl extends AbstractC13526gl<C13418cl, C13417ck> implements AbstractC13557hp {
    private static final C13418cl zzh;
    public AbstractC13532gr zza = C13546he.m12727d();
    public AbstractC13532gr zze = C13546he.m12727d();
    public AbstractC13533gs<C13400bu> zzf = C13566hy.m12660d();
    public AbstractC13533gs<C13420cn> zzg = C13566hy.m12660d();

    static {
        C13418cl c13418cl = new C13418cl();
        zzh = c13418cl;
        AbstractC13526gl.m12763a(C13418cl.class, c13418cl);
    }

    private C13418cl() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m12973a(C13418cl c13418cl, int i) {
        c13418cl.m12961g();
        c13418cl.zzf.remove(i);
    }

    /* renamed from: a */
    public static /* synthetic */ void m12972a(C13418cl c13418cl, Iterable iterable) {
        AbstractC13532gr abstractC13532gr = c13418cl.zza;
        if (!abstractC13532gr.mo12750a()) {
            c13418cl.zza = AbstractC13526gl.m12767a(abstractC13532gr);
        }
        AbstractC13485ey.m12887a(iterable, c13418cl.zza);
    }

    /* renamed from: b */
    public static /* synthetic */ void m12969b(C13418cl c13418cl, int i) {
        c13418cl.m12960h();
        c13418cl.zzg.remove(i);
    }

    /* renamed from: b */
    public static /* synthetic */ void m12968b(C13418cl c13418cl, Iterable iterable) {
        AbstractC13532gr abstractC13532gr = c13418cl.zze;
        if (!abstractC13532gr.mo12750a()) {
            c13418cl.zze = AbstractC13526gl.m12767a(abstractC13532gr);
        }
        AbstractC13485ey.m12887a(iterable, c13418cl.zze);
    }

    /* renamed from: c */
    public static /* synthetic */ void m12966c(C13418cl c13418cl, Iterable iterable) {
        c13418cl.m12961g();
        AbstractC13485ey.m12887a(iterable, c13418cl.zzf);
    }

    /* renamed from: d */
    public static C13417ck m12965d() {
        return zzh.m12759l();
    }

    /* renamed from: d */
    public static /* synthetic */ void m12964d(C13418cl c13418cl, Iterable iterable) {
        c13418cl.m12960h();
        AbstractC13485ey.m12887a(iterable, c13418cl.zzg);
    }

    /* renamed from: e */
    public static C13418cl m12963e() {
        return zzh;
    }

    /* renamed from: g */
    private final void m12961g() {
        AbstractC13533gs<C13400bu> abstractC13533gs = this.zzf;
        if (!abstractC13533gs.mo12750a()) {
            this.zzf = AbstractC13526gl.m12766a(abstractC13533gs);
        }
    }

    /* renamed from: h */
    private final void m12960h() {
        AbstractC13533gs<C13420cn> abstractC13533gs = this.zzg;
        if (!abstractC13533gs.mo12750a()) {
            this.zzg = AbstractC13526gl.m12766a(abstractC13533gs);
        }
    }

    /* renamed from: a */
    public final int m12975a() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzh, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zza", "zze", "zzf", C13400bu.class, "zzg", C13420cn.class});
            }
            if (i2 == 3) {
                return new C13418cl();
            }
            if (i2 == 4) {
                return new C13417ck(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: b */
    public final int m12971b() {
        return this.zzf.size();
    }

    /* renamed from: c */
    public final int m12967c() {
        return this.zzg.size();
    }
}
