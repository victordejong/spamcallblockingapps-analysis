package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.C10847ad;
import com.google.android.exoplayer2.C11241o;
import com.google.android.exoplayer2.C11667y;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p323a.C10835a;
import com.google.android.exoplayer2.source.AbstractC11272ac;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11321t;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.trackselection.AbstractC11444h;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.trackselection.C11446i;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.android.exoplayer2.util.AbstractC11611k;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11613m;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11623r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/n.class */
public final class C11239n extends AbstractC10925d implements AbstractC11168m {

    /* renamed from: A */
    private int f36804A;

    /* renamed from: B */
    private int f36805B;

    /* renamed from: C */
    private long f36806C;

    /* renamed from: b */
    final C11446i f36807b;

    /* renamed from: c */
    final AbstractC11444h f36808c;

    /* renamed from: d */
    final Looper f36809d;

    /* renamed from: e */
    int f36810e;

    /* renamed from: f */
    boolean f36811f;

    /* renamed from: g */
    C11672z f36812g;

    /* renamed from: h */
    private final AbstractC10851af[] f36813h;

    /* renamed from: i */
    private final AbstractC11611k f36814i;

    /* renamed from: j */
    private final C11241o.AbstractC11247e f36815j;

    /* renamed from: k */
    private final C11241o f36816k;

    /* renamed from: l */
    private final C11613m<AbstractC10842ac.AbstractC10843a, AbstractC10842ac.C10844b> f36817l;

    /* renamed from: m */
    private final AbstractC10864al.C10866a f36818m;

    /* renamed from: n */
    private final List<C11240a> f36819n;

    /* renamed from: o */
    private final boolean f36820o;

    /* renamed from: p */
    private final AbstractC11321t f36821p;

    /* renamed from: q */
    private final C10835a f36822q;

    /* renamed from: r */
    private final AbstractC11534c f36823r;

    /* renamed from: s */
    private final AbstractC11603c f36824s;

    /* renamed from: t */
    private int f36825t;

    /* renamed from: u */
    private boolean f36826u;

    /* renamed from: v */
    private int f36827v;

    /* renamed from: w */
    private int f36828w;

    /* renamed from: x */
    private C10855ai f36829x;

    /* renamed from: y */
    private AbstractC11272ac f36830y;

    /* renamed from: z */
    private boolean f36831z;

    /* renamed from: com.google.android.exoplayer2.n$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/n$a.class */
    public static final class C11240a implements AbstractC11666x {

        /* renamed from: a */
        AbstractC10864al f36832a;

        /* renamed from: b */
        private final Object f36833b;

        public C11240a(Object obj, AbstractC10864al abstractC10864al) {
            this.f36833b = obj;
            this.f36832a = abstractC10864al;
        }

        @Override // com.google.android.exoplayer2.AbstractC11666x
        /* renamed from: a */
        public final Object mo19594a() {
            return this.f36833b;
        }

        @Override // com.google.android.exoplayer2.AbstractC11666x
        /* renamed from: b */
        public final AbstractC10864al mo19592b() {
            return this.f36832a;
        }
    }

