package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.br */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/br.class */
public final class C13397br extends AbstractC13526gl<C13397br, C13396bq> implements AbstractC13557hp {
    private static final C13397br zzi;
    public int zza;
    public int zze;
    private C13418cl zzf;
    public C13418cl zzg;
    public boolean zzh;

    static {
        C13397br c13397br = new C13397br();
        zzi = c13397br;
        AbstractC13526gl.m12763a(C13397br.class, c13397br);
    }

    private C13397br() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13199a(C13397br c13397br, int i) {
        c13397br.zza |= 1;
        c13397br.zze = i;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13198a(C13397br c13397br, C13418cl c13418cl) {
        c13418cl.getClass();
        c13397br.zzf = c13418cl;
        c13397br.zza |= 2;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13197a(C13397br c13397br, boolean z) {
        c13397br.zza |= 8;
        c13397br.zzh = z;
    }

    /* renamed from: b */
    public static C13396bq m13196b() {
        return zzi.m12759l();
    }

    /* renamed from: b */
    public static /* synthetic */ void m13195b(C13397br c13397br, C13418cl c13418cl) {
        c13397br.zzg = c13418cl;
        c13397br.zza |= 4;
    }

    /* renamed from: a */
    public final C13418cl m13200a() {
        C13418cl c13418cl = this.zzf;
        C13418cl c13418cl2 = c13418cl;
        if (c13418cl == null) {
            c13418cl2 = C13418cl.m12963e();
        }
        return c13418cl2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new C13397br();
            }
            if (i2 == 4) {
                return new C13396bq(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
