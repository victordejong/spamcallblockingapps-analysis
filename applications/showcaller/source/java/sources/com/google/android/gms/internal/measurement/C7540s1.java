package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.s1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s1.class */
public final class C7540s1 extends AbstractC7609x5<C7540s1, C7527r1> implements AbstractC7636z6 {
    private static final C7540s1 zzj;
    private int zza;
    private AbstractC7351e6<C7592w1> zze = AbstractC7609x5.m6764q();
    private String zzf = "";
    private long zzg;
    private long zzh;
    private int zzi;

    static {
        C7540s1 c7540s1 = new C7540s1();
        zzj = c7540s1;
        AbstractC7609x5.m6759w(C7540s1.class, c7540s1);
    }

    private C7540s1() {
    }

    /* renamed from: K */
    public static C7527r1 m6944K() {
        return zzj.m6762s();
    }

    /* renamed from: M */
    public static /* synthetic */ void m6942M(C7540s1 c7540s1, int i, C7592w1 c7592w1) {
        c7592w1.getClass();
        c7540s1.m6934U();
        c7540s1.zze.set(i, c7592w1);
    }

    /* renamed from: N */
    public static /* synthetic */ void m6941N(C7540s1 c7540s1, C7592w1 c7592w1) {
        c7592w1.getClass();
        c7540s1.m6934U();
        c7540s1.zze.add(c7592w1);
    }

    /* renamed from: O */
    public static /* synthetic */ void m6940O(C7540s1 c7540s1, Iterable iterable) {
        c7540s1.m6934U();
        AbstractC7489o4.m7044l(iterable, c7540s1.zze);
    }

    /* renamed from: Q */
    public static /* synthetic */ void m6938Q(C7540s1 c7540s1, int i) {
        c7540s1.m6934U();
        c7540s1.zze.remove(i);
    }

    /* renamed from: R */
    public static /* synthetic */ void m6937R(C7540s1 c7540s1, String str) {
        str.getClass();
        c7540s1.zza |= 1;
        c7540s1.zzf = str;
    }

    /* renamed from: S */
    public static /* synthetic */ void m6936S(C7540s1 c7540s1, long j) {
        c7540s1.zza |= 2;
        c7540s1.zzg = j;
    }

    /* renamed from: T */
    public static /* synthetic */ void m6935T(C7540s1 c7540s1, long j) {
        c7540s1.zza |= 4;
        c7540s1.zzh = j;
    }

    /* renamed from: U */
    private final void m6934U() {
        AbstractC7351e6<C7592w1> abstractC7351e6 = this.zze;
        if (!abstractC7351e6.zza()) {
            this.zze = AbstractC7609x5.m6763r(abstractC7351e6);
        }
    }

    /* renamed from: A */
    public final List<C7592w1> m6954A() {
        return this.zze;
    }

    /* renamed from: B */
    public final int m6953B() {
        return this.zze.size();
    }

    /* renamed from: C */
    public final C7592w1 m6952C(int i) {
        return this.zze.get(i);
    }

    /* renamed from: D */
    public final String m6951D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final boolean m6950E() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: F */
    public final long m6949F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final boolean m6948G() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: H */
    public final long m6947H() {
        return this.zzh;
    }

    /* renamed from: I */
    public final boolean m6946I() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: J */
    public final int m6945J() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zza", "zze", C7592w1.class, "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new C7540s1();
            }
            if (i2 == 4) {
                return new C7527r1(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }
}
