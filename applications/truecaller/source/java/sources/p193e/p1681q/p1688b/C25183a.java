package p193e.p1681q.p1688b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: e.q.b.a */
/* loaded from: classes16-dex2jar.jar:e/q/b/a.class */
public class C25183a {

    /* renamed from: a */
    public final Map<String, List<String>> f70437a;

    /* renamed from: b */
    public final Map<String, List<String>> f70438b;

    /* renamed from: c */
    public final Map<String, List<String>> f70439c;

    /* renamed from: d */
    public final Map<String, List<String>> f70440d;

    public C25183a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        HashMap hashMap = new HashMap();
        this.f70437a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f70438b = hashMap2;
        HashMap hashMap3 = new HashMap();
        this.f70439c = hashMap3;
        HashMap hashMap4 = new HashMap();
        this.f70440d = hashMap4;
        m4125a(jSONObject, hashMap);
        m4125a(jSONObject2, hashMap2);
        Iterator<String> keys = jSONObject3.keys();
        while (keys.hasNext()) {
            try {
                String obj = keys.next().toString();
                JSONObject jSONObject4 = jSONObject3.getJSONObject(obj);
                JSONArray jSONArray = jSONObject4.getJSONArray("tokens");
                for (int i = 0; i < jSONArray.length(); i++) {
                    String string = jSONArray.getString(i);
                    List list = (List) hashMap3.get(string);
                    List arrayList = list == null ? new ArrayList() : list;
                    arrayList.add(obj);
                    hashMap3.put(string, arrayList);
                }
                ArrayList arrayList2 = new ArrayList();
                JSONArray jSONArray2 = jSONObject4.getJSONArray("tags");
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    arrayList2.add(jSONArray2.getString(i2));
                }
                hashMap4.put(obj, arrayList2);
            } catch (JSONException e) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000e A[Catch: JSONException -> 0x0073, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0073, blocks: (B:3:0x0005, B:5:0x000e, B:7:0x0024, B:9:0x002e, B:12:0x004d, B:14:0x0059), top: B:17:0x0005 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4125a(org.json.JSONObject r5, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r6) {
        /*
            r4 = this;
            r0 = r5
            java.util.Iterator r0 = r0.keys()
            r7 = r0
        L5:
            r0 = r7
            boolean r0 = r0.hasNext()     // Catch: org.json.JSONException -> L73
            if (r0 == 0) goto L72
            r0 = r7
            java.lang.Object r0 = r0.next()     // Catch: org.json.JSONException -> L73
            java.lang.String r0 = r0.toString()     // Catch: org.json.JSONException -> L73
            r8 = r0
            r0 = r5
            r1 = r8
            org.json.JSONArray r0 = r0.getJSONArray(r1)     // Catch: org.json.JSONException -> L73
            r9 = r0
            r0 = 0
            r10 = r0
        L24:
            r0 = r10
            r1 = r9
            int r1 = r1.length()     // Catch: org.json.JSONException -> L73
            if (r0 >= r1) goto L5
            r0 = r9
            r1 = r10
            java.lang.String r0 = r0.getString(r1)     // Catch: org.json.JSONException -> L73
            r11 = r0
            r0 = r6
            r1 = r11
            java.lang.Object r0 = r0.get(r1)     // Catch: org.json.JSONException -> L73
            java.util.List r0 = (java.util.List) r0     // Catch: org.json.JSONException -> L73
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L57
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: org.json.JSONException -> L73
            r13 = r0
            r0 = r13
            r0.<init>()     // Catch: org.json.JSONException -> L73
        L57:
            r0 = r13
            r1 = r8
            boolean r0 = r0.add(r1)     // Catch: org.json.JSONException -> L73
            r0 = r6
            r1 = r11
            r2 = r13
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: org.json.JSONException -> L73
            int r10 = r10 + 1
            goto L24
        L72:
            return
        L73:
            r5 = move-exception
            goto L72
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1688b.C25183a.m4125a(org.json.JSONObject, java.util.Map):void");
    }
}
