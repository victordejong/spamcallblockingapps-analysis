package com.bytedance.sdk.openadsdk.p186m;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.multipro.p187a.C5069a;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.m.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/h.class */
public class C5067h implements AbstractC5066g {

    /* renamed from: a */
    private Context f18316a;

    public C5067h(Context context) {
        this.f18316a = context;
    }

    /* renamed from: b */
    public static String m33125b() {
        return "CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0, retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5066g
    /* renamed from: a */
    public List<C5065f> mo33127a() {
        LinkedList linkedList;
        synchronized (this) {
            linkedList = new LinkedList();
            Cursor m33116a = C5069a.m33116a(this.f18316a, "trackurl", null, null, null, null, null, null);
            if (m33116a != null) {
                while (m33116a.moveToNext()) {
                    linkedList.add(new C5065f(m33116a.getString(m33116a.getColumnIndex("id")), m33116a.getString(m33116a.getColumnIndex("url")), m33116a.getInt(m33116a.getColumnIndex("retry"))));
                }
                if (m33116a != null) {
                    m33116a.close();
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5066g
    /* renamed from: a */
    public void mo33126a(C5065f c5065f) {
        synchronized (this) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", c5065f.m33131a());
            contentValues.put("url", c5065f.m33129b());
            contentValues.put("replaceholder", (Integer) 1);
            contentValues.put("retry", Integer.valueOf(c5065f.m33128c()));
            C5069a.m33119a(this.f18316a, "trackurl", contentValues);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5066g
    /* renamed from: b */
    public void mo33124b(C5065f c5065f) {
        synchronized (this) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", c5065f.m33131a());
            contentValues.put("url", c5065f.m33129b());
            contentValues.put("replaceholder", (Integer) 1);
            contentValues.put("retry", Integer.valueOf(c5065f.m33128c()));
            C5069a.m33118a(this.f18316a, "trackurl", contentValues, "id=?", new String[]{c5065f.m33131a()});
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5066g
    /* renamed from: c */
    public void mo33123c(C5065f c5065f) {
        synchronized (this) {
            C5069a.m33117a(this.f18316a, "trackurl", "id=?", new String[]{c5065f.m33131a()});
        }
    }
}
