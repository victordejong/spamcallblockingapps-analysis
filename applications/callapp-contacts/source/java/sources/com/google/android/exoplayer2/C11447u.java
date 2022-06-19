package com.google.android.exoplayer2;

import com.google.android.exoplayer2.C11667y;
import com.google.android.exoplayer2.source.AbstractC11269aa;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.C11291c;
import com.google.android.exoplayer2.source.C11301i;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.trackselection.AbstractC11444h;
import com.google.android.exoplayer2.trackselection.C11446i;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11617n;
/* renamed from: com.google.android.exoplayer2.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/u.class */
final class C11447u {

    /* renamed from: a */
    public final AbstractC11312p f37837a;

    /* renamed from: b */
    public final Object f37838b;

    /* renamed from: c */
    public final AbstractC11269aa[] f37839c;

    /* renamed from: d */
    public boolean f37840d;

    /* renamed from: e */
    public boolean f37841e;

    /* renamed from: f */
    public C11636v f37842f;

    /* renamed from: g */
    public boolean f37843g;

    /* renamed from: h */
    C11447u f37844h;

    /* renamed from: i */
    TrackGroupArray f37845i = TrackGroupArray.EMPTY;

    /* renamed from: j */
    C11446i f37846j;

    /* renamed from: k */
    long f37847k;

    /* renamed from: l */
    private final boolean[] f37848l;

    /* renamed from: m */
    private final AbstractC10853ag[] f37849m;

    /* renamed from: n */
    private final AbstractC11444h f37850n;

    /* renamed from: o */
    private final C11667y f37851o;

    public C11447u(AbstractC10853ag[] abstractC10853agArr, long j, AbstractC11444h abstractC11444h, AbstractC11533b abstractC11533b, C11667y c11667y, C11636v c11636v, C11446i c11446i) {
        this.f37849m = abstractC10853agArr;
        this.f37847k = j;
        this.f37850n = abstractC11444h;
        this.f37851o = c11667y;
        this.f37838b = c11636v.f38758a.f37148a;
        this.f37842f = c11636v;
        this.f37846j = c11446i;
        this.f37839c = new AbstractC11269aa[abstractC10853agArr.length];
        this.f37848l = new boolean[abstractC10853agArr.length];
        AbstractC11315r.C11316a c11316a = c11636v.f38758a;
        long j2 = c11636v.f38759b;
        long j3 = c11636v.f38761d;
        Object a = C10850ae.m22315a(c11316a.f37148a);
        AbstractC11315r.C11316a mo20936a = c11316a.mo20936a(C10850ae.m22312b(c11316a.f37148a));
        C11667y.C11670c c11670c = (C11667y.C11670c) C11593a.m20020b(c11667y.f38927c.get(a));
        c11667y.f38931g.add(c11670c);
        C11667y.C11669b c11669b = c11667y.f38930f.get(c11670c);
        if (c11669b != null) {
            c11669b.f38940a.mo20941a(c11669b.f38941b);
        }
        c11670c.f38945c.add(mo20936a);
        AbstractC11312p mo20859a = c11670c.f38943a.mo20859a(mo20936a, abstractC11533b, j2);
        c11667y.f38926b.put(mo20859a, c11670c);
        c11667y.m19607d();
        AbstractC11312p abstractC11312p = mo20859a;
        if (j3 != -9223372036854775807L) {
            abstractC11312p = mo20859a;
            if (j3 != Long.MIN_VALUE) {
                abstractC11312p = new C11291c(mo20859a, true, 0L, j3);
            }
        }
        this.f37837a = abstractC11312p;
    }

