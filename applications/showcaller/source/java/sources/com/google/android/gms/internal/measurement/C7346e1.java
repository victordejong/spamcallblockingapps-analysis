package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.e1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/e1.class */
public final class C7346e1 extends AbstractC7609x5<C7346e1, C7332d1> implements AbstractC7636z6 {
    private static final C7346e1 zzi;
    private int zza;
    private String zze = "";
    private boolean zzf;
    private boolean zzg;
    private int zzh;

    static {
        C7346e1 c7346e1 = new C7346e1();
        zzi = c7346e1;
        AbstractC7609x5.m6759w(C7346e1.class, c7346e1);
    }

    private C7346e1() {
    }

    /* renamed from: G */
    public static /* synthetic */ void m7562G(C7346e1 c7346e1, String str) {
        str.getClass();
        c7346e1.zza |= 1;
        c7346e1.zze = str;
    }

    /* renamed from: A */
    public final String m7568A() {
        return this.zze;
    }

    /* renamed from: B */
    public final boolean m7567B() {
        return this.zzf;
    }

    /* renamed from: C */
    public final boolean m7566C() {
        return this.zzg;
    }

    /* renamed from: D */
    public final boolean m7565D() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: E */
    public final int m7564E() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new C7346e1();
            }
            if (i2 == 4) {
                return new C7332d1(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
