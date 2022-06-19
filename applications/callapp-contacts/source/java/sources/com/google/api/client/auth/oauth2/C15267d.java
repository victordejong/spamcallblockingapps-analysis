package com.google.api.client.auth.oauth2;

import com.google.api.client.http.AbstractC15334m;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15320ae;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15343t;
import com.google.api.client.http.C15345v;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15241n;
import com.google.common.base.C15391m;
import java.io.IOException;
/* renamed from: com.google.api.client.auth.oauth2.d */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/d.class */
public class C15267d extends C15241n {

    /* renamed from: a */
    AbstractC15342s f55171a;

    /* renamed from: b */
    AbstractC15334m f55172b;

    /* renamed from: c */
    protected Class<? extends TokenResponse> f55173c;

    /* renamed from: d */
    private final AbstractC15346w f55174d;

    /* renamed from: e */
    private final JsonFactory f55175e;

    /* renamed from: f */
    private C15330i f55176f;
    @AbstractC15247q(m9209a = "grant_type")
    private String grantType;
    @AbstractC15247q(m9209a = "scope")
    private String scopes;

    public C15267d(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, C15330i c15330i, String str) {
        this(abstractC15346w, jsonFactory, c15330i, str, TokenResponse.class);
    }

    public C15267d(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, C15330i c15330i, String str, Class<? extends TokenResponse> cls) {
        this.f55174d = (AbstractC15346w) C15391m.m8946a(abstractC15346w);
        this.f55175e = (JsonFactory) C15391m.m8946a(jsonFactory);
        mo9188a(c15330i);
        mo9186a(str);
        mo9187a(cls);
    }

    /* renamed from: a */
    public C15267d mo9188a(C15330i c15330i) {
        this.f55176f = c15330i;
        C15391m.m8943a(c15330i.f55335c == null);
        return this;
    }

    /* renamed from: a */
    public C15267d mo9187a(Class<? extends TokenResponse> cls) {
        this.f55173c = cls;
        return this;
    }

    /* renamed from: a */
    public C15267d mo9186a(String str) {
        this.grantType = (String) C15391m.m8946a(str);
        return this;
    }

    /* renamed from: a */
    public C15267d set(String str, Object obj) {
        return (C15267d) super.set(str, obj);
    }

    /* renamed from: a */
    public final C15343t m9189a() throws IOException {
        C15340q m9027a = this.f55174d.createRequestFactory(new AbstractC15342s() { // from class: com.google.api.client.auth.oauth2.d.1
            @Override // com.google.api.client.http.AbstractC15342s
            /* renamed from: a */
            public final void mo9023a(C15340q c15340q) throws IOException {
                if (C15267d.this.f55171a != null) {
                    C15267d.this.f55171a.mo9023a(c15340q);
                }
                final AbstractC15334m abstractC15334m = c15340q.f55362c;
                c15340q.f55362c = new AbstractC15334m() { // from class: com.google.api.client.auth.oauth2.d.1.1
                    @Override // com.google.api.client.http.AbstractC15334m
                    public final void intercept(C15340q c15340q2) throws IOException {
                        AbstractC15334m abstractC15334m2 = abstractC15334m;
                        if (abstractC15334m2 != null) {
                            abstractC15334m2.intercept(c15340q2);
                        }
                        if (C15267d.this.f55172b != null) {
                            C15267d.this.f55172b.intercept(c15340q2);
                        }
                    }
                };
            }
        }).m9027a(this.f55176f, new C15320ae(this));
        m9027a.f55373n = new JsonObjectParser(this.f55175e);
        m9027a.f55374o = false;
        C15343t m9031o = m9027a.m9031o();
        if (C15345v.m9005a(m9031o.f55390c)) {
            return m9031o;
        }
        throw TokenResponseException.m9201a(this.f55175e, m9031o);
    }

    /* renamed from: b */
    public final TokenResponse m9184b() throws IOException {
        return (TokenResponse) m9189a().m9020a(this.f55173c);
    }

    /* renamed from: b */
    public C15267d mo9183b(AbstractC15334m abstractC15334m) {
        this.f55172b = abstractC15334m;
        return this;
    }

    /* renamed from: b */
    public C15267d mo9182b(AbstractC15342s abstractC15342s) {
        this.f55171a = abstractC15342s;
        return this;
    }
}
