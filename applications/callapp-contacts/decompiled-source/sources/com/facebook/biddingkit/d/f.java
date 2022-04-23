package com.facebook.biddingkit.d;

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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f19710a;

    /* renamed from: b  reason: collision with root package name */
    private final d f19711b;

    public f(Context context) {
        this.f19711b = new d(context, "EventLogsDatabase.db", null, 1);
    }

    private SQLiteDatabase a() {
        try {
            return this.f19711b.getWritableDatabase();
        } catch (Throwable th) {
            i.a();
            return null;
        }
    }

    public static List<e> a(int i) {
        LinkedList linkedList = new LinkedList();
        try {
            Cursor query = f19710a.a().query("EVENT_LOGS", null, null, null, null, null, null, null);
            int columnIndex = query.getColumnIndex("exception");
            int columnIndex2 = query.getColumnIndex("auction_id");
            int columnIndex3 = query.getColumnIndex("ID");
            int columnIndex4 = query.getColumnIndex("bidder_data");
            for (int i2 = i; query.moveToNext() && i2 > 0; i2--) {
                e eVar = new e();
                eVar.f19708d = query.getString(columnIndex);
                eVar.f19706b = query.getString(columnIndex2);
                eVar.f19705a = query.getString(columnIndex3);
                JSONObject jSONObject = new JSONObject(query.getString(columnIndex4));
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    String optString = jSONObject2.optString("result");
                    if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map = eVar.f19707c.get(next);
                        if (map == null) {
                            map = new HashMap<>();
                            eVar.f19707c.put(next, map);
                        }
                        map.put("result", optString);
                    }
                    String optString2 = jSONObject2.optString("cpm_cents");
                    if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map2 = eVar.f19707c.get(next);
                        Map<String, String> map3 = map2;
                        if (map2 == null) {
                            map3 = new HashMap<>();
                            eVar.f19707c.put(next, map3);
                        }
                        map3.put("cpm_cents", optString2);
                    }
                    String optString3 = jSONObject2.optString("error");
                    if (!TextUtils.isEmpty(optString3) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map4 = eVar.f19707c.get(next);
                        Map<String, String> map5 = map4;
                        if (map4 == null) {
                            map5 = new HashMap<>();
                            eVar.f19707c.put(next, map5);
                        }
                        map5.put("error", optString3);
                    }
                    String optString4 = jSONObject2.optString("latency_ms");
                    if (!TextUtils.isEmpty(optString4) && !TextUtils.isEmpty(next)) {
                        Map<String, String> map6 = eVar.f19707c.get(next);
                        Map<String, String> map7 = map6;
                        if (map6 == null) {
                            map7 = new HashMap<>();
                            eVar.f19707c.put(next, map7);
                        }
                        map7.put("latency_ms", optString4);
                    }
                }
                linkedList.add(eVar);
            }
            query.close();
        } catch (Throwable th) {
            i.a();
        }
        return linkedList;
    }

    public static void a(Context context) {
        if (f19710a == null) {
            synchronized (f.class) {
                try {
                    if (f19710a == null) {
                        f19710a = new f(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void a(e eVar) {
        try {
            ContentValues contentValues = new ContentValues();
            String str = "";
            contentValues.put("auction_id", TextUtils.isEmpty(eVar.f19706b) ? "" : eVar.f19706b);
            if (!TextUtils.isEmpty(eVar.f19708d)) {
                str = eVar.f19708d;
            }
            contentValues.put("exception", str);
            contentValues.put("bidder_data", eVar.a().toString());
            SQLiteDatabase a2 = f19710a.a();
            a2.insert("EVENT_LOGS", null, contentValues);
            a2.close();
        } catch (Exception e) {
            i.a();
        }
    }

    public static void a(String str) {
        try {
            f19710a.a().delete("EVENT_LOGS", "ID=?", new String[]{str});
        } catch (Throwable th) {
            i.a();
        }
    }

    public void finalize() throws Throwable {
        SQLiteDatabase a2 = a();
        if (a2 != null) {
            a2.close();
        }
        super.finalize();
    }
}
