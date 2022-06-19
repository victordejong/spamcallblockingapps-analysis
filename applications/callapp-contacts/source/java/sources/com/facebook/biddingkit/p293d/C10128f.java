package com.facebook.biddingkit.p293d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.facebook.biddingkit.d.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/f.class */
public class C10128f {

    /* renamed from: a */
    private static volatile C10128f f33511a;

    /* renamed from: b */
    private final C10125d f33512b;

    public C10128f(Context context) {
        this.f33512b = new C10125d(context, "EventLogsDatabase.db", null, 1);
    }

    /* renamed from: a */
    private SQLiteDatabase m23363a() {
        try {
            return this.f33512b.getWritableDatabase();
        } catch (Throwable th) {
            C10138i.m23347a();
            return null;
        }
    }

    /* renamed from: a */
    public static List<C10126e> m23362a(int i) {
        LinkedList linkedList = new LinkedList();
        try {
            Cursor query = f33511a.m23363a().query("EVENT_LOGS", null, null, null, null, null, null, null);
            int columnIndex = query.getColumnIndex("exception");
            int columnIndex2 = query.getColumnIndex("auction_id");
            int columnIndex3 = query.getColumnIndex("ID");
            int columnIndex4 = query.getColumnIndex("bidder_data");
            for (int i2 = i; query.moveToNext() && i2 > 0; i2--) {
                C10126e c10126e = new C10126e();
                c10126e.f33509d = query.getString(columnIndex);
                c10126e.f33507b = query.getString(columnIndex2);
                c10126e.f33506a = query.getString(columnIndex3);
                JSONObject jSONObject = new JSONObject(query.getString(columnIndex4));
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    String optString = jSONObject2.optString("result");
                    if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map = c10126e.f33508c.get(next);
                        if (map == null) {
                            map = new HashMap<>();
                            c10126e.f33508c.put(next, map);
                        }
                        map.put("result", optString);
                    }
                    String optString2 = jSONObject2.optString("cpm_cents");
                    if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map2 = c10126e.f33508c.get(next);
                        Map<String, String> map3 = map2;
                        if (map2 == null) {
                            map3 = new HashMap<>();
                            c10126e.f33508c.put(next, map3);
                        }
                        map3.put("cpm_cents", optString2);
                    }
                    String optString3 = jSONObject2.optString("error");
                    if (!TextUtils.isEmpty(optString3) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map4 = c10126e.f33508c.get(next);
                        Map<String, String> map5 = map4;
                        if (map4 == null) {
                            map5 = new HashMap<>();
                            c10126e.f33508c.put(next, map5);
                        }
                        map5.put("error", optString3);
                    }
                    String optString4 = jSONObject2.optString("latency_ms");
                    if (!TextUtils.isEmpty(optString4) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map6 = c10126e.f33508c.get(next);
                        Map<String, String> map7 = map6;
                        if (map6 == null) {
                            map7 = new HashMap<>();
                            c10126e.f33508c.put(next, map7);
                        }
                        map7.put("latency_ms", optString4);
                    }
                }
                linkedList.add(c10126e);
            }
            query.close();
        } catch (Throwable th) {
            C10138i.m23347a();
        }
        return linkedList;
    }

    /* renamed from: a */
    public static void m23361a(Context context) {
        if (f33511a == null) {
            synchronized (C10128f.class) {
                try {
                    if (f33511a == null) {
                        f33511a = new C10128f(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public static void m23360a(C10126e c10126e) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("auction_id", TextUtils.isEmpty(c10126e.f33507b) ? "" : c10126e.f33507b);
            contentValues.put("exception", TextUtils.isEmpty(c10126e.f33509d) ? "" : c10126e.f33509d);
            contentValues.put("bidder_data", c10126e.m23367a().toString());
            SQLiteDatabase m23363a = f33511a.m23363a();
            m23363a.insert("EVENT_LOGS", null, contentValues);
            m23363a.close();
        } catch (Exception e) {
            C10138i.m23347a();
        }
    }

    /* renamed from: a */
    public static void m23359a(String str) {
        try {
            f33511a.m23363a().delete("EVENT_LOGS", "ID=?", new String[]{str});
        } catch (Throwable th) {
            C10138i.m23347a();
        }
    }

    public void finalize() throws Throwable {
        SQLiteDatabase m23363a = m23363a();
        if (m23363a != null) {
            m23363a.close();
        }
        super.finalize();
    }
}
