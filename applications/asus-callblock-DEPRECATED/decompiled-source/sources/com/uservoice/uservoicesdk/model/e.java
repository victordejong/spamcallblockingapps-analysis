package com.uservoice.uservoicesdk.model;

import android.content.SharedPreferences;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.uservoice.uservoicesdk.g;
import com.uservoice.uservoicesdk.j.a;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/e.class */
public class e extends d {

    /* renamed from: a  reason: collision with root package name */
    public boolean f4744a;

    /* renamed from: b  reason: collision with root package name */
    public int f4745b;
    public List<g> c;
    String d;
    public String g;
    public String h;
    public String i;
    public boolean j;
    private boolean k;
    private boolean l;
    private String m;

    public static void a(final a<e> aVar) {
        if (com.uservoice.uservoicesdk.e.a().f4631b == null) {
            aVar.a(new com.uservoice.uservoicesdk.j.e(new Exception("Uservoice config not loaded.")));
            return;
        }
        String str = com.uservoice.uservoicesdk.e.a().f4631b.f4564b == null ? "/clients/default.json" : "/client.json";
        final String format = String.format("uv-client-%s-%s-%s", g.b(), com.uservoice.uservoicesdk.e.a().f4631b.f4563a, com.uservoice.uservoicesdk.e.a().f4631b.f4564b);
        final SharedPreferences e = com.uservoice.uservoicesdk.e.a().e();
        e eVar = (e) a(e, format, "client", e.class);
        if (eVar != null) {
            aVar.a((a<e>) eVar);
            a(a(str, new Object[0]), new com.uservoice.uservoicesdk.j.g(aVar) { // from class: com.uservoice.uservoicesdk.model.e.1
                @Override // com.uservoice.uservoicesdk.j.g
                public final void a(JSONObject jSONObject) {
                    ((e) d.b(jSONObject, "client", e.class)).a(e, format, "client");
                }
            });
            return;
        }
        a(a(str, new Object[0]), new com.uservoice.uservoicesdk.j.g(aVar) { // from class: com.uservoice.uservoicesdk.model.e.2
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                e eVar2 = (e) d.b(jSONObject, "client", e.class);
                eVar2.a(e, format, "client");
                aVar.a((a) eVar2);
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4744a = jSONObject.getBoolean("tickets_enabled");
        this.k = jSONObject.getBoolean("feedback_enabled");
        this.l = jSONObject.getBoolean("white_label");
        if (jSONObject.has("display_suggestions_by_rank")) {
            this.j = jSONObject.getBoolean("display_suggestions_by_rank");
        }
        this.f4745b = jSONObject.getJSONObject("forum").getInt("id");
        this.c = a(jSONObject, "custom_fields", g.class);
        this.d = a(jSONObject.getJSONObject("subdomain"), "default_sort");
        this.g = a(jSONObject.getJSONObject("subdomain"), "id");
        this.m = a(jSONObject.getJSONObject("subdomain"), ContactDetailCallogActivity.EXTRA_NAME);
        this.h = jSONObject.getString("key");
        this.i = jSONObject.has("secret") ? jSONObject.getString("secret") : null;
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void b(JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put("tickets_enabled", this.f4744a);
        jSONObject.put("feedback_enabled", this.k);
        jSONObject.put("white_label", this.l);
        jSONObject.put("display_suggestions_by_rank", this.j);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("id", this.f4745b);
        jSONObject.put("forum", jSONObject2);
        JSONArray jSONArray = new JSONArray();
        for (g gVar : this.c) {
            JSONObject jSONObject3 = new JSONObject();
            gVar.b(jSONObject3);
            jSONArray.put(jSONObject3);
        }
        jSONObject.put("custom_fields", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("id", this.g);
        jSONObject4.put("default_sort", this.d);
        jSONObject4.put(ContactDetailCallogActivity.EXTRA_NAME, this.m);
        jSONObject.put("subdomain", jSONObject4);
        jSONObject.put("key", this.h);
        if (this.i != null) {
            jSONObject.put("secret", this.i);
        }
    }
}
