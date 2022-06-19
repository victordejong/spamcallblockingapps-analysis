package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ca */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ca.class */
public final class C13407ca extends AbstractC13526gl<C13407ca, C13405bz> implements AbstractC13557hp {
    private static final C13407ca zzk;
    public int zza;
    public long zzg;
    public float zzh;
    public double zzi;
    public String zze = "";
    public String zzf = "";
    public AbstractC13533gs<C13407ca> zzj = C13566hy.m12660d();

    static {
        C13407ca c13407ca = new C13407ca();
        zzk = c13407ca;
        AbstractC13526gl.m12763a(C13407ca.class, c13407ca);
    }

    private C13407ca() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13137a(C13407ca c13407ca) {
        c13407ca.zza &= -3;
        c13407ca.zzf = zzk.zzf;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13136a(C13407ca c13407ca, double d) {
        c13407ca.zza |= 16;
        c13407ca.zzi = d;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13135a(C13407ca c13407ca, long j) {
        c13407ca.zza |= 4;
        c13407ca.zzg = j;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13134a(C13407ca c13407ca, C13407ca c13407ca2) {
        c13407ca2.getClass();
        c13407ca.m13122g();
        c13407ca.zzj.add(c13407ca2);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13133a(C13407ca c13407ca, Iterable iterable) {
        c13407ca.m13122g();
        AbstractC13485ey.m12887a(iterable, c13407ca.zzj);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13132a(C13407ca c13407ca, String str) {
        str.getClass();
        c13407ca.zza |= 1;
        c13407ca.zze = str;
    }

    /* renamed from: b */
    public static /* synthetic */ void m13130b(C13407ca c13407ca) {
        c13407ca.zza &= -5;
        c13407ca.zzg = 0L;
    }

    /* renamed from: b */
    public static /* synthetic */ void m13129b(C13407ca c13407ca, String str) {
        str.getClass();
        c13407ca.zza |= 2;
        c13407ca.zzf = str;
    }

    /* renamed from: c */
    public static /* synthetic */ void m13127c(C13407ca c13407ca) {
        c13407ca.zza &= -17;
        c13407ca.zzi = 0.0d;
    }

    /* renamed from: e */
    public static C13405bz m13124e() {
        return zzk.m12759l();
    }

    /* renamed from: g */
    private final void m13122g() {
        AbstractC13533gs<C13407ca> abstractC13533gs = this.zzj;
        if (!abstractC13533gs.mo12750a()) {
            this.zzj = AbstractC13526gl.m12766a(abstractC13533gs);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", C13407ca.class});
            }
            if (i2 == 3) {
                return new C13407ca();
            }
            if (i2 == 4) {
                return new C13405bz(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13138a() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: b */
    public final boolean m13131b() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: c */
    public final boolean m13128c() {
        return (this.zza & 16) != 0;
    }

    /* renamed from: d */
    public final int m13126d() {
        return this.zzj.size();
    }
}
