package com.bytedance.sdk.openadsdk.p171i.p173b;

import android.content.Context;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.p187a.C5069a;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4934c;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.i.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/b.class */
public class C4933b {

    /* renamed from: a */
    private static volatile C4933b f17958a;

    /* renamed from: b */
    private Context f17959b;

    /* renamed from: c */
    private AtomicBoolean f17960c = new AtomicBoolean(false);

    private C4933b() {
        m33504b();
    }

    /* renamed from: a */
    public static C4933b m33505a() {
        if (f17958a == null) {
            synchronized (C4933b.class) {
                try {
                    if (f17958a == null) {
                        f17958a = new C4933b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17958a;
    }

    /* renamed from: b */
    public void m33504b() {
        if (!this.f17960c.get() && C4600n.m34815a() != null) {
            this.f17959b = C4600n.m34815a();
            this.f17960c.set(true);
        }
    }

    /* renamed from: c */
    public void m33503c() {
        synchronized (this) {
            if (!this.f17960c.get()) {
                m33504b();
                return;
            }
            try {
                C5069a.m33117a(this.f17959b, "logstats", "retry >=?", new String[]{"5"});
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: d */
    public List<C4934c.C4936a> m33502d() {
        synchronized (this) {
            LinkedList linkedList = new LinkedList();
            if (!this.f17960c.get()) {
                m33504b();
                return linkedList;
            }
            Cursor m33116a = C5069a.m33116a(this.f17959b, "logstats", new String[]{"id", "value"}, "retry <?", new String[]{"5"}, null, null, null);
            if (m33116a != null) {
                while (m33116a.moveToNext()) {
                    try {
                        linkedList.add(new C4934c.C4936a(m33116a.getString(m33116a.getColumnIndex("id")), new JSONObject(m33116a.getString(m33116a.getColumnIndex("value")))));
                    } catch (Exception e) {
                    }
                }
                if (m33116a != null) {
                    m33116a.close();
                }
            }
            return linkedList;
        }
    }
}
