package com.uservoice.uservoicesdk.model;

import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.g;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/i.class */
public class i extends d {

    /* renamed from: a  reason: collision with root package name */
    String f4761a;

    /* renamed from: b  reason: collision with root package name */
    private String f4762b;

    public static void a(final a<i> aVar) {
        a(a("/oauth/request_token.json", new Object[0]), new g(aVar) { // from class: com.uservoice.uservoicesdk.model.i.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "token", i.class));
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        this.f4761a = jSONObject.getString("oauth_token");
        this.f4762b = jSONObject.getString("oauth_token_secret");
    }
}
