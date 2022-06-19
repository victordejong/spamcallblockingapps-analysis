package com.google.api.client.http;

import java.io.IOException;
/* renamed from: com.google.api.client.http.r */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/r.class */
public final class C15341r {

    /* renamed from: a */
    private final AbstractC15346w f55386a;

    /* renamed from: b */
    private final AbstractC15342s f55387b;

    public C15341r(AbstractC15346w abstractC15346w, AbstractC15342s abstractC15342s) {
        this.f55386a = abstractC15346w;
        this.f55387b = abstractC15342s;
    }

    /* renamed from: a */
    public final C15340q m9028a(C15330i c15330i) throws IOException {
        return m9026a("GET", c15330i, null);
    }

    /* renamed from: a */
    public final C15340q m9027a(C15330i c15330i, AbstractC15331j abstractC15331j) throws IOException {
        return m9026a("POST", c15330i, abstractC15331j);
    }

    /* renamed from: a */
    public final C15340q m9026a(String str, C15330i c15330i, AbstractC15331j abstractC15331j) throws IOException {
        C15340q buildRequest = this.f55386a.buildRequest();
        if (c15330i != null) {
            buildRequest.m9054a(c15330i);
        }
        AbstractC15342s abstractC15342s = this.f55387b;
        if (abstractC15342s != null) {
            abstractC15342s.mo9023a(buildRequest);
        }
        buildRequest.m9046a(str);
        if (abstractC15331j != null) {
            buildRequest.f55367h = abstractC15331j;
        }
        return buildRequest;
    }

    /* renamed from: a */
    public final AbstractC15346w m9029a() {
        return this.f55386a;
    }

    /* renamed from: b */
    public final C15340q m9024b(C15330i c15330i) throws IOException {
        return m9026a("PUT", c15330i, null);
    }

    /* renamed from: b */
    public final AbstractC15342s m9025b() {
        return this.f55387b;
    }
}
