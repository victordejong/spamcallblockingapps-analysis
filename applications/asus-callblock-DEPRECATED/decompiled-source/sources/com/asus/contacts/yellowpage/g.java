package com.asus.contacts.yellowpage;

import com.android.volley.p;
import com.android.volley.toolbox.e;
import com.android.volley.toolbox.j;
import com.asus.contacts.yellowpage.utils.VolleyHttpUtils;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/g.class */
public final class g extends j {
    public g(String str, p.b<JSONArray> bVar, p.a aVar) {
        super(str, bVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.toolbox.j, com.android.volley.toolbox.k, com.android.volley.n
    public final p<JSONArray> a(com.android.volley.j jVar) {
        p<JSONArray> pVar;
        try {
            pVar = p.a(new JSONArray(new String(jVar.f2301b, StandardCharsets.UTF_8)), e.a(jVar));
        } catch (JSONException e) {
            e.printStackTrace();
            pVar = null;
        }
        return pVar;
    }

    @Override // com.android.volley.n
    public final Map<String, String> d() {
        HashMap hashMap = new HashMap();
        hashMap.put("Accept", "application/json");
        hashMap.put("X-ZUMO-APPLICATION", VolleyHttpUtils.a());
        hashMap.put("Host", "asus-telephony-yellowpage.azure-mobile.net");
        return hashMap;
    }
}