    /* renamed from: a */
    private void m20543a(AbstractC11269aa[] abstractC11269aaArr) {
        int i = 0;
        while (true) {
            AbstractC10853ag[] abstractC10853agArr = this.f37849m;
            if (i < abstractC10853agArr.length) {
                if (abstractC10853agArr[i].mo21812a() == 7) {
                    abstractC11269aaArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    private void m20540b(AbstractC11269aa[] abstractC11269aaArr) {
        int i = 0;
        while (true) {
            AbstractC10853ag[] abstractC10853agArr = this.f37849m;
            if (i < abstractC10853agArr.length) {
                if (abstractC10853agArr[i].mo21812a() == 7 && this.f37846j.m20551a(i)) {
                    abstractC11269aaArr[i] = new C11301i();
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: f */
    private void m20536f() {
        if (!m20534h()) {
            return;
        }
        for (int i = 0; i < this.f37846j.f37833a; i++) {
            boolean m20551a = this.f37846j.m20551a(i);
            AbstractC11436c abstractC11436c = this.f37846j.f37835c[i];
            if (m20551a && abstractC11436c != null) {
                abstractC11436c.mo20569b();
            }
        }
    }

    /* renamed from: g */
    private void m20535g() {
        if (!m20534h()) {
            return;
        }
        for (int i = 0; i < this.f37846j.f37833a; i++) {
            boolean m20551a = this.f37846j.m20551a(i);
            AbstractC11436c abstractC11436c = this.f37846j.f37835c[i];
            if (m20551a && abstractC11436c != null) {
                abstractC11436c.mo20568c();
            }
        }
    }

    /* renamed from: h */
    private boolean m20534h() {
        return this.f37844h == null;
    }

    /* renamed from: a */
    public final long m20549a() {
        return this.f37842f.f38759b + this.f37847k;
    }

    /* renamed from: a */
    public final long m20546a(C11446i c11446i, long j) {
        return m20545a(c11446i, j, false, new boolean[this.f37849m.length]);
    }

    /* renamed from: a */
    public final long m20545a(C11446i c11446i, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= c11446i.f37833a) {
                break;
            }
            boolean[] zArr2 = this.f37848l;
            if (z || !c11446i.m20550a(this.f37846j, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        m20543a(this.f37839c);
        m20535g();
        this.f37846j = c11446i;
        m20536f();
        long mo20895a = this.f37837a.mo20895a(c11446i.f37835c, this.f37848l, this.f37839c, zArr, j);
        m20540b(this.f37839c);
        this.f37841e = false;
        int i2 = 0;
        while (true) {
            AbstractC11269aa[] abstractC11269aaArr = this.f37839c;
            if (i2 < abstractC11269aaArr.length) {
                if (abstractC11269aaArr[i2] != null) {
                    C11593a.m20019b(c11446i.m20551a(i2));
                    if (this.f37849m[i2].mo21812a() != 7) {
                        this.f37841e = true;
                    }
                } else {
                    C11593a.m20019b(c11446i.f37835c[i2] == null);
                }
                i2++;
            } else {
                return mo20895a;
            }
        }
    }

    /* renamed from: a */
    public final C11446i m20548a(float f, AbstractC10864al abstractC10864al) throws ExoPlaybackException {
        AbstractC11436c[] abstractC11436cArr;
        C11446i mo20554a = this.f37850n.mo20554a(this.f37849m, this.f37845i, this.f37842f.f38758a, abstractC10864al);
        for (AbstractC11436c abstractC11436c : mo20554a.f37835c) {
            if (abstractC11436c != null) {
                abstractC11436c.mo20570a(f);
            }
        }
        return mo20554a;
    }

    /* renamed from: a */
    public final void m20547a(long j) {
        C11593a.m20019b(m20534h());
        if (this.f37840d) {
            this.f37837a.mo20904a(j - this.f37847k);
        }
    }

    /* renamed from: a */
    public final void m20544a(C11447u c11447u) {
        if (c11447u == this.f37844h) {
            return;
        }
        m20535g();
        this.f37844h = c11447u;
        m20536f();
    }

    /* renamed from: b */
    public final void m20541b(long j) {
        C11593a.m20019b(m20534h());
        this.f37837a.mo20887c(j - this.f37847k);
    }

    /* renamed from: b */
    public final boolean m20542b() {
        if (this.f37840d) {
            return !this.f37841e || this.f37837a.mo20885d() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: c */
    public final long m20539c() {
        if (!this.f37840d) {
            return this.f37842f.f38759b;
        }
        char mo20885d = this.f37841e ? this.f37837a.mo20885d() : (char) 0;
        return mo20885d == Long.MIN_VALUE ? this.f37842f.f38762e : mo20885d;
    }

    /* renamed from: d */
    public final long m20538d() {
        if (!this.f37840d) {
            return 0L;
        }
        return this.f37837a.mo20883e();
    }

    /* renamed from: e */
    public final void m20537e() {
        m20535g();
        long j = this.f37842f.f38761d;
        C11667y c11667y = this.f37851o;
        AbstractC11312p abstractC11312p = this.f37837a;
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                c11667y.m19617a(abstractC11312p);
            } else {
                c11667y.m19617a(((C11291c) abstractC11312p).f37074a);
            }
        } catch (RuntimeException e) {
            C11617n.m19857b("MediaPeriodHolder", "Period release failed.", e);
        }
    }
}
