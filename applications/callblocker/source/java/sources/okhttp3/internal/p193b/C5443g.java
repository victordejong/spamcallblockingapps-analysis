package okhttp3.internal.p193b;

import java.util.List;
import okhttp3.AbstractC5415e;
import okhttp3.AbstractC5423i;
import okhttp3.AbstractC5532p;
import okhttp3.AbstractC5544u;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.internal.connection.C5462c;
import okhttp3.internal.connection.C5466f;
/* renamed from: okhttp3.internal.b.g */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/g.class */
public final class C5443g implements AbstractC5544u.AbstractC5545a {

    /* renamed from: a */
    private final List<AbstractC5544u> f22733a;

    /* renamed from: b */
    private final C5466f f22734b;

    /* renamed from: c */
    private final AbstractC5438c f22735c;

    /* renamed from: d */
    private final C5462c f22736d;

    /* renamed from: e */
    private final int f22737e;

    /* renamed from: f */
    private final C5400aa f22738f;

    /* renamed from: g */
    private final AbstractC5415e f22739g;

    /* renamed from: h */
    private final AbstractC5532p f22740h;

    /* renamed from: i */
    private final int f22741i;

    /* renamed from: j */
    private final int f22742j;

    /* renamed from: k */
    private final int f22743k;

    /* renamed from: l */
    private int f22744l;

    public C5443g(List<AbstractC5544u> list, C5466f c5466f, AbstractC5438c abstractC5438c, C5462c c5462c, int i, C5400aa c5400aa, AbstractC5415e abstractC5415e, AbstractC5532p abstractC5532p, int i2, int i3, int i4) {
        this.f22733a = list;
        this.f22736d = c5462c;
        this.f22734b = c5466f;
        this.f22735c = abstractC5438c;
        this.f22737e = i;
        this.f22738f = c5400aa;
        this.f22739g = abstractC5415e;
        this.f22740h = abstractC5532p;
        this.f22741i = i2;
        this.f22742j = i3;
        this.f22743k = i4;
    }

    @Override // okhttp3.AbstractC5544u.AbstractC5545a
    /* renamed from: a */
    public C5400aa mo215a() {
        return this.f22738f;
    }

    @Override // okhttp3.AbstractC5544u.AbstractC5545a
    /* renamed from: a */
    public C5404ac mo214a(C5400aa c5400aa) {
        return m696a(c5400aa, this.f22734b, this.f22735c, this.f22736d);
    }

    /* renamed from: a */
    public C5404ac m696a(C5400aa c5400aa, C5466f c5466f, AbstractC5438c abstractC5438c, C5462c c5462c) {
        if (this.f22737e >= this.f22733a.size()) {
            throw new AssertionError();
        }
        this.f22744l++;
        if (this.f22735c != null && !this.f22736d.m618a(c5400aa.m827a())) {
            throw new IllegalStateException("network interceptor " + this.f22733a.get(this.f22737e - 1) + " must retain the same host and port");
        }
        if (this.f22735c != null && this.f22744l > 1) {
            throw new IllegalStateException("network interceptor " + this.f22733a.get(this.f22737e - 1) + " must call proceed() exactly once");
        }
        C5443g c5443g = new C5443g(this.f22733a, c5466f, abstractC5438c, c5462c, this.f22737e + 1, c5400aa, this.f22739g, this.f22740h, this.f22741i, this.f22742j, this.f22743k);
        AbstractC5544u abstractC5544u = this.f22733a.get(this.f22737e);
        C5404ac mo216a = abstractC5544u.mo216a(c5443g);
        if (abstractC5438c != null && this.f22737e + 1 < this.f22733a.size() && c5443g.f22744l != 1) {
            throw new IllegalStateException("network interceptor " + abstractC5544u + " must call proceed() exactly once");
        }
        if (mo216a == null) {
            throw new NullPointerException("interceptor " + abstractC5544u + " returned null");
        }
        if (mo216a.m803f() != null) {
            return mo216a;
        }
        throw new IllegalStateException("interceptor " + abstractC5544u + " returned a response with no body");
    }

    @Override // okhttp3.AbstractC5544u.AbstractC5545a
    /* renamed from: b */
    public int mo213b() {
        return this.f22741i;
    }

    @Override // okhttp3.AbstractC5544u.AbstractC5545a
    /* renamed from: c */
    public int mo212c() {
        return this.f22742j;
    }

    @Override // okhttp3.AbstractC5544u.AbstractC5545a
    /* renamed from: d */
    public int mo211d() {
        return this.f22743k;
    }

    /* renamed from: e */
    public AbstractC5423i m695e() {
        return this.f22736d;
    }

    /* renamed from: f */
    public C5466f m694f() {
        return this.f22734b;
    }

    /* renamed from: g */
    public AbstractC5438c m693g() {
        return this.f22735c;
    }

    /* renamed from: h */
    public AbstractC5415e m692h() {
        return this.f22739g;
    }

    /* renamed from: i */
    public AbstractC5532p m691i() {
        return this.f22740h;
    }
}
