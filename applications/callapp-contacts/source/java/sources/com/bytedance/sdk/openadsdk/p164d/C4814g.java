package com.bytedance.sdk.openadsdk.p164d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4516c;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.p187a.C5069a;
import com.bytedance.sdk.openadsdk.utils.C5473o;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.d.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/g.class */
public class C4814g implements AbstractC4813f<C4805a> {

    /* renamed from: a */
    private final Context f17666a;

    /* renamed from: b */
    private final C4516c f17667b = C4516c.m35418a(m33852c());

    public C4814g(Context context) {
        this.f17666a = context;
    }

    /* renamed from: a */
    private static String m33856a(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    /* renamed from: a */
    private static String m33855a(String str, List<?> list, int i, boolean z) {
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int min = Math.min(i, 1000);
        int size = list.size();
        int i2 = size % min == 0 ? size / min : (size / min) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * min;
            String m33856a = m33856a(TextUtils.join("','", list.subList(i4, Math.min(i4 + min, size))), "");
            if (i3 != 0) {
                sb.append(str3);
            }
            sb.append(str);
            sb.append(str2);
            sb.append("('");
            sb.append(m33856a);
            sb.append("')");
        }
        return m33856a(sb.toString(), str + str2 + "('')");
    }

    /* renamed from: b */
    private void m33854b(int i, long j) {
        synchronized (this) {
            C5069a.m33117a(m33852c(), "adevent", "gen_time <? AND retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j), String.valueOf(i)});
        }
    }

    /* renamed from: b */
    private void m33853b(List<C4805a> list) {
        synchronized (this) {
            LinkedList linkedList = new LinkedList();
            for (C4805a c4805a : list) {
                linkedList.add(c4805a.f17658a);
            }
            C5069a.m33120a(m33852c(), "UPDATE adevent SET retry = retry+1 WHERE " + m33855a("id", linkedList, 1000, true));
        }
    }

    /* renamed from: d */
    public static String m33851d() {
        return "CREATE TABLE IF NOT EXISTS adevent (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public List<C4805a> mo33791a(int i, String str) {
        LinkedList linkedList;
        synchronized (this) {
            String str2 = null;
            if (i > 0) {
                str2 = null;
                if (!TextUtils.isEmpty(str)) {
                    str2 = str + " DESC limit " + i;
                }
            }
            linkedList = new LinkedList();
            Cursor m33116a = C5069a.m33116a(m33852c(), "adevent", new String[]{"id", "value"}, null, null, null, null, str2);
            if (m33116a != null) {
                while (m33116a.moveToNext()) {
                    try {
                        linkedList.add(new C4805a(m33116a.getString(m33116a.getColumnIndex("id")), new JSONObject(m33116a.getString(m33116a.getColumnIndex("value")))));
                    } catch (JSONException e) {
                    }
                }
                if (m33116a != null) {
                    m33116a.close();
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33793a(int i) {
        this.f17667b.m35417a("serverbusy_retrycount", i);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33792a(int i, long j) {
        synchronized (this) {
            m33854b(i, j);
        }
    }

    /* renamed from: a */
    public void mo33789a(C4805a c4805a) {
        synchronized (this) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", c4805a.f17658a);
            contentValues.put("value", c4805a.f17659b.toString());
            contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("retry", (Integer) 0);
            C5069a.m33119a(m33852c(), "adevent", contentValues);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33786a(List<C4805a> list) {
        synchronized (this) {
            if (C5473o.m32125a(list)) {
                return;
            }
            LinkedList linkedList = new LinkedList();
            for (C4805a c4805a : list) {
                linkedList.add(c4805a.f17658a);
            }
            C5069a.m33120a(m33852c(), "DELETE FROM adevent WHERE " + m33855a("id", linkedList, 1000, true));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33785a(List<C4805a> list, int i, long j) {
        synchronized (this) {
            if (C5473o.m32125a(list)) {
                return;
            }
            try {
                m33853b(list);
                m33854b(i, j);
            } catch (Exception e) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33784a(boolean z) {
        this.f17667b.m35414a("serverbusy_flag", z);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public boolean mo33794a() {
        return this.f17667b.m35410b("serverbusy_flag", false);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: b */
    public int mo33783b() {
        return this.f17667b.m35413b("serverbusy_retrycount", 0);
    }

    /* renamed from: c */
    public Context m33852c() {
        Context context = this.f17666a;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }
}
