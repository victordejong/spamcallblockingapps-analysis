package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cp.class */
public final class C13422cp extends AbstractC13526gl<C13422cp, C13421co> implements AbstractC13557hp {
    private static final C13422cp zzk;
    public int zza;
    public long zze;
    public String zzf = "";
    public String zzg = "";
    public long zzh;
    private float zzi;
    public double zzj;

    static {
        C13422cp c13422cp = new C13422cp();
        zzk = c13422cp;
        AbstractC13526gl.m12763a(C13422cp.class, c13422cp);
    }

    private C13422cp() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m12942a(C13422cp c13422cp) {
        c13422cp.zza &= -5;
        c13422cp.zzg = zzk.zzg;
    }

    /* renamed from: a */
    public static /* synthetic */ void m12941a(C13422cp c13422cp, double d) {
        c13422cp.zza |= 32;
        c13422cp.zzj = d;
    }

    /* renamed from: a */
    public static /* synthetic */ void m12940a(C13422cp c13422cp, long j) {
        c13422cp.zza |= 1;
        c13422cp.zze = j;
    }

    /* renamed from: a */
    public static /* synthetic */ void m12939a(C13422cp c13422cp, String str) {
        str.getClass();
        c13422cp.zza |= 2;
        c13422cp.zzf = str;
    }

    /* renamed from: b */
    public static /* synthetic */ void m12937b(C13422cp c13422cp) {
        c13422cp.zza &= -9;
        c13422cp.zzh = 0L;
    }

    /* renamed from: b */
    public static /* synthetic */ void m12936b(C13422cp c13422cp, long j) {
        c13422cp.zza |= 8;
        c13422cp.zzh = j;
    }

    /* renamed from: b */
    public static /* synthetic */ void m12935b(C13422cp c13422cp, String str) {
        str.getClass();
        c13422cp.zza |= 4;
        c13422cp.zzg = str;
    }

    /* renamed from: c */
    public static /* synthetic */ void m12933c(C13422cp c13422cp) {
        c13422cp.zza &= -33;
        c13422cp.zzj = 0.0d;
    }

    /* renamed from: d */
    public static C13421co m12932d() {
        return zzk.m12759l();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new C13422cp();
            }
            if (i2 == 4) {
                return new C13421co(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m12943a() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: b */
    public final boolean m12938b() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: c */
    public final boolean m12934c() {
        return (this.zza & 32) != 0;
    }
}
