package com.bytedance.sdk.openadsdk.d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.i.b.c;
import com.bytedance.sdk.openadsdk.multipro.a.a;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/o.class */
public class o implements f<c.a> {

    /* renamed from: a  reason: collision with root package name */
    protected final com.bytedance.sdk.openadsdk.core.c f9436a = com.bytedance.sdk.openadsdk.core.c.a(e());

    /* renamed from: b  reason: collision with root package name */
    private final Context f9437b;

    public o(Context context) {
        this.f9437b = context;
    }

    private static String a(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    private static String a(String str, List<?> list, int i, boolean z) {
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int min = Math.min(i, 1000);
        int size = list.size();
        int i2 = size % min == 0 ? size / min : (size / min) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * min;
            String a2 = a(TextUtils.join("','", list.subList(i4, Math.min(i4 + min, size))), "");
            if (i3 != 0) {
                sb.append(str3);
            }
            sb.append(str);
            sb.append(str2);
            sb.append("('");
            sb.append(a2);
            sb.append("')");
        }
        String sb2 = sb.toString();
        return a(sb2, str + str2 + "('')");
    }

    private void b(int i, long j) {
        synchronized (this) {
            a.a(e(), c(), "gen_time <? AND retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j), String.valueOf(i)});
        }
    }

    private void b(List<c.a> list) {
        synchronized (this) {
            LinkedList linkedList = new LinkedList();
            for (c.a aVar : list) {
                linkedList.add(aVar.f9609a);
            }
            a.a(e(), "UPDATE " + c() + " SET retry = retry+1 WHERE " + a("id", linkedList, 1000, true));
        }
    }

    public static String f() {
        return "CREATE TABLE IF NOT EXISTS logstats (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public List<c.a> a(int i, String str) {
        String str2;
        if (i <= 0 || TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = str + " DESC limit " + i;
        }
        LinkedList linkedList = new LinkedList();
        Cursor a2 = a.a(e(), c(), new String[]{"id", "value"}, null, null, null, null, str2);
        if (a2 != null) {
            while (a2.moveToNext()) {
                try {
                    try {
                        linkedList.add(new c.a(a2.getString(a2.getColumnIndex("id")), new JSONObject(a2.getString(a2.getColumnIndex("value")))));
                    } catch (JSONException e) {
                    }
                } finally {
                    if (a2 != null) {
                        a2.close();
                    }
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public void a(int i) {
        this.f9436a.a("stats_serverbusy_retrycount", i);
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public void a(int i, long j) {
        synchronized (this) {
            b(i, j);
        }
    }

    public void a(c.a aVar) {
        synchronized (this) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", aVar.f9609a);
            contentValues.put("value", aVar.f9610b.toString());
            contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("retry", (Integer) 0);
            a.a(e(), c(), contentValues);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public void a(List<c.a> list) {
        synchronized (this) {
            if (!com.bytedance.sdk.openadsdk.utils.o.a(list)) {
                LinkedList linkedList = new LinkedList();
                for (c.a aVar : list) {
                    linkedList.add(aVar.f9609a);
                }
                a.a(e(), "DELETE FROM " + c() + " WHERE " + a("id", linkedList, 1000, true));
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public void a(List<c.a> list, int i, long j) {
        synchronized (this) {
            if (!com.bytedance.sdk.openadsdk.utils.o.a(list)) {
                try {
                    b(list);
                    b(i, j);
                } catch (Exception e) {
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public void a(boolean z) {
        this.f9436a.a("stats_serverbusy_flag", z);
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public boolean a() {
        return this.f9436a.b("stats_serverbusy_flag", false);
    }

    @Override // com.bytedance.sdk.openadsdk.d.f
    public int b() {
        return this.f9436a.b("stats_serverbusy_retrycount", 0);
    }

    public String c() {
        return "logstats";
    }

    public Context e() {
        Context context = this.f9437b;
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        return context2;
    }
}
