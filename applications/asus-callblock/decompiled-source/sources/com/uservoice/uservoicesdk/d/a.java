package com.uservoice.uservoicesdk.d;

import android.util.Log;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.j.f;
import com.uservoice.uservoicesdk.j.g;
import com.uservoice.uservoicesdk.model.Article;
import com.uservoice.uservoicesdk.model.d;
import java.util.Date;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f4616a = Integer.parseInt(String.valueOf(new Date().getTime()).substring(4));

    /* renamed from: b  reason: collision with root package name */
    private static String f4617b;

    public static void a(String str, String str2, d dVar) {
        HashMap hashMap = new HashMap();
        if (com.uservoice.uservoicesdk.a.a.a() != null) {
            hashMap.put("uvts", com.uservoice.uservoicesdk.a.a.a());
        }
        hashMap.put("channel", "android");
        hashMap.put("search_term", f4617b);
        hashMap.put("interaction_identifier", String.valueOf(f4616a));
        hashMap.put("subdomain_id", String.valueOf(e.a().g.g));
        hashMap.put("kind", str);
        hashMap.put("deflecting_type", str2);
        hashMap.put("deflector_id", String.valueOf(dVar.c()));
        hashMap.put("deflector_type", dVar instanceof Article ? "Faq" : "Suggestion");
        new f(com.uservoice.uservoicesdk.j.d.GET, "/clients/omnibox/deflections/upsert.json", hashMap, new g() { // from class: com.uservoice.uservoicesdk.d.a.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                Log.e("UV", "Failed sending deflection: " + eVar.a());
            }

            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                Log.d("UV", jSONObject.toString());
            }
        }).execute(new String[0]);
    }
}
