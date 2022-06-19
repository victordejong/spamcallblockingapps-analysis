package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
/* renamed from: e.h.a.c.e0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/e0.class */
public class RunnableC22726e0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f62911a;

    /* renamed from: b */
    public final /* synthetic */ String f62912b;

    /* renamed from: c */
    public final /* synthetic */ C22731f0 f62913c;

    public RunnableC22726e0(C22731f0 c22731f0, Context context, String str) {
        this.f62913c = c22731f0;
        this.f62911a = context;
        this.f62912b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject m7829g;
        C22731f0 c22731f0 = this.f62913c;
        if (c22731f0.f62940e == null) {
            c22731f0.f62940e = new C22746b(this.f62911a, this.f62913c.f62938c);
        }
        synchronized (this.f62913c.f62937b) {
            try {
                m7829g = this.f62913c.f62940e.m7829g(this.f62912b);
            } catch (Throwable th) {
            }
            if (m7829g == null) {
                return;
            }
            Iterator<String> keys = m7829g.keys();
            while (keys.hasNext()) {
                try {
                    String next = keys.next();
                    Object obj = m7829g.get(next);
                    if (obj instanceof JSONObject) {
                        this.f62913c.f62937b.put(next, m7829g.getJSONObject(next));
                    } else if (obj instanceof JSONArray) {
                        this.f62913c.f62937b.put(next, m7829g.getJSONArray(next));
                    } else {
                        this.f62913c.f62937b.put(next, obj);
                    }
                } catch (JSONException e) {
                }
            }
            C22735g0 m7872d = this.f62913c.m7872d();
            String str = this.f62913c.f62938c.f2240a;
            m7872d.m7855b(str, "Local Data Store - Inflated local profile " + this.f62913c.f62937b.toString());
        }
    }
}
