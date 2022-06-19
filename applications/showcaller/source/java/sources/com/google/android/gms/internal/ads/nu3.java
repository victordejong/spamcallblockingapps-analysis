package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nu3.class */
public final class nu3 implements uq3 {

    /* renamed from: a */
    public static final br3 f27296a = ku3.f25420b;

    /* renamed from: b */
    private static final byte[] f27297b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: c */
    private static final C7021u4 f27298c;

    /* renamed from: A */
    private int f27299A;

    /* renamed from: B */
    private int f27300B;

    /* renamed from: C */
    private boolean f27301C;

    /* renamed from: G */
    private boolean f27305G;

    /* renamed from: i */
    private final byte[] f27311i;

    /* renamed from: j */
    private final C6694la f27312j;

    /* renamed from: o */
    private int f27317o;

    /* renamed from: p */
    private int f27318p;

    /* renamed from: q */
    private long f27319q;

    /* renamed from: r */
    private int f27320r;

    /* renamed from: s */
    private C6694la f27321s;

    /* renamed from: t */
    private long f27322t;

    /* renamed from: u */
    private int f27323u;

    /* renamed from: y */
    private mu3 f27327y;

    /* renamed from: z */
    private int f27328z;

    /* renamed from: d */
    private final List<C7021u4> f27306d = Collections.unmodifiableList(Collections.emptyList());

    /* renamed from: k */
    private final C7135x7 f27313k = new C7135x7();

    /* renamed from: l */
    private final C6694la f27314l = new C6694la(16);

    /* renamed from: f */
    private final C6694la f27308f = new C6694la(C6322ba.f20319a);

    /* renamed from: g */
    private final C6694la f27309g = new C6694la(5);

    /* renamed from: h */
    private final C6694la f27310h = new C6694la();

    /* renamed from: m */
    private final ArrayDeque<xt3> f27315m = new ArrayDeque<>();

    /* renamed from: n */
    private final ArrayDeque<lu3> f27316n = new ArrayDeque<>();

    /* renamed from: e */
    private final SparseArray<mu3> f27307e = new SparseArray<>();

    /* renamed from: w */
    private long f27325w = -9223372036854775807L;

    /* renamed from: v */
    private long f27324v = -9223372036854775807L;

    /* renamed from: x */
    private long f27326x = -9223372036854775807L;

    /* renamed from: D */
    private xq3 f27302D = xq3.f32263c;

    /* renamed from: E */
    private yr3[] f27303E = new yr3[0];

    /* renamed from: F */
    private yr3[] f27304F = new yr3[0];

    static {
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n("application/x-emsg");
        f27298c = c6947s4.m11168I();
    }

    public nu3(int i, C6990ta c6990ta) {
        byte[] bArr = new byte[16];
        this.f27311i = bArr;
        this.f27312j = new C6694la(bArr);
    }

    /* renamed from: a */
    private final void m12819a() {
        this.f27317o = 0;
        this.f27320r = 0;
    }

