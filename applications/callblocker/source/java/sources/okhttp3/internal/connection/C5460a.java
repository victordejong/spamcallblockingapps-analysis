package okhttp3.internal.connection;

import okhttp3.AbstractC5544u;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.C5550x;
import okhttp3.internal.p193b.C5443g;
/* renamed from: okhttp3.internal.connection.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/a.class */
public final class C5460a implements AbstractC5544u {

    /* renamed from: a */
    public final C5550x f22803a;

    public C5460a(C5550x c5550x) {
        this.f22803a = c5550x;
    }

    @Override // okhttp3.AbstractC5544u
    /* renamed from: a */
    public C5404ac mo216a(AbstractC5544u.AbstractC5545a abstractC5545a) {
        C5443g c5443g = (C5443g) abstractC5545a;
        C5400aa mo215a = c5443g.mo215a();
        C5466f m694f = c5443g.m694f();
        return c5443g.m696a(mo215a, m694f, m694f.m590a(this.f22803a, abstractC5545a, !mo215a.m825b().equals("GET")), m694f.m585c());
    }
}
