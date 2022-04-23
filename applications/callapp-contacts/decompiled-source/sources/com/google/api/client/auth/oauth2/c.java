package com.google.api.client.auth.oauth2;

import com.google.api.client.a.q;
import com.google.api.client.http.i;
import com.google.api.client.http.s;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import com.google.common.base.m;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/c.class */
public final class c extends d {
    @q(a = "refresh_token")
    private String refreshToken;

    public c(w wVar, JsonFactory jsonFactory, i iVar, String str) {
        super(wVar, jsonFactory, iVar, "refresh_token");
        this.refreshToken = (String) m.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public c set(String str, Object obj) {
        return (c) super.set(str, obj);
    }

    /* renamed from: a */
    public final c b(com.google.api.client.http.m mVar) {
        return (c) super.b(mVar);
    }

    /* renamed from: a */
    public final c b(s sVar) {
        return (c) super.b(sVar);
    }

    @Override // com.google.api.client.auth.oauth2.d
    public final /* bridge */ /* synthetic */ d a(i iVar) {
        return (c) super.a(iVar);
    }

    @Override // com.google.api.client.auth.oauth2.d
    public final /* bridge */ /* synthetic */ d a(Class cls) {
        return (c) super.a(cls);
    }

    @Override // com.google.api.client.auth.oauth2.d
    public final /* bridge */ /* synthetic */ d a(String str) {
        return (c) super.a(str);
    }
}
