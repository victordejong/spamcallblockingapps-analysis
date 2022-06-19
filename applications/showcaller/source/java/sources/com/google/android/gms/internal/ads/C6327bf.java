package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Stack;
/* renamed from: com.google.android.gms.internal.ads.bf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bf.class */
public final class C6327bf implements AbstractC6771nd, AbstractC7030ud {

    /* renamed from: a */
    public static final AbstractC6845pd f20409a = new C7179ye();

    /* renamed from: b */
    private static final int f20410b = C6961si.m11010l("qt  ");

    /* renamed from: g */
    private int f20415g;

    /* renamed from: h */
    private int f20416h;

    /* renamed from: i */
    private long f20417i;

    /* renamed from: j */
    private int f20418j;

    /* renamed from: k */
    private C6665ki f20419k;

    /* renamed from: l */
    private int f20420l;

    /* renamed from: m */
    private int f20421m;

    /* renamed from: n */
    private AbstractC6808od f20422n;

    /* renamed from: o */
    private C7216ze[] f20423o;

    /* renamed from: p */
    private long f20424p;

    /* renamed from: q */
    private boolean f20425q;

    /* renamed from: e */
    private final C6665ki f20413e = new C6665ki(16);

    /* renamed from: f */
    private final Stack<C6587ie> f20414f = new Stack<>();

    /* renamed from: c */
    private final C6665ki f20411c = new C6665ki(C6591ii.f24281a);

    /* renamed from: d */
    private final C6665ki f20412d = new C6665ki(4);

