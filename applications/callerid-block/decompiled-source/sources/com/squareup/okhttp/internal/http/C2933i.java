package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.AbstractC2962s;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import okio.Okio;
import okio.Sink;
import okio.Source;
/* renamed from: com.squareup.okhttp.internal.http.i */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/i.class */
public final class C2933i implements AbstractC2941p {

    /* renamed from: a */
    private final C2928g f12378a;

    /* renamed from: b */
    private final C2918e f12379b;

    public C2933i(C2928g gVar, C2918e eVar) {
        this.f12378a = gVar;
        this.f12379b = eVar;
    }

    /* renamed from: i */
    private Source m948i(C2959r rVar) {
        if (!C2928g.m960t(rVar)) {
            return this.f12379b.m1006t(0L);
        }
        if ("chunked".equalsIgnoreCase(rVar.m747p("Transfer-Encoding"))) {
            return this.f12379b.m1008r(this.f12378a);
        }
        long e = C2934j.m943e(rVar);
        return e != -1 ? this.f12379b.m1006t(e) : this.f12379b.m1005u();
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: a */
    public Sink mo916a(C2954p pVar, long j) {
        if ("chunked".equalsIgnoreCase(pVar.m787h("Transfer-Encoding"))) {
            return this.f12379b.m1009q();
        }
        if (j != -1) {
            return this.f12379b.m1007s(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: b */
    public void mo915b() {
        if (mo910g()) {
            this.f12379b.m1004v();
        } else {
            this.f12379b.m1014l();
        }
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: c */
    public void mo914c(C2954p pVar) {
        this.f12378a.m980M();
        this.f12379b.m1000z(pVar.m786i(), C2937l.m937a(pVar, this.f12378a.m965o().m1283l().m710b().type(), this.f12378a.m965o().m1284k()));
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: d */
    public void mo913d(C2938m mVar) {
        this.f12379b.m1026A(mVar);
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: e */
    public void mo912e(C2928g gVar) {
        this.f12379b.m1015k(gVar);
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: f */
    public C2959r.C2961b mo911f() {
        return this.f12379b.m1002x();
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    public void finishRequest() {
        this.f12379b.m1012n();
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: g */
    public boolean mo910g() {
        return !"close".equalsIgnoreCase(this.f12378a.m964p().m787h("Connection")) && !"close".equalsIgnoreCase(this.f12378a.m962r().m747p("Connection")) && !this.f12379b.m1011o();
    }

    @Override // com.squareup.okhttp.internal.http.AbstractC2941p
    /* renamed from: h */
    public AbstractC2962s mo909h(C2959r rVar) {
        return new C2936k(rVar.m745r(), Okio.buffer(m948i(rVar)));
    }
}
