package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.a2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/a2.class */
public final class C7291a2 extends AbstractC7609x5<C7291a2, C7631z1> implements AbstractC7636z6 {
    public static final /* synthetic */ int zza = 0;
    private static final C7291a2 zzaa;
    private long zzB;
    private int zzC;
    private boolean zzF;
    private int zzI;
    private int zzJ;
    private int zzK;
    private long zzM;
    private long zzN;
    private int zzQ;
    private C7347e2 zzS;
    private long zzU;
    private long zzV;
    private int zzY;
    private boolean zzZ;
    private int zze;
    private int zzf;
    private int zzg;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private int zzs;
    private long zzw;
    private long zzx;
    private boolean zzz;
    private AbstractC7351e6<C7540s1> zzh = AbstractC7609x5.m6764q();
    private AbstractC7351e6<C7431k2> zzi = AbstractC7609x5.m6764q();
    private String zzo = "";
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";
    private String zzt = "";
    private String zzu = "";
    private String zzv = "";
    private String zzy = "";
    private String zzA = "";
    private String zzD = "";
    private String zzE = "";
    private AbstractC7351e6<C7472n1> zzG = AbstractC7609x5.m6764q();
    private String zzH = "";
    private String zzL = "";
    private String zzO = "";
    private String zzP = "";
    private String zzR = "";
    private AbstractC7323c6 zzT = AbstractC7609x5.m6767n();
    private String zzW = "";
    private String zzX = "";

    static {
        C7291a2 c7291a2 = new C7291a2();
        zzaa = c7291a2;
        AbstractC7609x5.m6759w(C7291a2.class, c7291a2);
    }

    private C7291a2() {
    }

    /* renamed from: K0 */
    public static C7631z1 m7773K0() {
        return zzaa.m6762s();
    }

    /* renamed from: M0 */
    public static /* synthetic */ void m7767M0(C7291a2 c7291a2, int i) {
        c7291a2.zze |= 1;
        c7291a2.zzg = 1;
    }

    /* renamed from: N0 */
    public static /* synthetic */ void m7764N0(C7291a2 c7291a2, int i, C7540s1 c7540s1) {
        c7540s1.getClass();
        c7291a2.m7732c1();
        c7291a2.zzh.set(i, c7540s1);
    }

    /* renamed from: O0 */
    public static /* synthetic */ void m7761O0(C7291a2 c7291a2, C7540s1 c7540s1) {
        c7540s1.getClass();
        c7291a2.m7732c1();
        c7291a2.zzh.add(c7540s1);
    }

    /* renamed from: P0 */
    public static /* synthetic */ void m7758P0(C7291a2 c7291a2, Iterable iterable) {
        c7291a2.m7732c1();
        AbstractC7489o4.m7044l(iterable, c7291a2.zzh);
    }

    /* renamed from: R0 */
    public static /* synthetic */ void m7754R0(C7291a2 c7291a2, int i) {
        c7291a2.m7732c1();
        c7291a2.zzh.remove(i);
    }

    /* renamed from: S0 */
    public static /* synthetic */ void m7752S0(C7291a2 c7291a2, int i, C7431k2 c7431k2) {
        c7431k2.getClass();
        c7291a2.m7730d1();
        c7291a2.zzi.set(i, c7431k2);
    }

    /* renamed from: T0 */
    public static /* synthetic */ void m7750T0(C7291a2 c7291a2, C7431k2 c7431k2) {
        c7431k2.getClass();
        c7291a2.m7730d1();
        c7291a2.zzi.add(c7431k2);
    }

    /* renamed from: U0 */
    public static /* synthetic */ void m7748U0(C7291a2 c7291a2, Iterable iterable) {
        c7291a2.m7730d1();
        AbstractC7489o4.m7044l(iterable, c7291a2.zzi);
    }

    /* renamed from: V0 */
    public static /* synthetic */ void m7746V0(C7291a2 c7291a2, int i) {
        c7291a2.m7730d1();
        c7291a2.zzi.remove(i);
    }