    /* renamed from: c */
    private final void m16388c() {
        this.f20415g = 0;
        this.f20418j = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* renamed from: h */
    private final void m16387h(long j) {
        zzaru zzaruVar;
        C6401df m11552a;
        while (!this.f20414f.isEmpty() && this.f20414f.peek().f24215P0 == j) {
            C6587ie pop = this.f20414f.pop();
            if (pop.f25197O0 == C6661ke.f25107B) {
                ArrayList arrayList = new ArrayList();
                C6919rd c6919rd = new C6919rd();
                C6624je m14433f = pop.m14433f(C6661ke.f25196z0);
                if (m14433f != null) {
                    zzaru m11550c = C6920re.m11550c(m14433f, this.f20425q);
                    zzaruVar = m11550c;
                    if (m11550c != null) {
                        c6919rd.m11609a(m11550c);
                        zzaruVar = m11550c;
                    }
                } else {
                    zzaruVar = null;
                }
                char c = 1;
                char c2 = 65535;
                zzaru zzaruVar2 = zzaruVar;
                for (int i = 0; i < pop.f24217R0.size(); i++) {
                    C6587ie c6587ie = pop.f24217R0.get(i);
                    if (c6587ie.f25197O0 == C6661ke.f25111D && (m11552a = C6920re.m11552a(c6587ie, pop.m14433f(C6661ke.f25109C), -9223372036854775807L, null, this.f20425q)) != null) {
                        C6513gf m11551b = C6920re.m11551b(m11552a, c6587ie.m14432g(C6661ke.f25113E).m14432g(C6661ke.f25115F).m14432g(C6661ke.f25117G), c6919rd);
                        if (m11551b.f23316a != 0) {
                            C7216ze c7216ze = new C7216ze(m11552a, m11551b, this.f20422n.mo12694p(i, m11552a.f21598b));
                            zzanm m8106g = m11552a.f21602f.m8106g(m11551b.f23319d + 30);
                            zzanm zzanmVar = m8106g;
                            if (m11552a.f21598b == 1) {
                                zzanm zzanmVar2 = m8106g;
                                if (c6919rd.m11608b()) {
                                    zzanmVar2 = m8106g.m8105h(c6919rd.f28856c, c6919rd.f28857d);
                                }
                                zzanmVar = zzanmVar2;
                                if (zzaruVar2 != null) {
                                    zzanmVar = zzanmVar2.m8103j(zzaruVar2);
                                }
                            }
                            c7216ze.f32912c.mo9666c(zzanmVar);
                            c = Math.max((long) c, m11552a.f21601e);
                            arrayList.add(c7216ze);
                            ?? r0 = m11551b.f23317b[0];
                            if (r0 < c2) {
                                c2 = r0;
                            }
                        }
                    }
                }
                this.f20424p = c;
                this.f20423o = (C7216ze[]) arrayList.toArray(new C7216ze[arrayList.size()]);
                this.f20422n.mo12695h();
                this.f20422n.mo12696b(this);
                this.f20414f.clear();
                this.f20415g = 2;
            } else if (!this.f20414f.isEmpty()) {
                this.f20414f.peek().m14434e(pop);
            }
        }
        if (this.f20415g != 2) {
            m16388c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7030ud
    /* renamed from: a */
    public final long mo10352a(long j) {
        C7216ze[] c7216zeArr = this.f20423o;
        int length = c7216zeArr.length;
        char c = 65535;
        int i = 0;
        while (i < length) {
            C6513gf c6513gf = c7216zeArr[i].f32911b;
            int m14957a = c6513gf.m14957a(j);
            int i2 = m14957a;
            if (m14957a == -1) {
                i2 = c6513gf.m14956b(j);
            }
            ?? r0 = c6513gf.f23317b[i2];
            char c2 = c;
            if (r0 < c) {
                c2 = r0;
            }
            i++;
            c = c2;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7030ud
    /* renamed from: b */
    public final long mo10351b() {
        return this.f20424p;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: d */
    public final void mo9615d(long j, long j2) {
        this.f20414f.clear();
        this.f20418j = 0;
        this.f20420l = 0;
        this.f20421m = 0;
        if (j == 0) {
            m16388c();
            return;
        }
        C7216ze[] c7216zeArr = this.f20423o;
        if (c7216zeArr == null) {
            return;
        }
        for (C7216ze c7216ze : c7216zeArr) {
            C6513gf c6513gf = c7216ze.f32911b;
            int m14957a = c6513gf.m14957a(j2);
            int i = m14957a;
            if (m14957a == -1) {
                i = c6513gf.m14956b(j2);
            }
            c7216ze.f32913d = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: e */
    public final int mo9614e(C6734md c6734md, C6956sd c6956sd) {
        C7216ze[] c7216zeArr;
        int i;
        int i2;
        char c;
        boolean z;
        boolean z2;
        while (true) {
            int i3 = this.f20415g;
            if (i3 == 0) {
                if (this.f20418j == 0) {
                    if (!c6734md.m13295b(this.f20413e.f25221a, 0, 8, true)) {
                        return -1;
                    }
                    this.f20418j = 8;
                    this.f20413e.m13899i(0);
                    this.f20417i = this.f20413e.m13892p();
                    this.f20416h = this.f20413e.m13890r();
                }
                if (this.f20417i == 1) {
                    c6734md.m13295b(this.f20413e.f25221a, 8, 8, false);
                    this.f20418j += 8;
                    this.f20417i = this.f20413e.m13886v();
                }
                int i4 = this.f20416h;
                if (i4 == C6661ke.f25107B || i4 == C6661ke.f25111D || i4 == C6661ke.f25113E || i4 == C6661ke.f25115F || i4 == C6661ke.f25117G || i4 == C6661ke.f25134P) {
                    long m13289h = (c6734md.m13289h() + this.f20417i) - this.f20418j;
                    this.f20414f.add(new C6587ie(this.f20416h, m13289h));
                    if (this.f20417i == this.f20418j) {
                        m16387h(m13289h);
                    } else {
                        m16388c();
                    }
                } else {
                    if (i4 == C6661ke.f25136R || i4 == C6661ke.f25109C || i4 == C6661ke.f25137S || i4 == C6661ke.f25138T || i4 == C6661ke.f25168l0 || i4 == C6661ke.f25170m0 || i4 == C6661ke.f25172n0 || i4 == C6661ke.f25135Q || i4 == C6661ke.f25174o0 || i4 == C6661ke.f25176p0 || i4 == C6661ke.f25178q0 || i4 == C6661ke.f25180r0 || i4 == C6661ke.f25182s0 || i4 == C6661ke.f25133O || i4 == C6661ke.f25145a || i4 == C6661ke.f25196z0) {
                        C6367ci.m16039d(this.f20418j == 8);
                        C6367ci.m16039d(this.f20417i <= 2147483647L);
                        C6665ki c6665ki = new C6665ki((int) this.f20417i);
                        this.f20419k = c6665ki;
                        System.arraycopy(this.f20413e.f25221a, 0, c6665ki.f25221a, 0, 8);
                    } else {
                        this.f20419k = null;
                    }
                    this.f20415g = 1;
                }
            } else if (i3 != 1) {
                char c2 = 65535;
                int i5 = 0;
                int i6 = -1;
                while (true) {
                    c7216zeArr = this.f20423o;
                    if (i5 >= c7216zeArr.length) {
                        break;
                    }
                    C7216ze c7216ze = c7216zeArr[i5];
                    int i7 = c7216ze.f32913d;
                    C6513gf c6513gf = c7216ze.f32911b;
                    if (i7 == c6513gf.f23316a) {
                        c = c2;
                    } else {
                        ?? r0 = c6513gf.f23317b[i7];
                        c = c2;
                        if (r0 < c2) {
                            i6 = i5;
                            c = r0;
                        }
                    }
                    i5++;
                    c2 = c;
                }
                if (i6 == -1) {
                    i = -1;
                } else {
                    C7216ze c7216ze2 = c7216zeArr[i6];
                    AbstractC7104wd abstractC7104wd = c7216ze2.f32912c;
                    int i8 = c7216ze2.f32913d;
                    C6513gf c6513gf2 = c7216ze2.f32911b;
                    ?? r02 = c6513gf2.f23317b[i8];
                    int i9 = c6513gf2.f23318c[i8];
                    int i10 = i9;
                    char c3 = r02;
                    if (c7216ze2.f32910a.f21603g == 1) {
                        c3 = r02 + 8;
                        i10 = i9 - 8;
                    }
                    long m13289h2 = (c3 - c6734md.m13289h()) + this.f20420l;
                    if (m13289h2 < 0 || m13289h2 >= 262144) {
                        c6956sd.f29450a = c3;
                        i = 1;
                    } else {
                        c6734md.m13293d((int) m13289h2, false);
                        int i11 = c7216ze2.f32910a.f21607k;
                        if (i11 != 0) {
                            byte[] bArr = this.f20412d.f25221a;
                            bArr[0] = (byte) 0;
                            bArr[1] = (byte) 0;
                            bArr[2] = (byte) 0;
                            int i12 = 4 - i11;
                            while (true) {
                                i2 = i10;
                                if (this.f20420l >= i10) {
                                    break;
                                }
                                int i13 = this.f20421m;
                                if (i13 == 0) {
                                    c6734md.m13295b(this.f20412d.f25221a, i12, i11, false);
                                    this.f20412d.m13899i(0);
                                    this.f20421m = this.f20412d.m13887u();
                                    this.f20411c.m13899i(0);
                                    abstractC7104wd.mo9665d(this.f20411c, 4);
                                    this.f20420l += 4;
                                    i10 += i12;
                                } else {
                                    int mo9667b = abstractC7104wd.mo9667b(c6734md, i13, false);
                                    this.f20420l += mo9667b;
                                    this.f20421m -= mo9667b;
                                }
                            }
                        } else {
                            while (true) {
                                int i14 = this.f20420l;
                                i2 = i10;
                                if (i14 >= i10) {
                                    break;
                                }
                                int mo9667b2 = abstractC7104wd.mo9667b(c6734md, i10 - i14, false);
                                this.f20420l += mo9667b2;
                                this.f20421m -= mo9667b2;
                            }
                        }
                        C6513gf c6513gf3 = c7216ze2.f32911b;
                        abstractC7104wd.mo9668a(c6513gf3.f23320e[i8], c6513gf3.f23321f[i8], i2, 0, null);
                        c7216ze2.f32913d++;
                        this.f20420l = 0;
                        this.f20421m = 0;
                        i = 0;
                    }
                }
                return i;
            } else {
                long j = this.f20417i - this.f20418j;
                long m13289h3 = c6734md.m13289h();
                C6665ki c6665ki2 = this.f20419k;
                if (c6665ki2 != null) {
                    c6734md.m13295b(c6665ki2.f25221a, this.f20418j, (int) j, false);
                    if (this.f20416h == C6661ke.f25145a) {
                        C6665ki c6665ki3 = this.f20419k;
                        c6665ki3.m13899i(8);
                        if (c6665ki3.m13890r() == f20410b) {
                            z2 = true;
                            break;
                        }
                        c6665ki3.m13898j(4);
                        while (c6665ki3.m13904d() > 0) {
                            if (c6665ki3.m13890r() == f20410b) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                        this.f20425q = z2;
                    } else if (!this.f20414f.isEmpty()) {
                        this.f20414f.peek().m14435d(new C6624je(this.f20416h, this.f20419k));
                    }
                } else if (j < 262144) {
                    c6734md.m13293d((int) j, false);
                } else {
                    c6956sd.f29450a = c6734md.m13289h() + j;
                    z = true;
                    m16387h(m13289h3 + j);
                    if (z && this.f20415g != 2) {
                        return 1;
                    }
                }
                z = false;
                m16387h(m13289h3 + j);
                if (z) {
                    return 1;
                }
                continue;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: f */
    public final boolean mo9613f(C6734md c6734md) {
        return C6364cf.m16074b(c6734md);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: g */
    public final void mo9612g(AbstractC6808od abstractC6808od) {
        this.f20422n = abstractC6808od;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7030ud
    public final boolean zza() {
        return true;
    }
}
