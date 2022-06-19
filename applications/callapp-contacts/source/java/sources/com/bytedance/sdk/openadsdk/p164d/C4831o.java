package com.bytedance.sdk.openadsdk.p164d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4516c;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.p187a.C5069a;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4934c;
import com.bytedance.sdk.openadsdk.utils.C5473o;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.d.o */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/o.class */
public class C4831o implements AbstractC4813f<C4934c.C4936a> {

    /* renamed from: a */
    protected final C4516c f17729a = C4516c.m35418a(m33779e());

    /* renamed from: b */
    private final Context f17730b;

    public C4831o(Context context) {
        this.f17730b = context;
    }

    /* renamed from: a */
    private static String m33788a(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    /* renamed from: a */
    private static String m33787a(String str, List<?> list, int i, boolean z) {
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int min = Math.min(i, 1000);
        int size = list.size();
        int i2 = size % min == 0 ? size / min : (size / min) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * min;
            String m33788a = m33788a(TextUtils.join("','", list.subList(i4, Math.min(i4 + min, size))), "");
            if (i3 != 0) {
                sb.append(str3);
            }
            sb.append(str);
            sb.append(str2);
            sb.append("('");
            sb.append(m33788a);
            sb.append("')");
        }
        return m33788a(sb.toString(), str + str2 + "('')");
    }

    /* renamed from: b */
    private void m33782b(int i, long j) {
        synchronized (this) {
            C5069a.m33117a(m33779e(), mo33780c(), "gen_time <? AND retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j), String.valueOf(i)});
        }
    }

    /* renamed from: b */
    private void m33781b(List<C4934c.C4936a> list) {
        synchronized (this) {
            LinkedList linkedList = new LinkedList();
            for (C4934c.C4936a c4936a : list) {
                linkedList.add(c4936a.f17965a);
            }
            C5069a.m33120a(m33779e(), "UPDATE " + mo33780c() + " SET retry = retry+1 WHERE " + m33787a("id", linkedList, 1000, true));
        }
    }

    /* renamed from: f */
    public static String m33778f() {
        return "CREATE TABLE IF NOT EXISTS logstats (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public List<C4934c.C4936a> mo33791a(int i, String str) {
        String str2;
        if (i <= 0 || TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = str + " DESC limit " + i;
        }
        LinkedList linkedList = new LinkedList();
        Cursor m33116a = C5069a.m33116a(m33779e(), mo33780c(), new String[]{"id", "value"}, null, null, null, null, str2);
        if (m33116a != null) {
            while (m33116a.moveToNext()) {
                try {
                    try {
                        linkedList.add(new C4934c.C4936a(m33116a.getString(m33116a.getColumnIndex("id")), new JSONObject(m33116a.getString(m33116a.getColumnIndex("value")))));
                    } catch (JSONException e) {
                    }
                } finally {
                    if (m33116a != null) {
                        m33116a.close();
                    }
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33793a(int i) {
        this.f17729a.m35417a("stats_serverbusy_retrycount", i);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33792a(int i, long j) {
        synchronized (this) {
            m33782b(i, j);
        }
    }

    /* renamed from: a */
    public void mo33789a(C4934c.C4936a c4936a) {
        synchronized (this) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", c4936a.f17965a);
            contentValues.put("value", c4936a.f17966b.toString());
            contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("retry", (Integer) 0);
            C5069a.m33119a(m33779e(), mo33780c(), contentValues);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33786a(List<C4934c.C4936a> list) {
        synchronized (this) {
            if (C5473o.m32125a(list)) {
                return;
            }
            LinkedList linkedList = new LinkedList();
            for (C4934c.C4936a c4936a : list) {
                linkedList.add(c4936a.f17965a);
            }
            C5069a.m33120a(m33779e(), "DELETE FROM " + mo33780c() + " WHERE " + m33787a("id", linkedList, 1000, true));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33785a(List<C4934c.C4936a> list, int i, long j) {
        synchronized (this) {
            if (C5473o.m32125a(list)) {
                return;
            }
            try {
                m33781b(list);
                m33782b(i, j);
            } catch (Exception e) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33784a(boolean z) {
        this.f17729a.m35414a("stats_serverbusy_flag", z);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public boolean mo33794a() {
        return this.f17729a.m35410b("stats_serverbusy_flag", false);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: b */
    public int mo33783b() {
        return this.f17729a.m35413b("stats_serverbusy_retrycount", 0);
    }

    /* renamed from: c */
    public String mo33780c() {
        return "logstats";
    }

    /* renamed from: e */
    public Context m33779e() {
        Context context = this.f17730b;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }
}
