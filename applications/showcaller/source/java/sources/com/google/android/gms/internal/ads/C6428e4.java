package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.gms.internal.ads.e4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e4.class */
public final class C6428e4 extends AbstractC7019u2 {

    /* renamed from: A */
    private C6318b6 f21994A;

    /* renamed from: C */
    private long f21996C;

    /* renamed from: b */
    final hn3 f21998b;

    /* renamed from: c */
    final C6504g6 f21999c;

    /* renamed from: d */
    private final AbstractC6986t6[] f22000d;

    /* renamed from: e */
    private final fn3 f22001e;

    /* renamed from: f */
    private final AbstractC6693l9 f22002f;

    /* renamed from: g */
    private final AbstractC6762n4 f22003g;

    /* renamed from: h */
    private final C6836p4 f22004h;

    /* renamed from: i */
    private final C6915r9<AbstractC6541h6> f22005i;

    /* renamed from: n */
    private final xk3 f22010n;

    /* renamed from: o */
    private final rz0 f22011o;

    /* renamed from: p */
    private final Looper f22012p;

    /* renamed from: q */
    private final on3 f22013q;

    /* renamed from: r */
    private final AbstractC7210z8 f22014r;

    /* renamed from: s */
    private int f22015s;

    /* renamed from: t */
    private int f22016t;

    /* renamed from: u */
    private boolean f22017u;

    /* renamed from: v */
    private int f22018v;

    /* renamed from: w */
    private C7134x6 f22019w;

    /* renamed from: x */
    private C6504g6 f22020x;

    /* renamed from: y */
    private C6763n5 f22021y;

    /* renamed from: z */
    private C6763n5 f22022z;

    /* renamed from: m */
    private final boolean f22009m = true;

    /* renamed from: j */
    private final CopyOnWriteArraySet<AbstractC6501g3> f22006j = new CopyOnWriteArraySet<>();

    /* renamed from: l */
    private final List<C6390d4> f22008l = new ArrayList();

    /* renamed from: D */
    private em3 f21997D = new em3(0);

    /* renamed from: k */
    private final C6728m7 f22007k = new C6728m7();

    /* renamed from: B */
    private int f21995B = -1;