    /* renamed from: W0 */
    public static /* synthetic */ void m7744W0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 2;
        c7291a2.zzj = j;
    }

    /* renamed from: X0 */
    public static /* synthetic */ void m7742X0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 4;
        c7291a2.zzk = j;
    }

    /* renamed from: Y0 */
    public static /* synthetic */ void m7740Y0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 8;
        c7291a2.zzl = j;
    }

    /* renamed from: Z0 */
    public static /* synthetic */ void m7738Z0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 16;
        c7291a2.zzm = j;
    }

    /* renamed from: a1 */
    public static /* synthetic */ void m7736a1(C7291a2 c7291a2) {
        c7291a2.zze &= -17;
        c7291a2.zzm = 0L;
    }

    /* renamed from: b0 */
    public static /* synthetic */ void m7735b0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 32;
        c7291a2.zzn = j;
    }

    /* renamed from: c0 */
    public static /* synthetic */ void m7733c0(C7291a2 c7291a2) {
        c7291a2.zze &= -33;
        c7291a2.zzn = 0L;
    }

    /* renamed from: c1 */
    private final void m7732c1() {
        AbstractC7351e6<C7540s1> abstractC7351e6 = this.zzh;
        if (!abstractC7351e6.zza()) {
            this.zzh = AbstractC7609x5.m6763r(abstractC7351e6);
        }
    }

    /* renamed from: d0 */
    public static /* synthetic */ void m7731d0(C7291a2 c7291a2, String str) {
        c7291a2.zze |= 64;
        c7291a2.zzo = "android";
    }

    /* renamed from: d1 */
    private final void m7730d1() {
        AbstractC7351e6<C7431k2> abstractC7351e6 = this.zzi;
        if (!abstractC7351e6.zza()) {
            this.zzi = AbstractC7609x5.m6763r(abstractC7351e6);
        }
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m7729e0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 128;
        c7291a2.zzp = str;
    }

    /* renamed from: e1 */
    public static /* synthetic */ void m7728e1(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 16777216;
        c7291a2.zzH = str;
    }

    /* renamed from: f0 */
    public static /* synthetic */ void m7727f0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 256;
        c7291a2.zzq = str;
    }

    /* renamed from: f1 */
    public static /* synthetic */ void m7726f1(C7291a2 c7291a2, int i) {
        c7291a2.zze |= 33554432;
        c7291a2.zzI = i;
    }

    /* renamed from: g0 */
    public static /* synthetic */ void m7725g0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 512;
        c7291a2.zzr = str;
    }

    /* renamed from: g1 */
    public static /* synthetic */ void m7724g1(C7291a2 c7291a2) {
        c7291a2.zze &= -268435457;
        c7291a2.zzL = zzaa.zzL;
    }

    /* renamed from: h0 */
    public static /* synthetic */ void m7723h0(C7291a2 c7291a2, int i) {
        c7291a2.zze |= 1024;
        c7291a2.zzs = i;
    }

    /* renamed from: h1 */
    public static /* synthetic */ void m7722h1(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 536870912;
        c7291a2.zzM = j;
    }

    /* renamed from: i0 */
    public static /* synthetic */ void m7721i0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 2048;
        c7291a2.zzt = str;
    }

    /* renamed from: i1 */
    public static /* synthetic */ void m7720i1(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 1073741824;
        c7291a2.zzN = j;
    }

    /* renamed from: j0 */
    public static /* synthetic */ void m7719j0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 4096;
        c7291a2.zzu = str;
    }

    /* renamed from: j1 */
    public static /* synthetic */ void m7718j1(C7291a2 c7291a2) {
        c7291a2.zze &= Integer.MAX_VALUE;
        c7291a2.zzO = zzaa.zzO;
    }

    /* renamed from: k0 */
    public static /* synthetic */ void m7717k0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 8192;
        c7291a2.zzv = str;
    }

    /* renamed from: k1 */
    public static /* synthetic */ void m7716k1(C7291a2 c7291a2, int i) {
        c7291a2.zzf |= 2;
        c7291a2.zzQ = i;
    }

    /* renamed from: l0 */
    public static /* synthetic */ void m7715l0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 16384;
        c7291a2.zzw = j;
    }

    /* renamed from: l1 */
    public static /* synthetic */ void m7714l1(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zzf |= 4;
        c7291a2.zzR = str;
    }

    /* renamed from: m0 */
    public static /* synthetic */ void m7713m0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 32768;
        c7291a2.zzx = 39065L;
    }

    /* renamed from: m1 */
    public static /* synthetic */ void m7712m1(C7291a2 c7291a2, C7347e2 c7347e2) {
        c7347e2.getClass();
        c7291a2.zzS = c7347e2;
        c7291a2.zzf |= 8;
    }

    /* renamed from: n0 */
    public static /* synthetic */ void m7711n0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 65536;
        c7291a2.zzy = str;
    }

    /* renamed from: n1 */
    public static /* synthetic */ void m7710n1(C7291a2 c7291a2, Iterable iterable) {
        AbstractC7323c6 abstractC7323c6 = c7291a2.zzT;
        if (!abstractC7323c6.zza()) {
            int size = abstractC7323c6.size();
            c7291a2.zzT = abstractC7323c6.mo6738A(size == 0 ? 10 : size + size);
        }
        AbstractC7489o4.m7044l(iterable, c7291a2.zzT);
    }

    /* renamed from: o0 */
    public static /* synthetic */ void m7709o0(C7291a2 c7291a2) {
        c7291a2.zze &= -65537;
        c7291a2.zzy = zzaa.zzy;
    }

    /* renamed from: o1 */
    public static /* synthetic */ void m7708o1(C7291a2 c7291a2, long j) {
        c7291a2.zzf |= 16;
        c7291a2.zzU = j;
    }

    /* renamed from: p0 */
    public static /* synthetic */ void m7707p0(C7291a2 c7291a2, boolean z) {
        c7291a2.zze |= 131072;
        c7291a2.zzz = z;
    }

    /* renamed from: p1 */
    public static /* synthetic */ void m7706p1(C7291a2 c7291a2, long j) {
        c7291a2.zzf |= 32;
        c7291a2.zzV = j;
    }

    /* renamed from: q0 */
    public static /* synthetic */ void m7705q0(C7291a2 c7291a2) {
        c7291a2.zze &= -131073;
        c7291a2.zzz = false;
    }

    /* renamed from: q1 */
    public static /* synthetic */ void m7704q1(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zzf |= 64;
        c7291a2.zzW = str;
    }

    /* renamed from: r0 */
    public static /* synthetic */ void m7703r0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 262144;
        c7291a2.zzA = str;
    }

    /* renamed from: r1 */
    public static /* synthetic */ void m7702r1(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zzf |= 128;
        c7291a2.zzX = str;
    }

    /* renamed from: s0 */
    public static /* synthetic */ void m7701s0(C7291a2 c7291a2) {
        c7291a2.zze &= -262145;
        c7291a2.zzA = zzaa.zzA;
    }

    /* renamed from: t0 */
    public static /* synthetic */ void m7699t0(C7291a2 c7291a2, long j) {
        c7291a2.zze |= 524288;
        c7291a2.zzB = j;
    }

    /* renamed from: u0 */
    public static /* synthetic */ void m7697u0(C7291a2 c7291a2, int i) {
        c7291a2.zze |= 1048576;
        c7291a2.zzC = i;
    }

    /* renamed from: v0 */
    public static /* synthetic */ void m7695v0(C7291a2 c7291a2, String str) {
        c7291a2.zze |= 2097152;
        c7291a2.zzD = str;
    }

    /* renamed from: w0 */
    public static /* synthetic */ void m7693w0(C7291a2 c7291a2) {
        c7291a2.zze &= -2097153;
        c7291a2.zzD = zzaa.zzD;
    }

    /* renamed from: x0 */
    public static /* synthetic */ void m7691x0(C7291a2 c7291a2, String str) {
        str.getClass();
        c7291a2.zze |= 4194304;
        c7291a2.zzE = str;
    }

    /* renamed from: y0 */
    public static /* synthetic */ void m7689y0(C7291a2 c7291a2, boolean z) {
        c7291a2.zze |= 8388608;
        c7291a2.zzF = z;
    }

    /* renamed from: z0 */
    public static /* synthetic */ void m7687z0(C7291a2 c7291a2, Iterable iterable) {
        AbstractC7351e6<C7472n1> abstractC7351e6 = c7291a2.zzG;
        if (!abstractC7351e6.zza()) {
            c7291a2.zzG = AbstractC7609x5.m6763r(abstractC7351e6);
        }
        AbstractC7489o4.m7044l(iterable, c7291a2.zzG);
    }

    /* renamed from: A */
    public final String m7804A() {
        return this.zzu;
    }

    /* renamed from: A1 */
    public final boolean m7802A1() {
        return (this.zze & 4) != 0;
    }

    /* renamed from: B */
    public final String m7801B() {
        return this.zzv;
    }

    /* renamed from: B0 */
    public final String m7800B0() {
        return this.zzO;
    }

    /* renamed from: B1 */
    public final long m7799B1() {
        return this.zzk;
    }

    /* renamed from: C */
    public final boolean m7798C() {
        return (this.zze & 16384) != 0;
    }

    /* renamed from: C0 */
    public final boolean m7797C0() {
        return (this.zzf & 2) != 0;
    }

    /* renamed from: C1 */
    public final boolean m7796C1() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: D */
    public final long m7795D() {
        return this.zzw;
    }

    /* renamed from: D0 */
    public final int m7794D0() {
        return this.zzQ;
    }

    /* renamed from: D1 */
    public final long m7793D1() {
        return this.zzl;
    }

    /* renamed from: E */
    public final boolean m7792E() {
        return (this.zze & 32768) != 0;
    }

    /* renamed from: E0 */
    public final String m7791E0() {
        return this.zzR;
    }

    /* renamed from: E1 */
    public final boolean m7790E1() {
        return (this.zze & 16) != 0;
    }

    /* renamed from: F */
    public final long m7789F() {
        return this.zzx;
    }

    /* renamed from: F0 */
    public final boolean m7788F0() {
        return (this.zzf & 16) != 0;
    }

    /* renamed from: F1 */
    public final long m7787F1() {
        return this.zzm;
    }

    /* renamed from: G */
    public final String m7786G() {
        return this.zzy;
    }

    /* renamed from: G0 */
    public final long m7785G0() {
        return this.zzU;
    }

    /* renamed from: G1 */
    public final boolean m7784G1() {
        return (this.zze & 32) != 0;
    }

    /* renamed from: H */
    public final boolean m7783H() {
        return (this.zze & 131072) != 0;
    }

    /* renamed from: H0 */
    public final String m7782H0() {
        return this.zzW;
    }

    /* renamed from: H1 */
    public final long m7781H1() {
        return this.zzn;
    }

    /* renamed from: I */
    public final boolean m7780I() {
        return this.zzz;
    }

    /* renamed from: I0 */
    public final boolean m7779I0() {
        return (this.zzf & 128) != 0;
    }

    /* renamed from: I1 */
    public final String m7778I1() {
        return this.zzo;
    }

    /* renamed from: J */
    public final String m7777J() {
        return this.zzA;
    }

    /* renamed from: J0 */
    public final String m7776J0() {
        return this.zzX;
    }

    /* renamed from: J1 */
    public final String m7775J1() {
        return this.zzp;
    }

    /* renamed from: K */
    public final boolean m7774K() {
        return (this.zze & 524288) != 0;
    }

    /* renamed from: K1 */
    public final String m7772K1() {
        return this.zzq;
    }

    /* renamed from: L */
    public final long m7771L() {
        return this.zzB;
    }

    /* renamed from: L1 */
    public final String m7769L1() {
        return this.zzr;
    }

    /* renamed from: M */
    public final boolean m7768M() {
        return (this.zze & 1048576) != 0;
    }

    /* renamed from: M1 */
    public final boolean m7766M1() {
        return (this.zze & 1024) != 0;
    }

    /* renamed from: N */
    public final int m7765N() {
        return this.zzC;
    }

    /* renamed from: N1 */
    public final int m7763N1() {
        return this.zzs;
    }

    /* renamed from: O */
    public final String m7762O() {
        return this.zzD;
    }

    /* renamed from: O1 */
    public final String m7760O1() {
        return this.zzt;
    }

    /* renamed from: P */
    public final String m7759P() {
        return this.zzE;
    }

    /* renamed from: Q */
    public final boolean m7757Q() {
        return (this.zze & 8388608) != 0;
    }

    /* renamed from: R */
    public final boolean m7755R() {
        return this.zzF;
    }

    /* renamed from: S */
    public final List<C7472n1> m7753S() {
        return this.zzG;
    }

    /* renamed from: T */
    public final String m7751T() {
        return this.zzH;
    }

    /* renamed from: U */
    public final boolean m7749U() {
        return (this.zze & 33554432) != 0;
    }

    /* renamed from: V */
    public final int m7747V() {
        return this.zzI;
    }

    /* renamed from: W */
    public final boolean m7745W() {
        return (this.zze & 536870912) != 0;
    }

    /* renamed from: X */
    public final long m7743X() {
        return this.zzM;
    }

    /* renamed from: Y */
    public final boolean m7741Y() {
        return (this.zze & 1073741824) != 0;
    }

    /* renamed from: Z */
    public final long m7739Z() {
        return this.zzN;
    }

    /* renamed from: a0 */
    public final boolean m7737a0() {
        return (this.zze & 1) != 0;
    }

    /* renamed from: b1 */
    public final int m7734b1() {
        return this.zzg;
    }

    /* renamed from: s1 */
    public final List<C7540s1> m7700s1() {
        return this.zzh;
    }

    /* renamed from: t1 */
    public final int m7698t1() {
        return this.zzh.size();
    }

    /* renamed from: u1 */
    public final C7540s1 m7696u1(int i) {
        return this.zzh.get(i);
    }

    /* renamed from: v1 */
    public final List<C7431k2> m7694v1() {
        return this.zzi;
    }

    /* renamed from: w1 */
    public final int m7692w1() {
        return this.zzi.size();
    }

    /* renamed from: x1 */
    public final C7431k2 m7690x1(int i) {
        return this.zzi.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzaa, "\u0001.��\u0002\u00017.��\u0004��\u0001င��\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)", new Object[]{"zze", "zzf", "zzg", "zzh", C7540s1.class, "zzi", C7431k2.class, "zzj", "zzk", "zzl", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzm", "zzF", "zzG", C7472n1.class, "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", zzcw.zzb(), "zzZ"});
            } else if (i2 == 3) {
                return new C7291a2();
            } else {
                if (i2 == 4) {
                    return new C7631z1(null);
                }
                if (i2 == 5) {
                    return zzaa;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: y1 */
    public final boolean m7688y1() {
        return (this.zze & 2) != 0;
    }

    /* renamed from: z1 */
    public final long m7686z1() {
        return this.zzj;
    }
}
