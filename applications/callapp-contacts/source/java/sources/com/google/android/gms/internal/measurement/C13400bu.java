package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bu.class */
public final class C13400bu extends AbstractC13526gl<C13400bu, C13398bs> implements AbstractC13557hp {
    private static final C13400bu zzg;
    private int zza;
    public int zze;
    public long zzf;

    static {
        C13400bu c13400bu = new C13400bu();
        zzg = c13400bu;
        AbstractC13526gl.m12763a(C13400bu.class, c13400bu);
    }

    private C13400bu() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13190a(C13400bu c13400bu, int i) {
        c13400bu.zza |= 1;
        c13400bu.zze = i;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13189a(C13400bu c13400bu, long j) {
        c13400bu.zza |= 2;
        c13400bu.zzf = j;
    }

    /* renamed from: c */
    public static C13398bs m13187c() {
        return zzg.m12759l();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C13400bu();
            }
            if (i2 == 4) {
                return new C13398bs(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13191a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final boolean m13188b() {
        return (this.zza & 2) != 0;
    }
}