    @SuppressLint({"HandlerLeak"})
    public C6428e4(AbstractC6986t6[] abstractC6986t6Arr, fn3 fn3Var, xk3 xk3Var, AbstractC7095w4 abstractC7095w4, on3 on3Var, rz0 rz0Var, boolean z, C7134x6 c7134x6, long j, long j2, C7204z2 c7204z2, long j3, boolean z2, AbstractC7210z8 abstractC7210z8, Looper looper, AbstractC6764n6 abstractC6764n6, C6504g6 c6504g6, byte[] bArr) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C7101wa.f31479e;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.15.0] [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        int length = abstractC6986t6Arr.length;
        this.f22000d = abstractC6986t6Arr;
        Objects.requireNonNull(fn3Var);
        this.f22001e = fn3Var;
        this.f22010n = xk3Var;
        this.f22013q = on3Var;
        this.f22011o = rz0Var;
        this.f22019w = c7134x6;
        this.f22012p = looper;
        this.f22014r = abstractC7210z8;
        C6915r9<AbstractC6541h6> c6915r9 = new C6915r9<>(looper, abstractC7210z8, new AbstractC6841p9(abstractC6764n6) { // from class: com.google.android.gms.internal.ads.i3

            /* renamed from: a */
            private final AbstractC6764n6 f24126a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24126a = abstractC6764n6;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6841p9
            /* renamed from: a */
            public final void mo8157a(Object obj, C6619j9 c6619j9) {
                AbstractC6541h6 abstractC6541h6 = (AbstractC6541h6) obj;
                new C6578i6(c6619j9);
            }
        });
        this.f22005i = c6915r9;
        hn3 hn3Var = new hn3(new C7060v6[2], new mm3[2], null, null);
        this.f21998b = hn3Var;
        C6467f6 c6467f6 = new C6467f6();
        c6467f6.m15308c(1, 2, 12, 13, 14, 15, 16, 17, 18, 19);
        c6467f6.m15309b(28, true);
        c6467f6.m15307d(c6504g6);
        C6504g6 m15306e = c6467f6.m15306e();
        this.f21999c = m15306e;
        C6467f6 c6467f62 = new C6467f6();
        c6467f62.m15307d(m15306e);
        c6467f62.m15310a(3);
        c6467f62.m15310a(9);
        this.f22020x = c6467f62.m15306e();
        C6763n5 c6763n5 = C6763n5.f26969a;
        this.f22021y = c6763n5;
        this.f22022z = c6763n5;
        this.f22002f = abstractC7210z8.mo8486a(looper, null);
        AbstractC6762n4 abstractC6762n4 = new AbstractC6762n4(this) { // from class: com.google.android.gms.internal.ads.t3

            /* renamed from: a */
            private final C6428e4 f29803a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29803a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6762n4
            /* renamed from: a */
            public final void mo10845a(C6725m4 c6725m4) {
                this.f29803a.m15575h(c6725m4);
            }
        };
        this.f22003g = abstractC6762n4;
        this.f21994A = C6318b6.m16448a(hn3Var);
        rz0Var.m11229P(abstractC6764n6, looper);
        c6915r9.m11656b(rz0Var);
        on3Var.mo9546b(new Handler(looper), rz0Var);
        this.f22004h = new C6836p4(abstractC6986t6Arr, fn3Var, hn3Var, abstractC7095w4, on3Var, 0, false, rz0Var, c7134x6, c7204z2, 500L, false, looper, abstractC7210z8, abstractC6762n4, null);
    }

    /* renamed from: j */
    private final int m15573j() {
        if (this.f21994A.f20278b.m12364k()) {
            return this.f21995B;
        }
        C6318b6 c6318b6 = this.f21994A;
        return c6318b6.f20278b.mo12360o(c6318b6.f20279c.f20100a, this.f22007k).f26453d;
    }

    /* renamed from: k */
    private final long m15572k(C6318b6 c6318b6) {
        if (c6318b6.f20278b.m12364k()) {
            return C7130x2.m9368b(this.f21996C);
        }
        if (c6318b6.f20279c.m16491b()) {
            return c6318b6.f20296t;
        }
        AbstractC6839p7 abstractC6839p7 = c6318b6.f20278b;
        mk3 mk3Var = c6318b6.f20279c;
        long j = c6318b6.f20296t;
        m15567s(abstractC6839p7, mk3Var, j);
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:171:0x0717, code lost:
        if (r0.mo12368f(mo12992w(), r14.f30477a, 0).f27460k != false) goto L172;
     */
    /* JADX WARN: Removed duplicated region for block: B:190:0x07a3  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x07c7  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x07fc  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0825 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x042b  */
    /* JADX WARN: Type inference failed for: r0v235, types: [long] */
    /* JADX WARN: Type inference failed for: r0v250, types: [long] */
    /* JADX WARN: Type inference failed for: r0v280, types: [long] */
    /* JADX WARN: Type inference failed for: r0v282, types: [long] */
    /* JADX WARN: Type inference failed for: r0v284, types: [long] */
    /* JADX WARN: Type inference failed for: r0v286, types: [long] */
    /* JADX WARN: Type inference failed for: r0v301, types: [long] */
    /* JADX WARN: Type inference failed for: r0v305, types: [long] */
    /* JADX WARN: Type inference failed for: r0v307, types: [long] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m15571l(com.google.android.gms.internal.ads.C6318b6 r15, int r16, int r17, boolean r18, boolean r19, int r20, long r21, int r23) {
        /*
            Method dump skipped, instructions count: 2086
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6428e4.m15571l(com.google.android.gms.internal.ads.b6, int, int, boolean, boolean, int, long, int):void");
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: o */
    private static long m15570o(C6318b6 c6318b6) {
        C6802o7 c6802o7 = new C6802o7();
        C6728m7 c6728m7 = new C6728m7();
        c6318b6.f20278b.mo12360o(c6318b6.f20279c.f20100a, c6728m7);
        ?? r0 = c6318b6.f20280d;
        char c = r0;
        if (r0 == -9223372036854775807L) {
            c = 0;
            long j = c6318b6.f20278b.mo12368f(c6728m7.f26453d, c6802o7, 0L).f27464o;
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x010f, code lost:
        if (r16.mo12367h(r0, r14.f22007k, false).f26453d != r16.mo12360o(r15.f20100a, r14.f22007k).f26453d) goto L29;
     */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.C6318b6 m15569p(com.google.android.gms.internal.ads.C6318b6 r15, com.google.android.gms.internal.ads.AbstractC6839p7 r16, android.util.Pair<java.lang.Object, java.lang.Long> r17) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6428e4.m15569p(com.google.android.gms.internal.ads.b6, com.google.android.gms.internal.ads.p7, android.util.Pair):com.google.android.gms.internal.ads.b6");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r9 >= r8.mo11687a()) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.util.Pair<java.lang.Object, java.lang.Long> m15568r(com.google.android.gms.internal.ads.AbstractC6839p7 r8, int r9, long r10) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0.m12364k()
            if (r0 == 0) goto L22
            r0 = r7
            r1 = r9
            r0.f21995B = r1
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L1a
            r0 = 0
            r12 = r0
        L1a:
            r0 = r7
            r1 = r12
            r0.f21996C = r1
            r0 = 0
            return r0
        L22:
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L32
            r0 = r9
            r14 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.mo11687a()
            if (r0 < r1) goto L4d
        L32:
            r0 = r8
            r1 = 0
            int r0 = r0.mo12369e(r1)
            r14 = r0
            r0 = r8
            r1 = r14
            r2 = r7
            com.google.android.gms.internal.ads.o7 r2 = r2.f30477a
            r3 = 0
            com.google.android.gms.internal.ads.o7 r0 = r0.mo12368f(r1, r2, r3)
            long r0 = r0.f27464o
            r10 = r0
            r0 = 0
            long r0 = com.google.android.gms.internal.ads.C7130x2.m9369a(r0)
            r10 = r0
        L4d:
            r0 = r8
            r1 = r7
            com.google.android.gms.internal.ads.o7 r1 = r1.f30477a
            r2 = r7
            com.google.android.gms.internal.ads.m7 r2 = r2.f22007k
            r3 = r14
            r4 = r10
            long r4 = com.google.android.gms.internal.ads.C7130x2.m9368b(r4)
            android.util.Pair r0 = r0.m12362m(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6428e4.m15568r(com.google.android.gms.internal.ads.p7, int, long):android.util.Pair");
    }

    /* renamed from: s */
    private final long m15567s(AbstractC6839p7 abstractC6839p7, mk3 mk3Var, long j) {
        abstractC6839p7.mo12360o(mk3Var.f20100a, this.f22007k);
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public static boolean m15566v(C6318b6 c6318b6) {
        return c6318b6.f20282f == 3 && c6318b6.f20289m && c6318b6.f20290n == 0;
    }

    /* renamed from: A */
    public final void m15590A(AbstractC6541h6 abstractC6541h6) {
        this.f22005i.m11656b(abstractC6541h6);
    }

    /* renamed from: B */
    public final void m15589B(AbstractC6501g3 abstractC6501g3) {
        this.f22006j.add(abstractC6501g3);
    }

    /* renamed from: C */
    public final int m15588C() {
        return this.f21994A.f20282f;
    }

    /* renamed from: D */
    public final void m15587D() {
        C6318b6 c6318b6 = this.f21994A;
        if (c6318b6.f20282f != 1) {
            return;
        }
        C6318b6 m16443f = c6318b6.m16443f(null);
        C6318b6 m16444e = m16443f.m16444e(true != m16443f.f20278b.m12364k() ? 2 : 4);
        this.f22015s++;
        this.f22004h.m12421R();
        m15571l(m16444e, 1, 1, false, false, 5, -9223372036854775807L, -1);
    }

    /* renamed from: E */
    public final void m15586E(List<ok3> list, boolean z) {
        m15573j();
        mo13001J();
        this.f22015s++;
        if (!this.f22008l.isEmpty()) {
            int size = this.f22008l.size();
            for (int i = size - 1; i >= 0; i--) {
                this.f22008l.remove(i);
            }
            this.f21997D = this.f21997D.m15426g(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            C7096w5 c7096w5 = new C7096w5(list.get(i2), this.f22009m);
            arrayList.add(c7096w5);
            this.f22008l.add(i2, new C6390d4(c7096w5.f31455b, c7096w5.f31454a.m14357D()));
        }
        this.f21997D = this.f21997D.m15427f(0, arrayList.size());
        C6912r6 c6912r6 = new C6912r6(this.f22008l, this.f21997D, null);
        if (c6912r6.m12364k() || c6912r6.mo11687a() >= 0) {
            int mo12369e = c6912r6.mo12369e(false);
            C6318b6 m15569p = m15569p(this.f21994A, c6912r6, m15568r(c6912r6, mo12369e, -9223372036854775807L));
            int i3 = m15569p.f20282f;
            int i4 = i3;
            if (mo12369e != -1) {
                i4 = i3;
                if (i3 != 1) {
                    i4 = (c6912r6.m12364k() || mo12369e >= c6912r6.mo11687a()) ? 4 : 2;
                }
            }
            C6318b6 m16444e = m15569p.m16444e(i4);
            this.f22004h.m12413Z(arrayList, mo12369e, C7130x2.m9368b(-9223372036854775807L), this.f21997D);
            m15571l(m16444e, 0, 1, false, !this.f21994A.f20279c.f20100a.equals(m16444e.f20279c.f20100a) && !this.f21994A.f20278b.m12364k(), 4, m15572k(m16444e), -1);
            return;
        }
        throw new zzafx(c6912r6, -1, -9223372036854775807L);
    }

    /* renamed from: F */
    public final void m15585F(boolean z, int i, int i2) {
        C6318b6 c6318b6 = this.f21994A;
        if (c6318b6.f20289m == z && c6318b6.f20290n == i) {
            return;
        }
        this.f22015s++;
        C6318b6 m16441h = c6318b6.m16441h(z, i);
        this.f22004h.m12420S(z, i);
        m15571l(m16441h, 0, i2, false, false, 5, -9223372036854775807L, -1);
    }

    /* renamed from: G */
    public final boolean m15584G() {
        return this.f21994A.f20289m;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: H */
    public final long mo13002H() {
        char c;
        if (mo12993u()) {
            C6318b6 c6318b6 = this.f21994A;
            c6318b6.f20278b.mo12360o(c6318b6.f20279c.f20100a, this.f22007k);
            C6318b6 c6318b62 = this.f21994A;
            if (c6318b62.f20280d == -9223372036854775807L) {
                long j = c6318b62.f20278b.mo12368f(mo12992w(), this.f30477a, 0L).f27464o;
                c = C7130x2.m9369a(0L);
            } else {
                c = C7130x2.m9369a(0L) + C7130x2.m9369a(this.f21994A.f20280d);
            }
            return c;
        }
        return mo13001J();
    }

    /* renamed from: I */
    public final void m15583I(boolean z, zzaeg zzaegVar) {
        C6318b6 c6318b6 = this.f21994A;
        C6318b6 m16442g = c6318b6.m16442g(c6318b6.f20279c);
        m16442g.f20294r = m16442g.f20296t;
        m16442g.f20295s = 0L;
        C6318b6 m16444e = m16442g.m16444e(1);
        C6318b6 c6318b62 = m16444e;
        if (zzaegVar != null) {
            c6318b62 = m16444e.m16443f(zzaegVar);
        }
        this.f22015s++;
        this.f22004h.m12418U();
        m15571l(c6318b62, 0, 1, false, c6318b62.f20278b.m12364k() && !this.f21994A.f20278b.m12364k(), 4, m15572k(c6318b62), -1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: J */
    public final long mo13001J() {
        return C7130x2.m9369a(m15572k(this.f21994A));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: K */
    public final int mo13000K() {
        if (mo12993u()) {
            return this.f21994A.f20279c.f20101b;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: L */
    public final void mo12999L(int i, long j) {
        AbstractC6839p7 abstractC6839p7 = this.f21994A.f20278b;
        if (i < 0 || (!abstractC6839p7.m12364k() && i >= abstractC6839p7.mo11687a())) {
            throw new zzafx(abstractC6839p7, i, j);
        }
        int i2 = 1;
        this.f22015s++;
        if (mo12993u()) {
            Log.w("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            C6725m4 c6725m4 = new C6725m4(this.f21994A);
            c6725m4.m13365b(1);
            this.f22003g.mo10845a(c6725m4);
            return;
        }
        if (this.f21994A.f20282f != 1) {
            i2 = 2;
        }
        int mo12992w = mo12992w();
        C6318b6 m15569p = m15569p(this.f21994A.m16444e(i2), abstractC6839p7, m15568r(abstractC6839p7, i, j));
        this.f22004h.m12419T(abstractC6839p7, i, C7130x2.m9368b(j));
        m15571l(m15569p, 0, 1, true, true, 1, m15572k(m15569p), mo12992w);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: M */
    public final void mo12998M(boolean z) {
        throw null;
    }

    /* renamed from: N */
    public final void m15582N() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C7101wa.f31479e;
        String m12035a = C6873q4.m12035a();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(m12035a).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.15.0] [");
        sb.append(str);
        sb.append("] [");
        sb.append(m12035a);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        if (!this.f22004h.m12417V()) {
            C6915r9<AbstractC6541h6> c6915r9 = this.f22005i;
            c6915r9.m11654d(10, C6279a4.f19816a);
            c6915r9.m11653e();
        }
        this.f22005i.m11652f();
        this.f22002f.mo11627e0(null);
        rz0 rz0Var = this.f22011o;
        if (rz0Var != null) {
            this.f22013q.mo9547a(rz0Var);
        }
        C6318b6 m16444e = this.f21994A.m16444e(1);
        this.f21994A = m16444e;
        C6318b6 m16442g = m16444e.m16442g(m16444e.f20279c);
        this.f21994A = m16442g;
        m16442g.f20294r = m16442g.f20296t;
        this.f21994A.f20295s = 0L;
    }

    /* renamed from: O */
    public final C6875q6 m15581O(AbstractC6838p6 abstractC6838p6) {
        return new C6875q6(this.f22004h, abstractC6838p6, this.f21994A.f20278b, mo12992w(), this.f22014r, this.f22004h.m12416W());
    }

    /* renamed from: P */
    public final long m15580P() {
        if (!mo12993u()) {
            AbstractC6839p7 abstractC6839p7 = this.f21994A.f20278b;
            if (!abstractC6839p7.m12364k()) {
                return C7130x2.m9369a(abstractC6839p7.mo12368f(mo12992w(), this.f30477a, 0L).f27465p);
            }
            return -9223372036854775807L;
        }
        C6318b6 c6318b6 = this.f21994A;
        mk3 mk3Var = c6318b6.f20279c;
        c6318b6.f20278b.mo12360o(mk3Var.f20100a, this.f22007k);
        return C7130x2.m9369a(this.f22007k.m13347h(mk3Var.f20101b, mk3Var.f20102c));
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* renamed from: Q */
    public final long m15579Q() {
        char c;
        if (mo12993u()) {
            C6318b6 c6318b6 = this.f21994A;
            return c6318b6.f20288l.equals(c6318b6.f20279c) ? C7130x2.m9369a(this.f21994A.f20294r) : m15580P();
        }
        if (this.f21994A.f20278b.m12364k()) {
            c = this.f21996C;
        } else {
            C6318b6 c6318b62 = this.f21994A;
            char c2 = 0;
            if (c6318b62.f20288l.f20103d != c6318b62.f20279c.f20103d) {
                c = C7130x2.m9369a(c6318b62.f20278b.mo12368f(mo12992w(), this.f30477a, 0L).f27465p);
            } else {
                ?? r0 = c6318b62.f20294r;
                if (this.f21994A.f20288l.m16491b()) {
                    C6318b6 c6318b63 = this.f21994A;
                    c6318b63.f20278b.mo12360o(c6318b63.f20288l.f20100a, this.f22007k).m13353b(this.f21994A.f20288l.f20101b);
                } else {
                    c2 = r0;
                }
                C6318b6 c6318b64 = this.f21994A;
                m15567s(c6318b64.f20278b, c6318b64.f20288l, c2);
                c = C7130x2.m9369a(c2);
            }
        }
        return c;
    }

    /* renamed from: e */
    public final int m15578e() {
        int length = this.f22000d.length;
        return 2;
    }

    /* renamed from: f */
    public final /* synthetic */ void m15577f(AbstractC6541h6 abstractC6541h6) {
        abstractC6541h6.mo11248B0(this.f22020x);
    }

    /* renamed from: h */
    public final /* synthetic */ void m15575h(C6725m4 c6725m4) {
        this.f22002f.mo11622j0(new Runnable(this, c6725m4) { // from class: com.google.android.gms.internal.ads.y3

            /* renamed from: d */
            private final C6428e4 f32404d;

            /* renamed from: e */
            private final C6725m4 f32405e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32404d = this;
                this.f32405e = c6725m4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32404d.m15574i(this.f32405e);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* renamed from: i */
    public final /* synthetic */ void m15574i(C6725m4 c6725m4) {
        char c;
        boolean z;
        int i = this.f22015s - c6725m4.f26416c;
        this.f22015s = i;
        if (c6725m4.f26417d) {
            this.f22016t = c6725m4.f26418e;
            this.f22017u = true;
        }
        if (c6725m4.f26419f) {
            this.f22018v = c6725m4.f26420g;
        }
        if (i == 0) {
            AbstractC6839p7 abstractC6839p7 = c6725m4.f26415b.f20278b;
            if (!this.f21994A.f20278b.m12364k() && abstractC6839p7.m12364k()) {
                this.f21995B = -1;
                this.f21996C = 0L;
            }
            if (!abstractC6839p7.m12364k()) {
                List<AbstractC6839p7> m11678y = ((C6912r6) abstractC6839p7).m11678y();
                C7173y8.m8895d(m11678y.size() == this.f22008l.size());
                for (int i2 = 0; i2 < m11678y.size(); i2++) {
                    this.f22008l.get(i2).f21473b = m11678y.get(i2);
                }
            }
            if (this.f22017u) {
                z = true;
                if (c6725m4.f26415b.f20279c.equals(this.f21994A.f20279c)) {
                    z = c6725m4.f26415b.f20281e != this.f21994A.f20296t;
                }
                if (!z) {
                    c = 1;
                } else if (abstractC6839p7.m12364k() || c6725m4.f26415b.f20279c.m16491b()) {
                    c = c6725m4.f26415b.f20281e;
                } else {
                    C6318b6 c6318b6 = c6725m4.f26415b;
                    mk3 mk3Var = c6318b6.f20279c;
                    c = c6318b6.f20281e;
                    m15567s(abstractC6839p7, mk3Var, c);
                }
            } else {
                c = 1;
                z = false;
            }
            this.f22017u = false;
            m15571l(c6725m4.f26415b, 1, this.f22018v, false, z, this.f22016t, c, -1);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: m */
    public final int mo12997m() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: n */
    public final boolean mo12996n() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: q */
    public final long mo12995q() {
        return C7130x2.m9369a(this.f21994A.f20295s);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: t */
    public final int mo12994t() {
        if (mo12993u()) {
            return this.f21994A.f20279c.f20102c;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: u */
    public final boolean mo12993u() {
        return this.f21994A.f20279c.m16491b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: w */
    public final int mo12992w() {
        int m15573j = m15573j();
        int i = m15573j;
        if (m15573j == -1) {
            i = 0;
        }
        return i;
    }

    /* renamed from: x */
    public final boolean m15565x() {
        return this.f21994A.f20293q;
    }

    /* renamed from: y */
    public final Looper m15564y() {
        return this.f22012p;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: z */
    public final AbstractC6839p7 mo12991z() {
        return this.f21994A.f20278b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    public final int zzu() {
        if (this.f21994A.f20278b.m12364k()) {
            return 0;
        }
        C6318b6 c6318b6 = this.f21994A;
        return c6318b6.f20278b.mo12366i(c6318b6.f20279c.f20100a);
    }
}
