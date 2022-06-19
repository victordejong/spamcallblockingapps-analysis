package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.i2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i2.class */
public final class C6574i2 extends ie3<C6574i2, C6537h2> implements nf3 {
    private static final C6574i2 zzj;
    private int zzb;
    private String zze = "";
    private String zzf = "";
    private long zzg;
    private long zzh;
    private long zzi;

    static {
        C6574i2 c6574i2 = new C6574i2();
        zzj = c6574i2;
        ie3.m14414z(C6574i2.class, c6574i2);
    }

    private C6574i2() {
    }

    /* renamed from: H */
    public static C6574i2 m14506H(zzgex zzgexVar) {
        return (C6574i2) ie3.m14422r(zzj, zzgexVar);
    }

    /* renamed from: I */
    public static C6574i2 m14505I(zzgex zzgexVar, vd3 vd3Var) {
        return (C6574i2) ie3.m14421s(zzj, zzgexVar, vd3Var);
    }

    /* renamed from: J */
    public static C6537h2 m14504J() {
        return zzj.m14418v();
    }

    /* renamed from: L */
    public static C6574i2 m14503L() {
        return zzj;
    }

    /* renamed from: O */
    public static /* synthetic */ void m14501O(C6574i2 c6574i2, String str) {
        str.getClass();
        c6574i2.zzb |= 1;
        c6574i2.zze = str;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m14500Q(C6574i2 c6574i2, String str) {
        str.getClass();
        c6574i2.zzb |= 2;
        c6574i2.zzf = str;
    }

    /* renamed from: R */
    public static /* synthetic */ void m14499R(C6574i2 c6574i2, long j) {
        c6574i2.zzb |= 4;
        c6574i2.zzg = j;
    }

    /* renamed from: S */
    public static /* synthetic */ void m14498S(C6574i2 c6574i2, long j) {
        c6574i2.zzb |= 8;
        c6574i2.zzh = j;
    }

    /* renamed from: T */
    public static /* synthetic */ void m14497T(C6574i2 c6574i2, long j) {
        c6574i2.zzb |= 16;
        c6574i2.zzi = j;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဈ��\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new C6574i2();
            }
            if (i2 == 4) {
                return new C6537h2(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final String m14511C() {
        return this.zze;
    }

    /* renamed from: D */
    public final String m14510D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final long m14509E() {
        return this.zzg;
    }

    /* renamed from: F */
    public final long m14508F() {
        return this.zzh;
    }

    /* renamed from: G */
    public final long m14507G() {
        return this.zzi;
    }
}
