package com.google.api.client.auth.oauth2;

import com.google.api.client.http.AbstractC15334m;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15330i;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.common.base.C15391m;
/* renamed from: com.google.api.client.auth.oauth2.c */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/c.class */
public final class C15266c extends C15267d {
    @AbstractC15247q(m9209a = "refresh_token")
    private String refreshToken;

    public C15266c(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, C15330i c15330i, String str) {
        super(abstractC15346w, jsonFactory, c15330i, "refresh_token");
        this.refreshToken = (String) C15391m.m8946a(str);
    }

    /* renamed from: b */
    public C15266c set(String str, Object obj) {
        return (C15266c) super.set(str, obj);
    }

    /* renamed from: a */
    public final C15266c mo9183b(AbstractC15334m abstractC15334m) {
        return (C15266c) super.mo9183b(abstractC15334m);
    }

    /* renamed from: a */
    public final C15266c mo9182b(AbstractC15342s abstractC15342s) {
        return (C15266c) super.mo9182b(abstractC15342s);
    }

    @Override // com.google.api.client.auth.oauth2.C15267d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C15267d mo9188a(C15330i c15330i) {
        return (C15266c) super.mo9188a(c15330i);
    }

    @Override // com.google.api.client.auth.oauth2.C15267d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C15267d mo9187a(Class cls) {
        return (C15266c) super.mo9187a(cls);
    }

    @Override // com.google.api.client.auth.oauth2.C15267d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C15267d mo9186a(String str) {
        return (C15266c) super.mo9186a(str);
    }
}