    public C11239n(AbstractC10851af[] abstractC10851afArr, AbstractC11444h abstractC11444h, AbstractC11321t abstractC11321t, AbstractC11260s abstractC11260s, AbstractC11534c abstractC11534c, C10835a c10835a, boolean z, C10855ai c10855ai, AbstractC11259r abstractC11259r, long j, boolean z2, AbstractC11603c abstractC11603c, Looper looper, AbstractC10842ac abstractC10842ac) {
        StringBuilder sb = new StringBuilder("Init ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [ExoPlayerLib/2.13.3] [");
        sb.append(C11599af.f38652e);
        sb.append("]");
        C11617n.m19859b();
        C11593a.m20019b(abstractC10851afArr.length > 0);
        this.f36813h = (AbstractC10851af[]) C11593a.m20020b(abstractC10851afArr);
        this.f36808c = (AbstractC11444h) C11593a.m20020b(abstractC11444h);
        this.f36821p = abstractC11321t;
        this.f36823r = abstractC11534c;
        this.f36822q = c10835a;
        this.f36820o = z;
        this.f36829x = c10855ai;
        this.f36831z = z2;
        this.f36809d = looper;
        this.f36824s = abstractC11603c;
        this.f36810e = 0;
        AbstractC10842ac abstractC10842ac2 = abstractC10842ac != null ? abstractC10842ac : this;
        final AbstractC10842ac abstractC10842ac3 = abstractC10842ac2;
        this.f36817l = new C11613m<>(looper, abstractC11603c, _$$Lambda$_iO1wn2nBlVJ7gDW__ChsAzobvo.INSTANCE, new C11613m.AbstractC11615b() { // from class: com.google.android.exoplayer2._$$Lambda$n$Exp3py02o9am369lqlKYEOEMlPI
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11615b
            public final void invoke(Object obj, C11623r c11623r) {
                AbstractC10842ac abstractC10842ac4 = AbstractC10842ac.this;
                ((AbstractC10842ac.AbstractC10843a) obj).mo20308a((AbstractC10842ac.C10844b) c11623r);
            }
        });
        this.f36819n = new ArrayList();
        this.f36830y = new AbstractC11272ac.C11273a(0);
        C11446i c11446i = new C11446i(new RendererConfiguration[abstractC10851afArr.length], new AbstractC11436c[abstractC10851afArr.length], null);
        this.f36807b = c11446i;
        this.f36818m = new AbstractC10864al.C10866a();
        this.f36804A = -1;
        this.f36814i = abstractC11603c.mo19909a(looper, null);
        C11241o.AbstractC11247e abstractC11247e = new C11241o.AbstractC11247e() { // from class: com.google.android.exoplayer2._$$Lambda$n$9EqdHfiuhCqIaWI6nUl0M4y8mEU
            @Override // com.google.android.exoplayer2.C11241o.AbstractC11247e
            public final void onPlaybackInfoUpdate(C11241o.C11246d c11246d) {
                C11239n.this.m21162a(c11246d);
            }
        };
        this.f36815j = abstractC11247e;
        this.f36812g = C11672z.m19583a(c11446i);
        if (c10835a != null) {
            c10835a.m22279a(abstractC10842ac2, looper);
            mo21167a(c10835a);
            abstractC11534c.mo20059a(new Handler(looper), c10835a);
        }
        this.f36816k = new C11241o(abstractC10851afArr, abstractC11444h, c11446i, abstractC11260s, abstractC11534c, this.f36810e, this.f36811f, c10835a, c10855ai, abstractC11259r, j, z2, looper, abstractC11603c, abstractC11247e);
    }

    /* renamed from: L */
    private int m21175L() {
        return this.f36812g.f38949a.m22178c() ? this.f36804A : this.f36812g.f38949a.mo22180a(this.f36812g.f38950b.f37148a, this.f36818m).f35000c;
    }

    /* renamed from: M */
    private AbstractC10864al m21174M() {
        return new C10850ae(this.f36819n, this.f36830y);
    }

