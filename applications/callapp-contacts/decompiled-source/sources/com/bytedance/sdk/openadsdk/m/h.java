package com.bytedance.sdk.openadsdk.m;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.multipro.a.a;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/h.class */
public class h implements g {

    /* renamed from: a  reason: collision with root package name */
    private Context f9849a;

    public h(Context context) {
        this.f9849a = context;
    }

    public static String b() {
        return "CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0, retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.openadsdk.m.g
    public List<f> a() {
        LinkedList linkedList;
        synchronized (this) {
            linkedList = new LinkedList();
            Cursor a2 = a.a(this.f9849a, "trackurl", null, null, null, null, null, null);
            if (a2 != null) {
                while (a2.moveToNext()) {
                    linkedList.add(new f(a2.getString(a2.getColumnIndex("id")), a2.getString(a2.getColumnIndex("url")), a2.getInt(a2.getColumnIndex("retry"))));
                }
                if (a2 != null) {
                    a2.close();
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.openadsdk.m.g
    public void a(f fVar) {
        synchronized (this) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", fVar.a());
            contentValues.put("url", fVar.b());
            contentValues.put("replaceholder", (Integer) 1);
            contentValues.put("retry", Integer.valueOf(fVar.c()));
            a.a(this.f9849a, "trackurl", contentValues);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.m.g
    public void b(f fVar) {
        synchronized (this) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", fVar.a());
            contentValues.put("url", fVar.b());
            contentValues.put("replaceholder", (Integer) 1);
            contentValues.put("retry", Integer.valueOf(fVar.c()));
            a.a(this.f9849a, "trackurl", contentValues, "id=?", new String[]{fVar.a()});
        }
    }

    @Override // com.bytedance.sdk.openadsdk.m.g
    public void c(f fVar) {
        synchronized (this) {
            a.a(this.f9849a, "trackurl", "id=?", new String[]{fVar.a()});
        }
    }
}
