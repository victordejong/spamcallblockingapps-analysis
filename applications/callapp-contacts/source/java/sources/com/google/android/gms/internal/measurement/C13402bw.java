package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bw.class */
public final class C13402bw extends AbstractC13526gl<C13402bw, C13401bv> implements AbstractC13557hp {
    private static final C13402bw zzj;
    public int zza;
    public AbstractC13533gs<C13407ca> zze = C13566hy.m12660d();
    public String zzf = "";
    public long zzg;
    public long zzh;
    public int zzi;

    static {
        C13402bw c13402bw = new C13402bw();
        zzj = c13402bw;
        AbstractC13526gl.m12763a(C13402bw.class, c13402bw);
    }

    private C13402bw() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13166a(C13402bw c13402bw, int i) {
        c13402bw.m13156e();
        c13402bw.zze.remove(i);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13165a(C13402bw c13402bw, int i, C13407ca c13407ca) {
        c13407ca.getClass();
        c13402bw.m13156e();
        c13402bw.zze.set(i, c13407ca);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13164a(C13402bw c13402bw, long j) {
        c13402bw.zza |= 2;
        c13402bw.zzg = j;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13163a(C13402bw c13402bw, C13407ca c13407ca) {
        c13407ca.getClass();
        c13402bw.m13156e();
        c13402bw.zze.add(c13407ca);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13162a(C13402bw c13402bw, Iterable iterable) {
        c13402bw.m13156e();
        AbstractC13485ey.m12887a(iterable, c13402bw.zze);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13161a(C13402bw c13402bw, String str) {
        str.getClass();
        c13402bw.zza |= 1;
        c13402bw.zzf = str;
    }

    /* renamed from: b */
    public static /* synthetic */ void m13159b(C13402bw c13402bw, long j) {
        c13402bw.zza |= 4;
        c13402bw.zzh = j;
    }

    /* renamed from: c */
    public static C13401bv m13158c() {
        return zzj.m12759l();
    }

    /* renamed from: e */
    private final void m13156e() {
        AbstractC13533gs<C13407ca> abstractC13533gs = this.zze;
        if (!abstractC13533gs.mo12750a()) {
            this.zze = AbstractC13526gl.m12766a(abstractC13533gs);
        }
    }

    /* renamed from: a */
    public final int m13168a() {
        return this.zze.size();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zza", "zze", C13407ca.class, "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new C13402bw();
            }
            if (i2 == 4) {
                return new C13401bv(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: b */
    public final boolean m13160b() {
        return (this.zza & 2) != 0;
    }
}
