package com.google.api.client.testing.p384a;

import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.AbstractC15349z;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.util.Set;
/* renamed from: com.google.api.client.testing.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/b.class */
public final class C15353b extends AbstractC15346w {

    /* renamed from: a */
    private Set<String> f55405a;

    /* renamed from: b */
    private C15355c f55406b;

    /* renamed from: c */
    private C15356d f55407c;

    /* renamed from: com.google.api.client.testing.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/b$a.class */
    public static final class C15354a {

        /* renamed from: a */
        Set<String> f55408a;

        /* renamed from: b */
        C15355c f55409b;

        /* renamed from: c */
        C15356d f55410c;

        /* renamed from: a */
        public final C15354a m8995a(C15356d c15356d) {
            C15391m.m8933b(this.f55409b == null, "Cannot set a low level HTTP response when a low level HTTP request has been set.");
            this.f55410c = c15356d;
            return this;
        }

        /* renamed from: a */
        public final C15353b m8996a() {
            return new C15353b(this);
        }
    }

    public C15353b() {
    }

    protected C15353b(C15354a c15354a) {
        this.f55405a = c15354a.f55408a;
        this.f55406b = c15354a.f55409b;
        this.f55407c = c15354a.f55410c;
    }

    @Override // com.google.api.client.http.AbstractC15346w
    public final AbstractC15349z buildRequest(String str, String str2) throws IOException {
        C15391m.m8936a(supportsMethod(str), "HTTP method %s not supported", str);
        C15355c c15355c = this.f55406b;
        if (c15355c != null) {
            return c15355c;
        }
        C15355c c15355c2 = new C15355c(str2);
        this.f55406b = c15355c2;
        C15356d c15356d = this.f55407c;
        if (c15356d != null) {
            c15355c2.f55411a = c15356d;
        }
        return this.f55406b;
    }

    @Override // com.google.api.client.http.AbstractC15346w
    public final boolean supportsMethod(String str) throws IOException {
        Set<String> set = this.f55405a;
        return set == null || set.contains(str);
    }
}
