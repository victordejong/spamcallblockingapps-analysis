package com.inmobi.rendering.p517a;

import android.content.ContentValues;
import com.inmobi.commons.core.p512d.C8363b;
import com.inmobi.commons.core.p513e.C8366b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.rendering.a.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/b.class */
public class C8443b {

    /* renamed from: a */
    public static final String[] f32833a = {"id", "pending_attempts", "url", "ping_in_webview", "follow_redirect", "ts", "created_ts", "track_extras"};

    /* renamed from: b */
    public static final String f32834b = "b";

    public C8443b() {
        C8363b a = C8363b.m5815a();
        a.m5811a("click", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, ping_in_webview TEXT NOT NULL, follow_redirect TEXT NOT NULL, ts TEXT NOT NULL, track_extras TEXT, created_ts TEXT NOT NULL )");
        a.m5808b();
    }

    /* renamed from: a */
    public static C8442a m5535a(ContentValues contentValues) {
        int intValue = contentValues.getAsInteger("id").intValue();
        int intValue2 = contentValues.getAsInteger("pending_attempts").intValue();
        String asString = contentValues.getAsString("url");
        long longValue = Long.valueOf(contentValues.getAsString("ts")).longValue();
        long longValue2 = Long.valueOf(contentValues.getAsString("created_ts")).longValue();
        boolean booleanValue = Boolean.valueOf(contentValues.getAsString("follow_redirect")).booleanValue();
        boolean booleanValue2 = Boolean.valueOf(contentValues.getAsString("ping_in_webview")).booleanValue();
        String asString2 = contentValues.getAsString("track_extras");
        HashMap hashMap = new HashMap();
        if (asString2 != null) {
            try {
                hashMap.putAll(m5532a(new JSONObject(asString2)));
            } catch (JSONException e) {
                StringBuilder sb = new StringBuilder("JSONException in parsing extras (");
                sb.append(e.getMessage());
                sb.append(")");
            } catch (Exception e2) {
                StringBuilder sb2 = new StringBuilder("Exception in parsing extras (");
                sb2.append(e2.getMessage());
                sb2.append(")");
            }
        }
        return new C8442a(intValue, asString, hashMap, booleanValue, booleanValue2, intValue2, longValue, longValue2);
    }

    /* renamed from: a */
    public static Map<String, String> m5532a(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, (String) jSONObject.get(next));
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m5534a(C8442a aVar) {
        C8363b a = C8363b.m5815a();
        a.m5810a("click", "id = ?", new String[]{String.valueOf(aVar.f32824a)});
        a.m5808b();
    }

    /* renamed from: a */
    public static boolean m5536a() {
        return C8363b.m5815a().m5814a("click") == 0;
    }

    /* renamed from: b */
    public static ContentValues m5531b(C8442a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(aVar.f32824a));
        contentValues.put("url", aVar.f32825b);
        contentValues.put("pending_attempts", Integer.valueOf(aVar.f32829f));
        contentValues.put("ts", Long.toString(aVar.f32827d));
        contentValues.put("created_ts", Long.toString(aVar.f32828e));
        contentValues.put("follow_redirect", Boolean.toString(aVar.f32832i));
        contentValues.put("ping_in_webview", Boolean.toString(aVar.f32831h));
        Map<String, String> map = aVar.f32826c;
        if (map != null && map.size() > 0) {
            contentValues.put("track_extras", new JSONObject(aVar.f32826c).toString());
        }
        return contentValues;
    }

    /* renamed from: a */
    public final boolean m5533a(C8442a aVar, int i) {
        synchronized (this) {
            ContentValues b = m5531b(aVar);
            C8363b a = C8363b.m5815a();
            if (a.m5814a("click") >= i) {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("pingUrl", aVar.f32825b);
                    hashMap.put("errorCode", "MaxDbLimitBreach");
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "PingDiscarded", hashMap);
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                    sb.append(e.getMessage());
                    sb.append(")");
                }
                C8442a a2 = m5535a(a.m5809a("click", f32833a, "ts= (SELECT MIN(ts) FROM click LIMIT 1)", null, null, null, null, null).get(0));
                StringBuilder sb2 = new StringBuilder("Deleting click (");
                sb2.append(a2.f32824a);
                sb2.append(")");
                m5534a(a2);
            }
            a.m5813a("click", b);
            a.m5808b();
        }
        return true;
    }
}
