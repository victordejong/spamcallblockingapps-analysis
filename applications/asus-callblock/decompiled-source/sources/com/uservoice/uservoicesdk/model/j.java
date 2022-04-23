package com.uservoice.uservoicesdk.model;

import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.g;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/j.class */
public class j extends d {
    public static void a(String str, String str2, String str3, Map<String, String> map, List<c> list, final a<j> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("ticket[message]", str);
        if (str2 != null) {
            hashMap.put("email", str2);
        }
        if (str3 != null) {
            hashMap.put("display_name", str3);
        }
        if (com.uservoice.uservoicesdk.a.a.a() != null) {
            hashMap.put("uvts", com.uservoice.uservoicesdk.a.a.a());
        }
        for (Map.Entry<String, String> entry : e.a().j.entrySet()) {
            hashMap.put(String.format("created_by[external_ids][%s]", entry.getKey()), entry.getValue());
        }
        if (e.a().f4631b.g != null) {
            for (Map.Entry<String, String> entry2 : e.a().f4631b.g.entrySet()) {
                hashMap.put(String.format("ticket[custom_field_values][%s]", entry2.getKey()), entry2.getValue());
            }
        }
        if (map != null) {
            for (Map.Entry<String, String> entry3 : map.entrySet()) {
                hashMap.put(String.format("ticket[custom_field_values][%s]", entry3.getKey()), entry3.getValue());
            }
        }
        for (int i = 0; i < list.size(); i++) {
            c cVar = list.get(i);
            hashMap.put(String.format("ticket[attachments][%d][name]", Integer.valueOf(i)), cVar.f4741a);
            hashMap.put(String.format("ticket[attachments][%d][data]", Integer.valueOf(i)), cVar.c);
            hashMap.put(String.format("ticket[attachments][%d][content_type]", Integer.valueOf(i)), cVar.f4742b);
        }
        b(a("/tickets.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.j.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "ticket", j.class));
            }
        });
    }
}
