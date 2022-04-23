package com.uservoice.uservoicesdk.model;

import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.j.g;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/a.class */
public class a extends d {

    /* renamed from: a  reason: collision with root package name */
    public String f4736a;

    /* renamed from: b  reason: collision with root package name */
    public String f4737b;

    public static void a(String str, String str2, final com.uservoice.uservoicesdk.j.a<a> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("email", str);
        hashMap.put("password", str2);
        hashMap.put("request_token", e.a().d.f4761a);
        b(a("/oauth/authorize.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.a.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((com.uservoice.uservoicesdk.j.a) d.b(jSONObject, "token", a.class));
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        this.f4736a = jSONObject.getString("oauth_token");
        this.f4737b = jSONObject.getString("oauth_token_secret");
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void b(JSONObject jSONObject) {
        jSONObject.put("oauth_token", this.f4736a);
        jSONObject.put("oauth_token_secret", this.f4737b);
    }
}
