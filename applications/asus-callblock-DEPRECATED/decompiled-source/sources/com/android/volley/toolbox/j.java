package com.android.volley.toolbox;

import com.android.volley.l;
import com.android.volley.p;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/j.class */
public class j extends k<JSONArray> {
    public j(String str, p.b<JSONArray> bVar, p.a aVar) {
        super(str, bVar, aVar);
    }

    @Override // com.android.volley.toolbox.k, com.android.volley.n
    public p<JSONArray> a(com.android.volley.j jVar) {
        p<JSONArray> a2;
        try {
            a2 = p.a(new JSONArray(new String(jVar.f2301b, e.a(jVar.c, "utf-8"))), e.a(jVar));
        } catch (UnsupportedEncodingException e) {
            a2 = p.a(new l(e));
        } catch (JSONException e2) {
            a2 = p.a(new l(e2));
        }
        return a2;
    }
}
