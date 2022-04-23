package com.uservoice.uservoicesdk.model;

import com.android.contacts.activities.ContactDetailCallogActivity;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.g;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/k.class */
public class k extends d {

    /* renamed from: a  reason: collision with root package name */
    public String f4765a;

    /* renamed from: b  reason: collision with root package name */
    public String f4766b;

    public static void a(final a<k> aVar) {
        a(a("/users/current.json", new Object[0]), new g(aVar) { // from class: com.uservoice.uservoicesdk.model.k.2
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "user", k.class));
            }
        });
    }

    public static void a(String str, final a<k> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("email", str);
        a(a("/users/discover.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.k.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "user", k.class));
            }
        });
    }

    public static void a(String str, String str2, final a<b<k>> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("user[display_name]", str2);
        hashMap.put("user[email]", str);
        hashMap.put("request_token", e.a().d.f4761a);
        b(a("/users.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.k.4
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                a aVar2 = (a) d.b(jSONObject, "token", a.class);
                aVar.a((a) new b((k) d.b(jSONObject, "user", k.class), aVar2));
            }
        });
    }

    public static void a(String str, String str2, String str3, final a<b<k>> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("user[display_name]", str2);
        hashMap.put("user[email]", str);
        hashMap.put("user[guid]", str3);
        hashMap.put("request_token", e.a().d.f4761a);
        b(a("/users/find_or_create.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.k.3
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                a aVar2 = (a) d.b(jSONObject, "token", a.class);
                aVar.a((a) new b((k) d.b(jSONObject, "user", k.class), aVar2));
            }
        });
    }

    public static void b(String str, final a<k> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("user[email]", str);
        a(a("/users/forgot_password.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.k.5
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "user", k.class));
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4765a = a(jSONObject, ContactDetailCallogActivity.EXTRA_NAME);
        this.f4766b = a(jSONObject, "email");
    }
}
