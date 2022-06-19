package com.google.android.exoplayer2.text.p257q;

import android.text.Layout;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.text.q.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/e.class */
final class C5371e {

    /* renamed from: a */
    private String f17167a;

    /* renamed from: b */
    private int f17168b;

    /* renamed from: c */
    private boolean f17169c;

    /* renamed from: d */
    private int f17170d;

    /* renamed from: e */
    private boolean f17171e;

    /* renamed from: f */
    private int f17172f = -1;

    /* renamed from: g */
    private int f17173g = -1;

    /* renamed from: h */
    private int f17174h = -1;

    /* renamed from: i */
    private int f17175i = -1;

    /* renamed from: j */
    private int f17176j = -1;

    /* renamed from: k */
    private float f17177k;

    /* renamed from: l */
    private String f17178l;

    /* renamed from: m */
    private C5371e f17179m;

    /* renamed from: n */
    private Layout.Alignment f17180n;

    /* renamed from: l */
    private C5371e m19473l(C5371e c5371e, boolean z) {
        if (c5371e != null) {
            if (!this.f17169c && c5371e.f17169c) {
                m19468q(c5371e.f17168b);
            }
            if (this.f17174h == -1) {
                this.f17174h = c5371e.f17174h;
            }
            if (this.f17175i == -1) {
                this.f17175i = c5371e.f17175i;
            }
            if (this.f17167a == null) {
                this.f17167a = c5371e.f17167a;
            }
            if (this.f17172f == -1) {
                this.f17172f = c5371e.f17172f;
            }
            if (this.f17173g == -1) {
                this.f17173g = c5371e.f17173g;
            }
            if (this.f17180n == null) {
                this.f17180n = c5371e.f17180n;
            }
            if (this.f17176j == -1) {
                this.f17176j = c5371e.f17176j;
                this.f17177k = c5371e.f17177k;
            }
            if (z && !this.f17171e && c5371e.f17171e) {
                m19470o(c5371e.f17170d);
            }
        }
        return this;
    }

    /* renamed from: a */
    public C5371e m19484a(C5371e c5371e) {
        return m19473l(c5371e, true);
    }

    /* renamed from: b */
    public int m19483b() {
        if (this.f17171e) {
            return this.f17170d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    /* renamed from: c */
    public int m19482c() {
        if (this.f17169c) {
            return this.f17168b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    /* renamed from: d */
    public String m19481d() {
        return this.f17167a;
    }

    /* renamed from: e */
    public float m19480e() {
        return this.f17177k;
    }

    /* renamed from: f */
    public int m19479f() {
        return this.f17176j;
    }

    /* renamed from: g */
    public String m19478g() {
        return this.f17178l;
    }

    /* renamed from: h */
    public int m19477h() {
        int i = this.f17174h;
        if (i == -1 && this.f17175i == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f17175i == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    /* renamed from: i */
    public Layout.Alignment m19476i() {
        return this.f17180n;
    }

    /* renamed from: j */
    public boolean m19475j() {
        return this.f17171e;
    }

    /* renamed from: k */
    public boolean m19474k() {
        return this.f17169c;
    }

    /* renamed from: m */
    public boolean m19472m() {
        boolean z = true;
        if (this.f17172f != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: n */
    public boolean m19471n() {
        boolean z = true;
        if (this.f17173g != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public C5371e m19470o(int i) {
        this.f17170d = i;
        this.f17171e = true;
        return this;
    }

    /* renamed from: p */
    public C5371e m19469p(boolean z) {
        C5508e.m18910f(this.f17179m == null);
        this.f17174h = z ? 1 : 0;
        return this;
    }

    /* renamed from: q */
    public C5371e m19468q(int i) {
        C5508e.m18910f(this.f17179m == null);
        this.f17168b = i;
        this.f17169c = true;
        return this;
    }

    /* renamed from: r */
    public C5371e m19467r(String str) {
        C5508e.m18910f(this.f17179m == null);
        this.f17167a = str;
        return this;
    }

    /* renamed from: s */
    public C5371e m19466s(float f) {
        this.f17177k = f;
        return this;
    }

    /* renamed from: t */
    public C5371e m19465t(int i) {
        this.f17176j = i;
        return this;
    }

    /* renamed from: u */
    public C5371e m19464u(String str) {
        this.f17178l = str;
        return this;
    }

    /* renamed from: v */
    public C5371e m19463v(boolean z) {
        C5508e.m18910f(this.f17179m == null);
        this.f17175i = z ? 1 : 0;
        return this;
    }

    /* renamed from: w */
    public C5371e m19462w(boolean z) {
        C5508e.m18910f(this.f17179m == null);
        this.f17172f = z ? 1 : 0;
        return this;
    }

    /* renamed from: x */
    public C5371e m19461x(Layout.Alignment alignment) {
        this.f17180n = alignment;
        return this;
    }

    /* renamed from: y */
    public C5371e m19460y(boolean z) {
        C5508e.m18910f(this.f17179m == null);
        this.f17173g = z ? 1 : 0;
        return this;
    }
}
