package okhttp3.internal.p092b;

import java.util.List;
import okhttp3.AbstractC1966e;
import okhttp3.AbstractC1973i;
import okhttp3.AbstractC2082p;
import okhttp3.AbstractC2092t;
import okhttp3.C1955ab;
import okhttp3.C2104z;
import okhttp3.internal.connection.C2012c;
import okhttp3.internal.connection.C2016f;
/* renamed from: okhttp3.internal.b.g */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/g.class */
public final class C1993g implements AbstractC2092t.AbstractC2093a {

    /* renamed from: a */
    private final List<AbstractC2092t> f4959a;

    /* renamed from: b */
    private final C2016f f4960b;

    /* renamed from: c */
    private final AbstractC1988c f4961c;

    /* renamed from: d */
    private final C2012c f4962d;

    /* renamed from: e */
    private final int f4963e;

    /* renamed from: f */
    private final C2104z f4964f;

    /* renamed from: g */
    private final AbstractC1966e f4965g;

    /* renamed from: h */
    private final AbstractC2082p f4966h;

    /* renamed from: i */
    private final int f4967i;

    /* renamed from: j */
    private final int f4968j;

    /* renamed from: k */
    private final int f4969k;

    /* renamed from: l */
    private int f4970l;

    public C1993g(List<AbstractC2092t> list, C2016f c2016f, AbstractC1988c abstractC1988c, C2012c c2012c, int i, C2104z c2104z, AbstractC1966e abstractC1966e, AbstractC2082p abstractC2082p, int i2, int i3, int i4) {
        this.f4959a = list;
        this.f4962d = c2012c;
        this.f4960b = c2016f;
        this.f4961c = abstractC1988c;
        this.f4963e = i;
        this.f4964f = c2104z;
        this.f4965g = abstractC1966e;
        this.f4966h = abstractC2082p;
        this.f4967i = i2;
        this.f4968j = i3;
        this.f4969k = i4;
    }

    @Override // okhttp3.AbstractC2092t.AbstractC2093a
    /* renamed from: a */
    public C1955ab mo1901a(C2104z c2104z) {
        return m2378a(c2104z, this.f4960b, this.f4961c, this.f4962d);
    }

    /* renamed from: a */
    public C1955ab m2378a(C2104z c2104z, C2016f c2016f, AbstractC1988c abstractC1988c, C2012c c2012c) {
        if (this.f4963e < this.f4959a.size()) {
            this.f4970l++;
            if (this.f4961c != null && !this.f4962d.m2298a(c2104z.m1823a())) {
                throw new IllegalStateException("network interceptor " + this.f4959a.get(this.f4963e - 1) + " must retain the same host and port");
            } else if (this.f4961c != null && this.f4970l > 1) {
                throw new IllegalStateException("network interceptor " + this.f4959a.get(this.f4963e - 1) + " must call proceed() exactly once");
            } else {
                C1993g c1993g = new C1993g(this.f4959a, c2016f, abstractC1988c, c2012c, this.f4963e + 1, c2104z, this.f4965g, this.f4966h, this.f4967i, this.f4968j, this.f4969k);
                AbstractC2092t abstractC2092t = this.f4959a.get(this.f4963e);
                C1955ab mo1903a = abstractC2092t.mo1903a(c1993g);
                if (abstractC1988c != null && this.f4963e + 1 < this.f4959a.size() && c1993g.f4970l != 1) {
                    throw new IllegalStateException("network interceptor " + abstractC2092t + " must call proceed() exactly once");
                } else if (mo1903a == null) {
                    throw new NullPointerException("interceptor " + abstractC2092t + " returned null");
                } else if (mo1903a.m2486g() != null) {
                    return mo1903a;
                } else {
                    throw new IllegalStateException("interceptor " + abstractC2092t + " returned a response with no body");
                }
            }
        }
        throw new AssertionError();
    }

    @Override // okhttp3.AbstractC2092t.AbstractC2093a
    /* renamed from: a */
    public C2104z mo1902a() {
        return this.f4964f;
    }

    @Override // okhttp3.AbstractC2092t.AbstractC2093a
    /* renamed from: b */
    public int mo1900b() {
        return this.f4967i;
    }

    @Override // okhttp3.AbstractC2092t.AbstractC2093a
    /* renamed from: c */
    public int mo1899c() {
        return this.f4968j;
    }

    @Override // okhttp3.AbstractC2092t.AbstractC2093a
    /* renamed from: d */
    public int mo1898d() {
        return this.f4969k;
    }

    /* renamed from: e */
    public AbstractC1973i m2377e() {
        return this.f4962d;
    }

    /* renamed from: f */
    public C2016f m2376f() {
        return this.f4960b;
    }

    /* renamed from: g */
    public AbstractC1988c m2375g() {
        return this.f4961c;
    }

    /* renamed from: h */
    public AbstractC1966e m2374h() {
        return this.f4965g;
    }

    /* renamed from: i */
    public AbstractC2082p m2373i() {
        return this.f4966h;
    }
}