    /* JADX WARN: Type inference failed for: r0v405, types: [long] */
    /* JADX WARN: Type inference failed for: r0v407, types: [long] */
    /* JADX WARN: Type inference failed for: r0v522, types: [long] */
    /* JADX WARN: Type inference failed for: r0v547, types: [long] */
    /* JADX WARN: Type inference failed for: r0v583, types: [long] */
    /* JADX WARN: Type inference failed for: r0v629, types: [long] */
    /* JADX WARN: Type inference failed for: r0v631, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: b */
    private final void m12818b(long j) {
        byte[] bArr;
        SparseArray<mu3> sparseArray;
        int i;
        byte[] bArr2;
        C6694la c6694la;
        C6694la c6694la2;
        int i2;
        int i3;
        nu3 nu3Var = this;
        while (!nu3Var.f27315m.isEmpty() && nu3Var.f27315m.peek().f32290b == j) {
            xt3 pop = nu3Var.f27315m.pop();
            int i4 = pop.f33399a;
            if (i4 == 1836019574) {
                zzn m12815i = m12815i(pop.f32291c);
                xt3 m9059f = pop.m9059f(1836475768);
                Objects.requireNonNull(m9059f);
                SparseArray sparseArray2 = new SparseArray();
                int size = m9059f.f32291c.size();
                char c = 1;
                for (int i5 = 0; i5 < size; i5++) {
                    yt3 yt3Var = m9059f.f32291c.get(i5);
                    int i6 = yt3Var.f33399a;
                    if (i6 == 1953654136) {
                        C6694la c6694la3 = yt3Var.f32650b;
                        c6694la3.m13635p(12);
                        Pair create = Pair.create(Integer.valueOf(c6694la3.m13655D()), new iu3(c6694la3.m13655D() - 1, c6694la3.m13655D(), c6694la3.m13655D(), c6694la3.m13655D()));
                        sparseArray2.put(((Integer) create.first).intValue(), (iu3) create.second);
                    } else if (i6 == 1835362404) {
                        C6694la c6694la4 = yt3Var.f32650b;
                        c6694la4.m13635p(8);
                        c = zt3.m8183a(c6694la4.m13655D()) == 0 ? c6694la4.m13657B() : c6694la4.m13647d();
                    }
                }
                List<av3> m14548a = hu3.m14548a(pop, new kr3(), c, m12815i, false, false, new nu2(nu3Var) { // from class: com.google.android.gms.internal.ads.ju3

                    /* renamed from: a */
                    private final nu3 f24997a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24997a = nu3Var;
                    }

                    @Override // com.google.android.gms.internal.ads.nu2
                    /* renamed from: a */
                    public final Object mo8501a(Object obj) {
                        return (xu3) obj;
                    }
                });
                int size2 = m14548a.size();
                if (nu3Var.f27307e.size() == 0) {
                    for (int i7 = 0; i7 < size2; i7++) {
                        av3 av3Var = m14548a.get(i7);
                        xu3 xu3Var = av3Var.f20142a;
                        nu3Var.f27307e.put(xu3Var.f32298a, new mu3(nu3Var.f27302D.mo8690o(i7, xu3Var.f32299b), av3Var, m12814j(sparseArray2, xu3Var.f32298a)));
                        nu3Var.f27325w = Math.max(nu3Var.f27325w, xu3Var.f32302e);
                    }
                    nu3Var.f27302D.mo8688t();
                } else {
                    C7173y8.m8895d(nu3Var.f27307e.size() == size2);
                    for (int i8 = 0; i8 < size2; i8++) {
                        av3 av3Var2 = m14548a.get(i8);
                        xu3 xu3Var2 = av3Var2.f20142a;
                        nu3Var.f27307e.get(xu3Var2.f32298a).m13076c(av3Var2, m12814j(sparseArray2, xu3Var2.f32298a));
                    }
                }
            } else if (i4 == 1836019558) {
                SparseArray<mu3> sparseArray3 = nu3Var.f27307e;
                byte[] bArr3 = nu3Var.f27311i;
                int size3 = pop.f32292d.size();
                int i9 = 0;
                SparseArray<mu3> sparseArray4 = sparseArray3;
                while (i9 < size3) {
                    xt3 xt3Var = pop.f32292d.get(i9);
                    if (xt3Var.f33399a == 1953653094) {
                        yt3 m9060e = xt3Var.m9060e(1952868452);
                        Objects.requireNonNull(m9060e);
                        C6694la c6694la5 = m9060e.f32650b;
                        c6694la5.m13635p(8);
                        int m13655D = c6694la5.m13655D() & 16777215;
                        mu3 mu3Var = sparseArray4.get(c6694la5.m13655D());
                        if (mu3Var == null) {
                            mu3Var = null;
                        } else {
                            if ((m13655D & 1) != 0) {
                                long m13647d = c6694la5.m13647d();
                                zu3 zu3Var = mu3Var.f26876b;
                                zu3Var.f33410b = m13647d;
                                zu3Var.f33411c = m13647d;
                            }
                            iu3 iu3Var = mu3Var.f26879e;
                            mu3Var.f26876b.f33409a = new iu3((m13655D & 2) != 0 ? c6694la5.m13655D() - 1 : iu3Var.f24483a, (m13655D & 8) != 0 ? c6694la5.m13655D() : iu3Var.f24484b, (m13655D & 16) != 0 ? c6694la5.m13655D() : iu3Var.f24485c, (m13655D & 32) != 0 ? c6694la5.m13655D() : iu3Var.f24486d);
                        }
                        if (mu3Var != null) {
                            zu3 zu3Var2 = mu3Var.f26876b;
                            long j2 = zu3Var2.f33425q;
                            boolean z = zu3Var2.f33426r;
                            mu3Var.m13075d();
                            mu3Var.f26886l = true;
                            yt3 m9060e2 = xt3Var.m9060e(1952867444);
                            if (m9060e2 != null) {
                                C6694la c6694la6 = m9060e2.f32650b;
                                c6694la6.m13635p(8);
                                zu3Var2.f33425q = zt3.m8183a(c6694la6.m13655D()) == 1 ? c6694la6.m13647d() : c6694la6.m13657B();
                                zu3Var2.f33426r = true;
                            } else {
                                zu3Var2.f33425q = j2;
                                zu3Var2.f33426r = z;
                            }
                            List<yt3> list = xt3Var.f32291c;
                            int size4 = list.size();
                            int i10 = 0;
                            int i11 = 0;
                            int i12 = 0;
                            while (true) {
                                i = i12;
                                if (i10 >= size4) {
                                    break;
                                }
                                yt3 yt3Var2 = list.get(i10);
                                int i13 = i11;
                                int i14 = i;
                                if (yt3Var2.f33399a == 1953658222) {
                                    C6694la c6694la7 = yt3Var2.f32650b;
                                    c6694la7.m13635p(12);
                                    int m13649b = c6694la7.m13649b();
                                    i13 = i11;
                                    i14 = i;
                                    if (m13649b > 0) {
                                        i14 = i + m13649b;
                                        i13 = i11 + 1;
                                    }
                                }
                                i10++;
                                i11 = i13;
                                i12 = i14;
                            }
                            SparseArray<mu3> sparseArray5 = sparseArray4;
                            mu3Var.f26882h = 0;
                            mu3Var.f26881g = 0;
                            mu3Var.f26880f = 0;
                            zu3 zu3Var3 = mu3Var.f26876b;
                            zu3Var3.f33412d = i11;
                            zu3Var3.f33413e = i;
                            if (zu3Var3.f33415g.length < i11) {
                                zu3Var3.f33414f = new long[i11];
                                zu3Var3.f33415g = new int[i11];
                            }
                            if (zu3Var3.f33416h.length < i) {
                                int i15 = (i * 125) / 100;
                                zu3Var3.f33416h = new int[i15];
                                zu3Var3.f33417i = new int[i15];
                                zu3Var3.f33418j = new long[i15];
                                zu3Var3.f33419k = new boolean[i15];
                                zu3Var3.f33421m = new boolean[i15];
                            }
                            int i16 = 0;
                            int i17 = 0;
                            mu3 mu3Var2 = mu3Var;
                            int i18 = size3;
                            int i19 = 0;
                            while (true) {
                                char c2 = 0;
                                if (i19 >= size4) {
                                    break;
                                }
                                yt3 yt3Var3 = list.get(i19);
                                if (yt3Var3.f33399a == 1953658222) {
                                    C6694la c6694la8 = yt3Var3.f32650b;
                                    c6694la8.m13635p(8);
                                    int m13655D2 = c6694la8.m13655D() & 16777215;
                                    xu3 xu3Var3 = mu3Var2.f26878d.f20142a;
                                    zu3 zu3Var4 = mu3Var2.f26876b;
                                    iu3 iu3Var2 = zu3Var4.f33409a;
                                    int i20 = C7101wa.f31475a;
                                    zu3Var4.f33415g[i17] = c6694la8.m13649b();
                                    long[] jArr = zu3Var4.f33414f;
                                    long j3 = zu3Var4.f33410b;
                                    jArr[i17] = j3;
                                    if ((m13655D2 & 1) != 0) {
                                        jArr[i17] = j3 + c6694la8.m13655D();
                                    }
                                    int i21 = m13655D2 & 4;
                                    int i22 = iu3Var2.f24486d;
                                    if (i21 != 0) {
                                        i22 = c6694la8.m13655D();
                                    }
                                    int i23 = m13655D2 & 256;
                                    int i24 = m13655D2 & 512;
                                    int i25 = m13655D2 & 2048;
                                    long[] jArr2 = xu3Var3.f32305h;
                                    if (jArr2 != null && jArr2.length == 1 && jArr2[0] == 0) {
                                        c2 = C7101wa.m9689h(((long[]) C7101wa.m9719I(xu3Var3.f32306i))[0], 1000000L, xu3Var3.f32300c);
                                    }
                                    int[] iArr = zu3Var4.f33416h;
                                    int[] iArr2 = zu3Var4.f33417i;
                                    long[] jArr3 = zu3Var4.f33418j;
                                    boolean[] zArr = zu3Var4.f33419k;
                                    int i26 = zu3Var4.f33415g[i17] + i16;
                                    long j4 = xu3Var3.f32300c;
                                    char c3 = zu3Var4.f33425q;
                                    int i27 = i16;
                                    i16 = i26;
                                    while (i27 < i16) {
                                        int m13655D3 = i23 != 0 ? c6694la8.m13655D() : iu3Var2.f24484b;
                                        m12817c(m13655D3);
                                        int m13655D4 = i24 != 0 ? c6694la8.m13655D() : iu3Var2.f24485c;
                                        m12817c(m13655D4);
                                        if ((m13655D2 & 1024) != 0) {
                                            i3 = c6694la8.m13655D();
                                        } else {
                                            int i28 = i27;
                                            if (i27 == 0) {
                                                if (i21 != 0) {
                                                    i3 = i22;
                                                    i27 = 0;
                                                } else {
                                                    i28 = 0;
                                                }
                                            }
                                            i27 = i28;
                                            i3 = iu3Var2.f24486d;
                                        }
                                        if (i25 != 0) {
                                            iArr2[i27] = (int) ((c6694la8.m13655D() * 1000000) / j4);
                                        } else {
                                            iArr2[i27] = 0;
                                        }
                                        long m9689h = C7101wa.m9689h(c3, 1000000L, j4) - c2;
                                        jArr3[i27] = m9689h;
                                        if (!zu3Var4.f33426r) {
                                            jArr3[i27] = m9689h + mu3Var2.f26878d.f20149h;
                                        }
                                        iArr[i27] = m13655D4;
                                        zArr[i27] = 1 == (((i3 >> 16) & 1) ^ 1);
                                        c3 += m13655D3;
                                        i27++;
                                    }
                                    zu3Var4.f33425q = c3;
                                    i17++;
                                }
                                i19++;
                            }
                            xu3 xu3Var4 = mu3Var2.f26878d.f20142a;
                            iu3 iu3Var3 = zu3Var2.f33409a;
                            Objects.requireNonNull(iu3Var3);
                            yu3 m9048a = xu3Var4.m9048a(iu3Var3.f24483a);
                            yt3 m9060e3 = xt3Var.m9060e(1935763834);
                            if (m9060e3 != null) {
                                Objects.requireNonNull(m9048a);
                                C6694la c6694la9 = m9060e3.f32650b;
                                int i29 = m9048a.f32658d;
                                c6694la9.m13635p(8);
                                if ((c6694la9.m13655D() & 1) == 1) {
                                    c6694la9.m13632s(8);
                                }
                                int m13629v = c6694la9.m13629v();
                                int m13649b2 = c6694la9.m13649b();
                                int i30 = zu3Var2.f33413e;
                                if (m13649b2 > i30) {
                                    StringBuilder sb = new StringBuilder(78);
                                    sb.append("Saiz sample count ");
                                    sb.append(m13649b2);
                                    sb.append(" is greater than fragment sample count");
                                    sb.append(i30);
                                    throw zzaha.zzb(sb.toString(), null);
                                }
                                if (m13629v == 0) {
                                    boolean[] zArr2 = zu3Var2.f33421m;
                                    i2 = 0;
                                    for (int i31 = 0; i31 < m13649b2; i31++) {
                                        int m13629v2 = c6694la9.m13629v();
                                        i2 += m13629v2;
                                        zArr2[i31] = m13629v2 > i29;
                                    }
                                } else {
                                    i2 = m13629v * m13649b2;
                                    Arrays.fill(zu3Var2.f33421m, 0, m13649b2, m13629v > i29);
                                }
                                Arrays.fill(zu3Var2.f33421m, m13649b2, zu3Var2.f33413e, false);
                                if (i2 > 0) {
                                    zu3Var2.m8170a(i2);
                                }
                            }
                            yt3 m9060e4 = xt3Var.m9060e(1935763823);
                            if (m9060e4 != null) {
                                C6694la c6694la10 = m9060e4.f32650b;
                                c6694la10.m13635p(8);
                                int m13655D5 = c6694la10.m13655D();
                                if ((m13655D5 & 1) == 1) {
                                    c6694la10.m13632s(8);
                                }
                                int m13649b3 = c6694la10.m13649b();
                                if (m13649b3 != 1) {
                                    StringBuilder sb2 = new StringBuilder(40);
                                    sb2.append("Unexpected saio entry count: ");
                                    sb2.append(m13649b3);
                                    throw zzaha.zzb(sb2.toString(), null);
                                }
                                zu3Var2.f33411c += zt3.m8183a(m13655D5) == 0 ? c6694la10.m13657B() : c6694la10.m13647d();
                            }
                            yt3 m9060e5 = xt3Var.m9060e(1936027235);
                            if (m9060e5 != null) {
                                m12816d(m9060e5.f32650b, 0, zu3Var2);
                            }
                            String str = m9048a != null ? m9048a.f32656b : null;
                            C6694la c6694la11 = null;
                            C6694la c6694la12 = null;
                            int i32 = 0;
                            while (i32 < xt3Var.f32291c.size()) {
                                yt3 yt3Var4 = xt3Var.f32291c.get(i32);
                                C6694la c6694la13 = yt3Var4.f32650b;
                                int i33 = yt3Var4.f33399a;
                                if (i33 == 1935828848) {
                                    c6694la13.m13635p(12);
                                    c6694la2 = c6694la11;
                                    c6694la = c6694la12;
                                    if (c6694la13.m13655D() == 1936025959) {
                                        c6694la2 = c6694la13;
                                        c6694la = c6694la12;
                                    }
                                } else {
                                    c6694la2 = c6694la11;
                                    c6694la = c6694la12;
                                    if (i33 == 1936158820) {
                                        c6694la13.m13635p(12);
                                        c6694la2 = c6694la11;
                                        c6694la = c6694la12;
                                        if (c6694la13.m13655D() == 1936025959) {
                                            c6694la = c6694la13;
                                            c6694la2 = c6694la11;
                                        }
                                    }
                                }
                                i32++;
                                c6694la11 = c6694la2;
                                c6694la12 = c6694la;
                            }
                            if (c6694la11 != null && c6694la12 != null) {
                                c6694la11.m13635p(8);
                                int m13655D6 = c6694la11.m13655D();
                                c6694la11.m13632s(4);
                                if (zt3.m8183a(m13655D6) == 1) {
                                    c6694la11.m13632s(4);
                                }
                                if (c6694la11.m13655D() != 1) {
                                    throw zzaha.zzc("Entry count in sbgp != 1 (unsupported).");
                                }
                                c6694la12.m13635p(8);
                                int m8183a = zt3.m8183a(c6694la12.m13655D());
                                c6694la12.m13632s(4);
                                if (m8183a == 1) {
                                    if (c6694la12.m13657B() == 0) {
                                        throw zzaha.zzc("Variable length description in sgpd found (unsupported)");
                                    }
                                } else if (m8183a >= 2) {
                                    c6694la12.m13632s(4);
                                }
                                if (c6694la12.m13657B() != 1) {
                                    throw zzaha.zzc("Entry count in sgpd != 1 (unsupported).");
                                }
                                c6694la12.m13632s(1);
                                int m13629v3 = c6694la12.m13629v();
                                if (c6694la12.m13629v() == 1) {
                                    int m13629v4 = c6694la12.m13629v();
                                    byte[] bArr4 = new byte[16];
                                    c6694la12.m13630u(bArr4, 0, 16);
                                    if (m13629v4 == 0) {
                                        int m13629v5 = c6694la12.m13629v();
                                        byte[] bArr5 = new byte[m13629v5];
                                        c6694la12.m13630u(bArr5, 0, m13629v5);
                                        bArr2 = bArr5;
                                    } else {
                                        bArr2 = null;
                                    }
                                    zu3Var2.f33420l = true;
                                    zu3Var2.f33422n = new yu3(true, str, m13629v4, bArr4, (m13629v3 & 240) >> 4, m13629v3 & 15, bArr2);
                                }
                            }
                            int size5 = xt3Var.f32291c.size();
                            for (int i34 = 0; i34 < size5; i34++) {
                                yt3 yt3Var5 = xt3Var.f32291c.get(i34);
                                if (yt3Var5.f33399a == 1970628964) {
                                    C6694la c6694la14 = yt3Var5.f32650b;
                                    c6694la14.m13635p(8);
                                    byte[] bArr6 = bArr3;
                                    c6694la14.m13630u(bArr6, 0, 16);
                                    if (Arrays.equals(bArr6, f27297b)) {
                                        m12816d(c6694la14, 16, zu3Var2);
                                    }
                                }
                            }
                            bArr = bArr3;
                            sparseArray = sparseArray5;
                            size3 = i18;
                            byte[] bArr7 = bArr;
                            i9++;
                            sparseArray4 = sparseArray;
                            bArr3 = bArr7;
                        }
                    }
                    byte[] bArr8 = bArr3;
                    sparseArray = sparseArray4;
                    bArr = bArr8;
                    byte[] bArr72 = bArr;
                    i9++;
                    sparseArray4 = sparseArray;
                    bArr3 = bArr72;
                }
                zzn m12815i2 = m12815i(pop.f32291c);
                if (m12815i2 != null) {
                    int size6 = this.f27307e.size();
                    for (int i35 = 0; i35 < size6; i35++) {
                        mu3 valueAt = this.f27307e.valueAt(i35);
                        xu3 xu3Var5 = valueAt.f26878d.f20142a;
                        iu3 iu3Var4 = valueAt.f26876b.f33409a;
                        int i36 = C7101wa.f31475a;
                        yu3 m9048a2 = xu3Var5.m9048a(iu3Var4.f24483a);
                        zzn m7852a = m12815i2.m7852a(m9048a2 != null ? m9048a2.f32656b : null);
                        C6947s4 m10418a = valueAt.f26878d.f20142a.f32303f.m10418a();
                        m10418a.m11126q(m7852a);
                        valueAt.f26875a.mo8704d(m10418a.m11168I());
                    }
                }
                nu3Var = this;
                if (this.f27324v != -9223372036854775807L) {
                    int size7 = this.f27307e.size();
                    for (int i37 = 0; i37 < size7; i37++) {
                        mu3 valueAt2 = this.f27307e.valueAt(i37);
                        long j5 = this.f27324v;
                        int i38 = valueAt2.f26880f;
                        while (true) {
                            zu3 zu3Var5 = valueAt2.f26876b;
                            if (i38 < zu3Var5.f33413e && zu3Var5.m8169b(i38) < j5) {
                                if (valueAt2.f26876b.f33419k[i38]) {
                                    valueAt2.f26883i = i38;
                                }
                                i38++;
                            }
                        }
                    }
                    this.f27324v = -9223372036854775807L;
                    nu3Var = this;
                }
            } else {
                nu3 nu3Var2 = nu3Var;
                nu3Var = nu3Var2;
                if (!nu3Var2.f27315m.isEmpty()) {
                    nu3Var2.f27315m.peek().m9061d(pop);
                    nu3Var = nu3Var2;
                }
            }
        }
        m12819a();
    }

    /* renamed from: c */
    private static int m12817c(int i) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw zzaha.zzb(sb.toString(), null);
    }

    /* renamed from: d */
    private static void m12816d(C6694la c6694la, int i, zu3 zu3Var) {
        c6694la.m13635p(i + 8);
        int m13655D = c6694la.m13655D() & 16777215;
        if ((m13655D & 1) == 0) {
            boolean z = (m13655D & 2) != 0;
            int m13649b = c6694la.m13649b();
            if (m13649b == 0) {
                Arrays.fill(zu3Var.f33421m, 0, zu3Var.f33413e, false);
                return;
            }
            int i2 = zu3Var.f33413e;
            if (m13649b == i2) {
                Arrays.fill(zu3Var.f33421m, 0, m13649b, z);
                zu3Var.m8170a(c6694la.m13639l());
                c6694la.m13630u(zu3Var.f33423o.m13634q(), 0, zu3Var.f33423o.m13638m());
                zu3Var.f33423o.m13635p(0);
                zu3Var.f33424p = false;
                return;
            }
            StringBuilder sb = new StringBuilder(80);
            sb.append("Senc sample count ");
            sb.append(m13649b);
            sb.append(" is different from fragment sample count");
            sb.append(i2);
            throw zzaha.zzb(sb.toString(), null);
        }
        throw zzaha.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* renamed from: i */
    private static zzn m12815i(List<yt3> list) {
        ArrayList arrayList;
        int size = list.size();
        int i = 0;
        ArrayList arrayList2 = null;
        while (true) {
            arrayList = arrayList2;
            if (i >= size) {
                break;
            }
            yt3 yt3Var = list.get(i);
            ArrayList arrayList3 = arrayList;
            if (yt3Var.f33399a == 1886614376) {
                arrayList3 = arrayList;
                if (arrayList == null) {
                    arrayList3 = new ArrayList();
                }
                byte[] m13634q = yt3Var.f32650b.m13634q();
                UUID m10174a = uu3.m10174a(m13634q);
                if (m10174a == null) {
                    Log.w("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList3.add(new zzm(m10174a, null, "video/mp4", m13634q));
                }
            }
            i++;
            arrayList2 = arrayList3;
        }
        if (arrayList == null) {
            return null;
        }
        return new zzn(arrayList);
    }

    /* renamed from: j */
    private static final iu3 m12814j(SparseArray<iu3> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        iu3 iu3Var = sparseArray.get(i);
        Objects.requireNonNull(iu3Var);
        return iu3Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0478, code lost:
        if (r10.f27316n.isEmpty() != false) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x047b, code lost:
        r0 = r10.f27316n.removeFirst();
        r10.f27323u -= r0.f26285b;
        r0 = r0.f26284a;
        r0 = r10.f27303E;
        r0 = r0.length;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x04a9, code lost:
        if (r14 >= r0) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x04ac, code lost:
        r0[r14].mo8705c(r0 + r0, 1, r0.f26285b, r10.f27323u, null);
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x04ce, code lost:
        if (r12.m13070i() != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04d1, code lost:
        r10.f27327y = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04d6, code lost:
        r10.f27317o = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x04de, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0137, code lost:
        if (r10.f27317o != 3) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:?, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x013a, code lost:
        r0 = r12.m13072g();
        r10.f27328z = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014e, code lost:
        if (r12.f26880f >= r12.f26883i) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0151, code lost:
        ((com.google.android.gms.internal.ads.pq3) r13).m12196p(r0, false);
        r0 = r12.m13068k();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0162, code lost:
        if (r0 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0168, code lost:
        r0 = r12.f26876b.f33423o;
        r0 = r0.f32658d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0178, code lost:
        if (r0 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x017b, code lost:
        r0.m13632s(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x018c, code lost:
        if (r12.f26876b.m8168c(r12.f26880f) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x018f, code lost:
        r0.m13632s(r0.m13628w() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x019e, code lost:
        if (r12.m13070i() != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a1, code lost:
        r10.f27327y = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a6, code lost:
        r10.f27317o = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01b9, code lost:
        if (r12.f26878d.f20142a.f32304g != 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01bc, code lost:
        r10.f27328z = r0 - 8;
        ((com.google.android.gms.internal.ads.pq3) r13).m12196p(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01e3, code lost:
        if ("audio/ac4".equals(r12.f26878d.f20142a.f32303f.f30511n) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01e6, code lost:
        r10.f27299A = r12.m13069j(r10.f27328z, 7);
        com.google.android.gms.internal.ads.dq3.m15710b(r10.f27328z, r10.f27312j);
        com.google.android.gms.internal.ads.wr3.m9478b(r12.f26875a, r10.f27312j, 7);
        r14 = r10.f27299A + 7;
        r10.f27299A = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x021e, code lost:
        r14 = r12.m13069j(r10.f27328z, 0);
        r10.f27299A = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x022f, code lost:
        r10.f27328z += r14;
        r10.f27317o = 4;
        r10.f27300B = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0244, code lost:
        r0 = r12.f26878d.f20142a;
        r0 = r12.f26875a;
        r0 = r12.m13074e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x025e, code lost:
        if (r0.f32307j != 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0261, code lost:
        r0 = r10.f27299A;
        r0 = r10.f27328z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0271, code lost:
        if (r0 >= r0) goto L383;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0274, code lost:
        r10.f27299A += com.google.android.gms.internal.ads.wr3.m9479a(r0, r13, r0 - r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0290, code lost:
        r0 = r10.f27309g.m13634q();
        r0[0] = (byte) 0;
        r0[1] = (byte) 0;
        r0[2] = (byte) 0;
        r0 = r0.f32307j;
        r0 = 4 - r0;
        r14 = 1;
        r15 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02c4, code lost:
        if (r10.f27299A >= r10.f27328z) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02c7, code lost:
        r0 = r10.f27300B;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02cf, code lost:
        if (r0 != 0) goto L385;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02d2, code lost:
        ((com.google.android.gms.internal.ads.pq3) r13).mo9883k(r0, r0, r0 + 1, false);
        r10.f27309g.m13635p(0);
        r0 = r10.f27309g.m13655D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02f5, code lost:
        if (r0 <= 0) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02f8, code lost:
        r10.f27300B = r0 - 1;
        r10.f27308f.m13635p(0);
        com.google.android.gms.internal.ads.wr3.m9478b(r0, r10.f27308f, 4);
        com.google.android.gms.internal.ads.wr3.m9478b(r0, r10.f27309g, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0322, code lost:
        if (r10.f27304F.length <= 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0325, code lost:
        r0 = r0.f32303f.f30511n;
        r0 = r0[4];
        r0 = com.google.android.gms.internal.ads.C6322ba.f20319a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0341, code lost:
        if ("video/avc".equals(r0) == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x034b, code lost:
        if ((r0 & 31) == r15) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0351, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x035f, code lost:
        if ("video/hevc".equals(r0) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x036c, code lost:
        if (((r0 & 126) >> r14) != 39) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0372, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0375, code lost:
        r10.f27301C = r0;
        r10.f27299A += 5;
        r10.f27328z += r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x039a, code lost:
        throw com.google.android.gms.internal.ads.zzaha.zzb("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x039f, code lost:
        if (r10.f27301C == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x03a2, code lost:
        r10.f27310h.m13642i(r0);
        ((com.google.android.gms.internal.ads.pq3) r13).mo9883k(r10.f27310h.m13634q(), 0, r10.f27300B, false);
        com.google.android.gms.internal.ads.wr3.m9478b(r0, r10.f27310h, r10.f27300B);
        r14 = r10.f27300B;
        r0 = com.google.android.gms.internal.ads.C6322ba.m16423a(r10.f27310h.m13634q(), r10.f27310h.m13638m());
        r10.f27310h.m13635p("video/hevc".equals(r0.f32303f.f30511n) ? 1 : 0);
        r10.f27310h.m13637n(r0);
        com.google.android.gms.internal.ads.mq3.m13105a(r0, r10.f27310h, r10.f27304F);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x041c, code lost:
        r14 = com.google.android.gms.internal.ads.wr3.m9479a(r0, r13, r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0427, code lost:
        r10.f27299A += r14;
        r10.f27300B -= r14;
        r15 = 6;
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0447, code lost:
        r0 = r12.m13071h();
        r0 = r12.m13068k();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0453, code lost:
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0456, code lost:
        r11 = r0.f32657c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x045e, code lost:
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0460, code lost:
        r0.mo8705c(r0, r0, r10.f27328z, 0, r11);
     */
    /* JADX WARN: Type inference failed for: r0v247, types: [long] */
    /* JADX WARN: Type inference failed for: r0v299, types: [long] */
    /* JADX WARN: Type inference failed for: r0v392, types: [long] */
    /* JADX WARN: Type inference failed for: r0v399, types: [long] */
    /* JADX WARN: Type inference failed for: r0v401, types: [long] */
    /* JADX WARN: Type inference failed for: r0v405, types: [long] */
    /* JADX WARN: Type inference failed for: r0v411, types: [long] */
    /* JADX WARN: Type inference failed for: r0v414, types: [long] */
    /* JADX WARN: Type inference failed for: r0v416, types: [long] */
    /* JADX WARN: Type inference failed for: r0v445, types: [long] */
    /* JADX WARN: Type inference failed for: r0v447, types: [long] */
    /* JADX WARN: Type inference failed for: r0v481, types: [long] */
    /* JADX WARN: Type inference failed for: r0v483, types: [long] */
    /* JADX WARN: Type inference failed for: r0v487, types: [long] */
    /* JADX WARN: Type inference failed for: r0v489, types: [long] */
    /* JADX WARN: Type inference failed for: r0v491, types: [long] */
    /* JADX WARN: Type inference failed for: r0v493, types: [long] */
    /* JADX WARN: Type inference failed for: r0v495, types: [long] */
    /* JADX WARN: Type inference failed for: r0v618, types: [long] */
    /* JADX WARN: Type inference failed for: r0v633, types: [long] */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9044e(com.google.android.gms.internal.ads.vq3 r11, com.google.android.gms.internal.ads.rr3 r12) {
        /*
            Method dump skipped, instructions count: 3234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.nu3.mo9044e(com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.rr3):int");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        return wu3.m9440a(vq3Var);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f27302D = xq3Var;
        m12819a();
        yr3[] yr3VarArr = new yr3[2];
        this.f27303E = yr3VarArr;
        int i = 0;
        yr3[] yr3VarArr2 = (yr3[]) C7101wa.m9717K(yr3VarArr, 0);
        this.f27303E = yr3VarArr2;
        for (yr3 yr3Var : yr3VarArr2) {
            yr3Var.mo8704d(f27298c);
        }
        this.f27304F = new yr3[this.f27306d.size()];
        int i2 = 100;
        while (i < this.f27304F.length) {
            yr3 mo8690o = this.f27302D.mo8690o(i2, 3);
            mo8690o.mo8704d(this.f27306d.get(i));
            this.f27304F[i] = mo8690o;
            i++;
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        int size = this.f27307e.size();
        for (int i = 0; i < size; i++) {
            this.f27307e.valueAt(i).m13075d();
        }
        this.f27316n.clear();
        this.f27323u = 0;
        this.f27324v = j2;
        this.f27315m.clear();
        m12819a();
    }
}
