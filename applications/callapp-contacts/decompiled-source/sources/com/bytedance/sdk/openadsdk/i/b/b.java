package com.bytedance.sdk.openadsdk.i.b;

import android.content.Context;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.i.b.c;
import com.bytedance.sdk.openadsdk.multipro.a.a;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f9602a;

    /* renamed from: b  reason: collision with root package name */
    private Context f9603b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f9604c = new AtomicBoolean(false);

    private b() {
        b();
    }

    public static b a() {
        if (f9602a == null) {
            synchronized (b.class) {
                try {
                    if (f9602a == null) {
                        f9602a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9602a;
    }

    public void b() {
        if (!this.f9604c.get() && n.a() != null) {
            this.f9603b = n.a();
            this.f9604c.set(true);
        }
    }

    public void c() {
        synchronized (this) {
            if (!this.f9604c.get()) {
                b();
                return;
            }
            try {
                a.a(this.f9603b, "logstats", "retry >=?", new String[]{"5"});
            } catch (Throwable th) {
            }
        }
    }

    public List<c.a> d() {
        synchronized (this) {
            LinkedList linkedList = new LinkedList();
            if (!this.f9604c.get()) {
                b();
                return linkedList;
            }
            Cursor a2 = a.a(this.f9603b, "logstats", new String[]{"id", "value"}, "retry <?", new String[]{"5"}, null, null, null);
            if (a2 != null) {
                while (a2.moveToNext()) {
                    try {
                        linkedList.add(new c.a(a2.getString(a2.getColumnIndex("id")), new JSONObject(a2.getString(a2.getColumnIndex("value")))));
                    } catch (Exception e) {
                    }
                }
                if (a2 != null) {
                    a2.close();
                }
            }
            return linkedList;
        }
    }
}
