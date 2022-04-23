package com.google.api.client.auth.oauth2;

import com.google.api.client.a.n;
import com.google.api.client.a.q;
import com.google.api.client.http.ae;
import com.google.api.client.http.i;
import com.google.api.client.http.m;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.v;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/d.class */
public class d extends n {

    /* renamed from: a  reason: collision with root package name */
    s f31691a;

    /* renamed from: b  reason: collision with root package name */
    m f31692b;

    /* renamed from: c  reason: collision with root package name */
    protected Class<? extends TokenResponse> f31693c;

    /* renamed from: d  reason: collision with root package name */
    private final w f31694d;
    private final JsonFactory e;
    private i f;
    @q(a = "grant_type")
    private String grantType;
    @q(a = "scope")
    private String scopes;

    public d(w wVar, JsonFactory jsonFactory, i iVar, String str) {
        this(wVar, jsonFactory, iVar, str, TokenResponse.class);
    }

    public d(w wVar, JsonFactory jsonFactory, i iVar, String str, Class<? extends TokenResponse> cls) {
        this.f31694d = (w) com.google.common.base.m.a(wVar);
        this.e = (JsonFactory) com.google.common.base.m.a(jsonFactory);
        a(iVar);
        a(str);
        a(cls);
    }

    public d a(i iVar) {
        this.f = iVar;
        com.google.common.base.m.a(iVar.f31808c == null);
        return this;
    }

    public d a(Class<? extends TokenResponse> cls) {
        this.f31693c = cls;
        return this;
    }

    public d a(String str) {
        this.grantType = (String) com.google.common.base.m.a(str);
        return this;
    }

    /* renamed from: a */
    public d set(String str, Object obj) {
        return (d) super.set(str, obj);
    }

    public final t a() throws IOException {
        com.google.api.client.http.q a2 = this.f31694d.createRequestFactory(new s() { // from class: com.google.api.client.auth.oauth2.d.1
            @Override // com.google.api.client.http.s
            public final void a(com.google.api.client.http.q qVar) throws IOException {
                if (d.this.f31691a != null) {
                    d.this.f31691a.a(qVar);
                }
                final m mVar = qVar.f31824c;
                qVar.f31824c = new m() { // from class: com.google.api.client.auth.oauth2.d.1.1
                    @Override // com.google.api.client.http.m
                    public final void intercept(com.google.api.client.http.q qVar2) throws IOException {
                        m mVar2 = mVar;
                        if (mVar2 != null) {
                            mVar2.intercept(qVar2);
                        }
                        if (d.this.f31692b != null) {
                            d.this.f31692b.intercept(qVar2);
                        }
                    }
                };
            }
        }).a(this.f, new ae(this));
        a2.n = new JsonObjectParser(this.e);
        a2.o = false;
        t o = a2.o();
        if (v.a(o.f31830c)) {
            return o;
        }
        throw TokenResponseException.a(this.e, o);
    }

    public final TokenResponse b() throws IOException {
        return (TokenResponse) a().a(this.f31693c);
    }

    public d b(m mVar) {
        this.f31692b = mVar;
        return this;
    }

    public d b(s sVar) {
        this.f31691a = sVar;
        return this;
    }
}