    /* renamed from: a */
    private long m21161a(AbstractC11315r.C11316a c11316a, long j) {
        long m21374a = C11158f.m21374a(j);
        this.f36812g.f38949a.mo22180a(c11316a.f37148a, this.f36818m);
        return m21374a + C11158f.m21374a(this.f36818m.f35002e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (r9 >= r8.mo20949a()) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Pair<java.lang.Object, java.lang.Long> m21164a(com.google.android.exoplayer2.AbstractC10864al r8, int r9, long r10) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0.m22178c()
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r9
            r0.f36804A = r1
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
            r0.f36806C = r1
            r0 = r7
            r1 = 0
            r0.f36805B = r1
            r0 = 0
            return r0
        L27:
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L37
            r0 = r9
            r14 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.mo20949a()
            if (r0 < r1) goto L53
        L37:
            r0 = r8
            r1 = r7
            boolean r1 = r1.f36811f
            int r0 = r0.mo20966b(r1)
            r14 = r0
            r0 = r8
            r1 = r14
            r2 = r7
            com.google.android.exoplayer2.al$b r2 = r2.f35334a
            r3 = 0
            com.google.android.exoplayer2.al$b r0 = r0.mo20853a(r1, r2, r3)
            long r0 = r0.f35020p
            long r0 = com.google.android.exoplayer2.C11158f.m21374a(r0)
            r10 = r0
        L53:
            r0 = r8
            r1 = r7
            com.google.android.exoplayer2.al$b r1 = r1.f35334a
            r2 = r7
            com.google.android.exoplayer2.al$a r2 = r2.f36818m
            r3 = r14
            r4 = r10
            long r4 = com.google.android.exoplayer2.C11158f.m21372b(r4)
            android.util.Pair r0 = r0.m22182a(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C11239n.m21164a(com.google.android.exoplayer2.al, int, long):android.util.Pair");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* renamed from: a */
    private Pair<Object, Long> m21163a(AbstractC10864al abstractC10864al, AbstractC10864al abstractC10864al2) {
        char mo21181F = mo21181F();
        int i = -1;
        if (abstractC10864al.m22178c() || abstractC10864al2.m22178c()) {
            boolean z = !abstractC10864al.m22178c() && abstractC10864al2.m22178c();
            if (!z) {
                i = m21175L();
            }
            if (z) {
                mo21181F = 1;
            }
            return m21164a(abstractC10864al2, i, mo21181F);
        }
        Pair<Object, Long> m22182a = abstractC10864al.m22182a(this.f35334a, this.f36818m, mo21111y(), C11158f.m21372b(mo21181F));
        Object obj = ((Pair) C11599af.m19974a(m22182a)).first;
        if (abstractC10864al2.mo20945c(obj) != -1) {
            return m22182a;
        }
        Object m21095a = C11241o.m21095a(this.f35334a, this.f36818m, this.f36810e, this.f36811f, obj, abstractC10864al, abstractC10864al2);
        if (m21095a == null) {
            return m21164a(abstractC10864al2, -1, -9223372036854775807L);
        }
        abstractC10864al2.mo22180a(m21095a, this.f36818m);
        return m21164a(abstractC10864al2, this.f36818m.f35000c, C11158f.m21374a(abstractC10864al2.mo20853a(this.f36818m.f35000c, this.f35334a, 0L).f35020p));
    }

    /* renamed from: a */
    private Pair<Boolean, Integer> m21154a(C11672z c11672z, C11672z c11672z2, boolean z, int i, boolean z2) {
        int i2;
        AbstractC10864al abstractC10864al = c11672z2.f38949a;
        AbstractC10864al abstractC10864al2 = c11672z.f38949a;
        if (!abstractC10864al2.m22178c() || !abstractC10864al.m22178c()) {
            if (abstractC10864al2.m22178c() != abstractC10864al.m22178c()) {
                return new Pair<>(Boolean.TRUE, 3);
            }
            Object obj = abstractC10864al.mo20853a(abstractC10864al.mo22180a(c11672z2.f38950b.f37148a, this.f36818m).f35000c, this.f35334a, 0L).f35006b;
            Object obj2 = abstractC10864al2.mo20853a(abstractC10864al2.mo22180a(c11672z.f38950b.f37148a, this.f36818m).f35000c, this.f35334a, 0L).f35006b;
            int i3 = this.f35334a.f35018n;
            if (obj.equals(obj2)) {
                return (z && i == 0 && abstractC10864al2.mo20945c(c11672z.f38950b.f37148a) == i3) ? new Pair<>(Boolean.TRUE, 0) : new Pair<>(Boolean.FALSE, -1);
            }
            if (z && i == 0) {
                i2 = 1;
            } else if (z && i == 1) {
                i2 = 2;
            } else if (!z2) {
                throw new IllegalStateException();
            } else {
                i2 = 3;
            }
            return new Pair<>(Boolean.TRUE, Integer.valueOf(i2));
        }
        return new Pair<>(Boolean.FALSE, -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x011a, code lost:
        if (r14.mo20947a(r0, r12.f36818m, false).f35000c != r14.mo22180a(r20.f37148a, r12.f36818m).f35000c) goto L29;
     */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.C11672z m21156a(com.google.android.exoplayer2.C11672z r13, com.google.android.exoplayer2.AbstractC10864al r14, android.util.Pair<java.lang.Object, java.lang.Long> r15) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C11239n.m21156a(com.google.android.exoplayer2.z, com.google.android.exoplayer2.al, android.util.Pair):com.google.android.exoplayer2.z");
    }

    /* renamed from: a */
    private void m21172a(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            this.f36819n.remove(i3);
        }
        this.f36830y = this.f36830y.mo21002b(0, i2);
    }

    /* renamed from: a */
    public /* synthetic */ void m21162a(final C11241o.C11246d c11246d) {
        this.f36814i.mo19881a(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$n$FlI0_niP_JuQ1bnI1N_xiM8C6fo
            @Override // java.lang.Runnable
            public final void run() {
                C11239n.this.m21143b(c11246d);
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ void m21158a(C11672z c11672z, int i, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20299c(c11672z.f38959k, i);
    }

    /* renamed from: a */
    public static /* synthetic */ void m21155a(C11672z c11672z, C11443g c11443g, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20306a(c11672z.f38955g, c11443g);
    }

    /* renamed from: a */
    private void m21153a(final C11672z c11672z, boolean z, final int i, final int i2, final int i3, boolean z2) {
        MediaItem mediaItem;
        C11672z c11672z2 = this.f36812g;
        this.f36812g = c11672z;
        Pair<Boolean, Integer> m21154a = m21154a(c11672z, c11672z2, z, i, !c11672z2.f38949a.equals(c11672z.f38949a));
        boolean booleanValue = ((Boolean) m21154a.first).booleanValue();
        final int intValue = ((Integer) m21154a.second).intValue();
        if (!c11672z2.f38949a.equals(c11672z.f38949a)) {
            this.f36817l.m19871a(0, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$RqCszl92RIzOIsbDh1InQBr6sd0
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21141b(C11672z.this, i2, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (z) {
            this.f36817l.m19871a(12, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$eFY5rmNSFEocZIQdmnzZ_JL5iS8
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    ((AbstractC10842ac.AbstractC10843a) obj).mo20296f(i);
                }
            });
        }
        if (booleanValue) {
            if (!c11672z.f38949a.m22178c()) {
                mediaItem = c11672z.f38949a.mo20853a(c11672z.f38949a.mo22180a(c11672z.f38950b.f37148a, this.f36818m).f35000c, this.f35334a, 0L).f35008d;
            } else {
                mediaItem = null;
            }
            final MediaItem mediaItem2 = mediaItem;
            this.f36817l.m19871a(1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$oCjXo7YtkP2IAC4jF6HbBnrfIX0
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    ((AbstractC10842ac.AbstractC10843a) obj).mo20310a(MediaItem.this, intValue);
                }
            });
        }
        if (c11672z2.f38953e != c11672z.f38953e && c11672z.f38953e != null) {
            this.f36817l.m19871a(11, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$gCFpyw0gSvQpibVCEyYuhuoYbjA
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21126j(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (c11672z2.f38956h != c11672z.f38956h) {
            this.f36808c.mo20555a(c11672z.f38956h.f37836d);
            final C11443g c11443g = new C11443g(c11672z.f38956h.f37835c);
            this.f36817l.m19871a(2, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$VeLjpfta74w884_T5hfxFuix4hY
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21155a(C11672z.this, c11443g, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (!c11672z2.f38957i.equals(c11672z.f38957i)) {
            this.f36817l.m19871a(3, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$05a__4jMlp4sXveJHBJwWyvpiL4
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21128i(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (c11672z2.f38954f != c11672z.f38954f) {
            this.f36817l.m19871a(4, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$1V78WlxQjN6PC3_7FMwgkgNfb5I
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21129h(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (c11672z2.f38952d != c11672z.f38952d || c11672z2.f38959k != c11672z.f38959k) {
            this.f36817l.m19871a(-1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$Pu0PTaP7jtj9A1m_mQhEtdOfXpQ
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21130g(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (c11672z2.f38952d != c11672z.f38952d) {
            this.f36817l.m19871a(5, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$PIt6zFYrGp8QsGYxQ_NBlQzCDKE
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21131f(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (c11672z2.f38959k != c11672z.f38959k) {
            this.f36817l.m19871a(6, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$ItxlYlBXvsMPvVwA2x2_Uoyee24
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21158a(C11672z.this, i3, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (c11672z2.f38960l != c11672z.f38960l) {
            this.f36817l.m19871a(7, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$zZ5mEEn0HErVFL8sQ0vOdHUQ1RA
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21132e(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (m21159a(c11672z2) != m21159a(c11672z)) {
            this.f36817l.m19871a(8, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$H_wiUOEG__UcdGP0HZElvjz6J_g
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21133d(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (!c11672z2.f38961m.equals(c11672z.f38961m)) {
            this.f36817l.m19871a(13, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$_QONt1W_wAmVLxa1joskSl4yPFk
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21135c(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (z2) {
            this.f36817l.m19871a(-1, _$$Lambda$UiV5FKGUHLRSSQHMQHet3x5tp6E.INSTANCE);
        }
        if (c11672z2.f38962n != c11672z.f38962n) {
            this.f36817l.m19871a(-1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$m2gCWkk4pGIxBhB9rxbcZ9QIvpU
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11239n.m21140b(C11672z.this, (AbstractC10842ac.AbstractC10843a) obj);
                }
            });
        }
        if (c11672z2.f38963o != c11672z.f38963o) {
            this.f36817l.m19871a(-1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$mps_D8khkefQC7OYtptCQ_wJMN4
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C11672z c11672z3 = C11672z.this;
                    ((AbstractC10842ac.AbstractC10843a) obj).mo20294q_();
                }
            });
        }
        this.f36817l.m19872a();
    }

    /* renamed from: a */
    private void m21152a(List<AbstractC11315r> list) {
        m21151a(list, -1, -9223372036854775807L, true);
    }

    /* renamed from: a */
    private static boolean m21159a(C11672z c11672z) {
        return c11672z.f38952d == 3 && c11672z.f38959k && c11672z.f38960l == 0;
    }

    /* renamed from: b */
    private List<C11667y.C11670c> m21139b(List<AbstractC11315r> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            C11667y.C11670c c11670c = new C11667y.C11670c(list.get(i), this.f36820o);
            arrayList.add(c11670c);
            this.f36819n.add(i + 0, new C11240a(c11670c.f38944b, c11670c.f38943a.f37128a));
        }
        this.f36830y = this.f36830y.mo21006a(0, arrayList.size());
        return arrayList;
    }

    /* renamed from: b */
    public /* synthetic */ void m21143b(C11241o.C11246d c11246d) {
        this.f36825t -= c11246d.f36890c;
        boolean z = true;
        if (c11246d.f36891d) {
            this.f36826u = true;
            this.f36827v = c11246d.f36892e;
        }
        if (c11246d.f36893f) {
            this.f36828w = c11246d.f36894g;
        }
        if (this.f36825t == 0) {
            AbstractC10864al abstractC10864al = c11246d.f36889b.f38949a;
            if (!this.f36812g.f38949a.m22178c() && abstractC10864al.m22178c()) {
                this.f36804A = -1;
                this.f36806C = 0L;
                this.f36805B = 0;
            }
            if (!abstractC10864al.m22178c()) {
                List asList = Arrays.asList(((C10850ae) abstractC10864al).f34909a);
                if (asList.size() != this.f36819n.size()) {
                    z = false;
                }
                C11593a.m20019b(z);
                for (int i = 0; i < asList.size(); i++) {
                    this.f36819n.get(i).f36832a = (AbstractC10864al) asList.get(i);
                }
            }
            boolean z2 = this.f36826u;
            this.f36826u = false;
            m21153a(c11246d.f36889b, z2, this.f36827v, 1, this.f36828w, false);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m21141b(C11672z c11672z, int i, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20307a(c11672z.f38949a, i);
    }

    /* renamed from: b */
    public static /* synthetic */ void m21140b(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
    }

    /* renamed from: c */
    private C11672z m21137c(int i) {
        boolean z = true;
        C11593a.m20022a(i >= 0 && i <= this.f36819n.size());
        int mo21111y = mo21111y();
        AbstractC10864al abstractC10864al = this.f36812g.f38949a;
        int size = this.f36819n.size();
        this.f36825t++;
        m21172a(0, i);
        AbstractC10864al m21174M = m21174M();
        C11672z m21156a = m21156a(this.f36812g, m21174M, m21163a(abstractC10864al, m21174M));
        if (m21156a.f38952d == 1 || m21156a.f38952d == 4 || i <= 0 || i != size || mo21111y < m21156a.f38949a.mo20949a()) {
            z = false;
        }
        C11672z c11672z = m21156a;
        if (z) {
            c11672z = m21156a.m19589a(4);
        }
        this.f36816k.m21105a(0, i, this.f36830y);
        return c11672z;
    }

    /* renamed from: c */
    public static /* synthetic */ void m21136c(AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20311a(ExoPlaybackException.m22324a(new ExoTimeoutException(1)));
    }

    /* renamed from: c */
    public static /* synthetic */ void m21135c(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20309a(c11672z.f38961m);
    }

    /* renamed from: d */
    public static /* synthetic */ void m21133d(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20305a(m21159a(c11672z));
    }

    /* renamed from: e */
    public static /* synthetic */ void m21132e(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20298d(c11672z.f38960l);
    }

    /* renamed from: f */
    public static /* synthetic */ void m21131f(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20304b(c11672z.f38952d);
    }

    /* renamed from: g */
    public static /* synthetic */ void m21130g(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20302b(c11672z.f38959k, c11672z.f38952d);
    }

    /* renamed from: h */
    public static /* synthetic */ void m21129h(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20303b(c11672z.f38954f);
    }

    /* renamed from: i */
    public static /* synthetic */ void m21128i(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20301c(c11672z.f38957i);
    }

    /* renamed from: j */
    public static /* synthetic */ void m21126j(C11672z c11672z, AbstractC10842ac.AbstractC10843a abstractC10843a) {
        abstractC10843a.mo20311a(c11672z.f38953e);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: A */
    public final long mo21186A() {
        return this.f36812g.f38949a.m22178c() ? this.f36806C : this.f36812g.f38950b.m20944a() ? C11158f.m21374a(this.f36812g.f38966r) : m21161a(this.f36812g.f38950b, this.f36812g.f38966r);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: B */
    public final long mo21185B() {
        return C11158f.m21374a(this.f36812g.f38965q);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: C */
    public final boolean mo21184C() {
        return this.f36812g.f38950b.m20944a();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: D */
    public final int mo21183D() {
        if (mo21184C()) {
            return this.f36812g.f38950b.f37149b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: E */
    public final int mo21182E() {
        if (mo21184C()) {
            return this.f36812g.f38950b.f37150c;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: F */
    public final long mo21181F() {
        if (mo21184C()) {
            this.f36812g.f38949a.mo22180a(this.f36812g.f38950b.f37148a, this.f36818m);
            return this.f36812g.f38951c == -9223372036854775807L ? C11158f.m21374a(this.f36812g.f38949a.mo20853a(mo21111y(), this.f35334a, 0L).f35020p) : C11158f.m21374a(this.f36818m.f35002e) + C11158f.m21374a(this.f36812g.f38951c);
        }
        return mo21186A();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: G */
    public final long mo21180G() {
        if (this.f36812g.f38949a.m22178c()) {
            return this.f36806C;
        }
        if (this.f36812g.f38958j.f37151d != this.f36812g.f38950b.f37151d) {
            return C11158f.m21374a(this.f36812g.f38949a.mo20853a(mo21111y(), this.f35334a, 0L).f35021q);
        }
        char c = this.f36812g.f38964p;
        if (this.f36812g.f38958j.m20944a()) {
            AbstractC10864al.C10866a mo22180a = this.f36812g.f38949a.mo22180a(this.f36812g.f38958j.f37148a, this.f36818m);
            c = mo22180a.m22177a(this.f36812g.f38958j.f37149b);
            if (c == Long.MIN_VALUE) {
                c = mo22180a.f35001d;
            }
        }
        return m21161a(this.f36812g.f38958j, c);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: H */
    public final TrackGroupArray mo21179H() {
        return this.f36812g.f38955g;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: I */
    public final C11443g mo21178I() {
        return new C11443g(this.f36812g.f38956h.f37835c);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: J */
    public final List<Metadata> mo21177J() {
        return this.f36812g.f38957i;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: K */
    public final AbstractC10864al mo21176K() {
        return this.f36812g.f38949a;
    }

    /* renamed from: a */
    public final C10847ad m21165a(C10847ad.AbstractC10849b abstractC10849b) {
        return new C10847ad(this.f36816k, abstractC10849b, this.f36812g.f38949a, mo21111y(), this.f36824s, this.f36816k.f36850b);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21173a(final int i) {
        if (this.f36810e != i) {
            this.f36810e = i;
            this.f36816k.f36849a.mo19885a(11, i, 0).sendToTarget();
            this.f36817l.m19866b(9, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$q3CtLUtDG6UJULDVSivJVwcTShs
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    ((AbstractC10842ac.AbstractC10843a) obj).mo20297e(i);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21171a(int i, long j) {
        AbstractC10864al abstractC10864al = this.f36812g.f38949a;
        if (i < 0 || (!abstractC10864al.m22178c() && i >= abstractC10864al.mo20949a())) {
            throw new IllegalSeekPositionException(abstractC10864al, i, j);
        }
        int i2 = 1;
        this.f36825t++;
        if (mo21184C()) {
            C11617n.m19863a("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            C11241o.C11246d c11246d = new C11241o.C11246d(this.f36812g);
            c11246d.m21037a(1);
            this.f36815j.onPlaybackInfoUpdate(c11246d);
            return;
        }
        if (this.f36812g.f38952d != 1) {
            i2 = 2;
        }
        C11672z m21156a = m21156a(this.f36812g.m19589a(i2), abstractC10864al, m21164a(abstractC10864al, i, j));
        this.f36816k.f36849a.mo19883a(3, new C11241o.C11249g(abstractC10864al, i, C11158f.m21372b(j))).sendToTarget();
        m21153a(m21156a, true, 1, 0, 1, true);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21168a(C10840aa c10840aa) {
        C10840aa c10840aa2 = c10840aa;
        if (c10840aa == null) {
            c10840aa2 = C10840aa.f34891a;
        }
        if (this.f36812g.f38961m.equals(c10840aa2)) {
            return;
        }
        C11672z m19587a = this.f36812g.m19587a(c10840aa2);
        this.f36825t++;
        this.f36816k.f36849a.mo19883a(4, c10840aa2).sendToTarget();
        m21153a(m19587a, false, 4, 0, 1, false);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21167a(AbstractC10842ac.AbstractC10843a abstractC10843a) {
        this.f36817l.m19869a((C11613m<AbstractC10842ac.AbstractC10843a, AbstractC10842ac.C10844b>) abstractC10843a);
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    @Deprecated
    /* renamed from: a */
    public final void mo21160a(AbstractC11315r abstractC11315r) {
        mo21142b(abstractC11315r);
        mo21119q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.exoplayer2.n] */
    /* renamed from: a */
    public final void m21151a(List<AbstractC11315r> list, int i, long j, boolean z) {
        ?? r12;
        int m21175L = m21175L();
        ?? mo21186A = mo21186A();
        this.f36825t++;
        if (!this.f36819n.isEmpty()) {
            m21172a(0, this.f36819n.size());
        }
        List<C11667y.C11670c> m21139b = m21139b(list);
        AbstractC10864al m21174M = m21174M();
        if (m21174M.m22178c() || i < m21174M.mo20949a()) {
            if (z) {
                i = m21174M.mo20966b(this.f36811f);
                r12 = -9223372036854775807;
            } else {
                r12 = j;
                if (i == -1) {
                    i = m21175L;
                    r12 = mo21186A;
                }
            }
            C11672z m21156a = m21156a(this.f36812g, m21174M, m21164a(m21174M, i, r12));
            int i2 = m21156a.f38952d;
            int i3 = i2;
            if (i != -1) {
                i3 = i2;
                if (m21156a.f38952d != 1) {
                    i3 = (m21174M.m22178c() || i >= m21174M.mo20949a()) ? 4 : 2;
                }
            }
            C11672z m19589a = m21156a.m19589a(i3);
            this.f36816k.m21078a(m21139b, i, C11158f.m21372b(r12), this.f36830y);
            m21153a(m19589a, false, 4, 0, 1, false);
            return;
        }
        throw new IllegalSeekPositionException(m21174M, i, -9223372036854775807L);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21150a(boolean z) {
        m21149a(z, 0, 1);
    }

    /* renamed from: a */
    public final void m21149a(boolean z, int i, int i2) {
        if (this.f36812g.f38959k == z && this.f36812g.f38960l == i) {
            return;
        }
        this.f36825t++;
        C11672z m19581a = this.f36812g.m19581a(z, i);
        this.f36816k.m21076a(z, i);
        m21153a(m19581a, false, 4, 0, i2, false);
    }

    /* renamed from: a */
    public final void m21148a(boolean z, ExoPlaybackException exoPlaybackException) {
        C11672z c11672z;
        if (z) {
            c11672z = m21137c(this.f36819n.size()).m19588a((ExoPlaybackException) null);
        } else {
            C11672z c11672z2 = this.f36812g;
            c11672z = c11672z2.m19585a(c11672z2.f38950b);
            c11672z.f38964p = c11672z.f38966r;
            c11672z.f38965q = 0L;
        }
        C11672z m19589a = c11672z.m19589a(1);
        C11672z c11672z3 = m19589a;
        if (exoPlaybackException != null) {
            c11672z3 = m19589a.m19588a(exoPlaybackException);
        }
        this.f36825t++;
        this.f36816k.m21069b();
        m21153a(c11672z3, false, 4, 0, 1, false);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: b */
    public final int mo21146b(int i) {
        return this.f36813h[i].mo21812a();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: b */
    public final void mo21144b(AbstractC10842ac.AbstractC10843a abstractC10843a) {
        C11613m<AbstractC10842ac.AbstractC10843a, AbstractC10842ac.C10844b> c11613m = this.f36817l;
        Iterator<C11613m.C11616c<AbstractC10842ac.AbstractC10843a, AbstractC10842ac.C10844b>> it2 = c11613m.f38689e.iterator();
        while (it2.hasNext()) {
            C11613m.C11616c<AbstractC10842ac.AbstractC10843a, AbstractC10842ac.C10844b> next = it2.next();
            if (next.f38693a.equals(abstractC10843a)) {
                next.m19865a(c11613m.f38688d);
                c11613m.f38689e.remove(next);
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    /* renamed from: b */
    public final void mo21142b(AbstractC11315r abstractC11315r) {
        m21152a(Collections.singletonList(abstractC11315r));
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: b */
    public final void mo21138b(final boolean z) {
        if (this.f36811f != z) {
            this.f36811f = z;
            this.f36816k.f36849a.mo19885a(12, z ? 1 : 0, 0).sendToTarget();
            this.f36817l.m19866b(10, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2._$$Lambda$n$ikNlRtjPBrT8TV1lzdwJfD5Q6pg
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    ((AbstractC10842ac.AbstractC10843a) obj).mo20300c(z);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: c */
    public final void mo21134c(boolean z) {
        m21148a(z, (ExoPlaybackException) null);
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    @Deprecated
    /* renamed from: j */
    public final void mo21127j() {
        mo21119q();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: k */
    public final AbstractC10842ac.AbstractC10846d mo21125k() {
        return null;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: l */
    public final AbstractC10842ac.AbstractC10845c mo21124l() {
        return null;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: m */
    public final Looper mo21123m() {
        return this.f36809d;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: n */
    public final int mo21122n() {
        return this.f36812g.f38952d;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: o */
    public final int mo21121o() {
        return this.f36812g.f38960l;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: p */
    public final ExoPlaybackException mo21120p() {
        return this.f36812g.f38953e;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: q */
    public final void mo21119q() {
        if (this.f36812g.f38952d != 1) {
            return;
        }
        C11672z m19588a = this.f36812g.m19588a((ExoPlaybackException) null);
        C11672z m19589a = m19588a.m19589a(m19588a.f38949a.m22178c() ? 4 : 2);
        this.f36825t++;
        this.f36816k.m21108a();
        m21153a(m19589a, false, 4, 1, 1, false);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: r */
    public final boolean mo21118r() {
        return this.f36812g.f38959k;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: s */
    public final int mo21117s() {
        return this.f36810e;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: t */
    public final boolean mo21116t() {
        return this.f36811f;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: u */
    public final boolean mo21115u() {
        return this.f36812g.f38954f;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: v */
    public final C10840aa mo21114v() {
        return this.f36812g.f38961m;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: w */
    public final void mo21113w() {
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [ExoPlayerLib/2.13.3] [");
        sb.append(C11599af.f38652e);
        sb.append("] [");
        sb.append(C11257p.m21032a());
        sb.append("]");
        C11617n.m19859b();
        if (!this.f36816k.m21061c()) {
            this.f36817l.m19866b(11, _$$Lambda$n$zZT73xA4fT0JqkNOXCpQwxqu5H8.INSTANCE);
        }
        this.f36817l.m19867b();
        this.f36814i.mo19878c();
        C10835a c10835a = this.f36822q;
        if (c10835a != null) {
            this.f36823r.mo20058a(c10835a);
        }
        C11672z m19589a = this.f36812g.m19589a(1);
        this.f36812g = m19589a;
        C11672z m19585a = m19589a.m19585a(m19589a.f38950b);
        this.f36812g = m19585a;
        m19585a.f38964p = m19585a.f38966r;
        this.f36812g.f38965q = 0L;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: x */
    public final int mo21112x() {
        return this.f36812g.f38949a.m22178c() ? this.f36805B : this.f36812g.f38949a.mo20945c(this.f36812g.f38950b.f37148a);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: y */
    public final int mo21111y() {
        int m21175L = m21175L();
        int i = m21175L;
        if (m21175L == -1) {
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: z */
    public final long mo21110z() {
        if (mo21184C()) {
            AbstractC11315r.C11316a c11316a = this.f36812g.f38950b;
            this.f36812g.f38949a.mo22180a(c11316a.f37148a, this.f36818m);
            return C11158f.m21374a(this.f36818m.m22171b(c11316a.f37149b, c11316a.f37150c));
        }
        return m21930i();
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    /* renamed from: z_ */
    public final AbstractC11444h mo21109z_() {
        return this.f36808c;
    }
}
