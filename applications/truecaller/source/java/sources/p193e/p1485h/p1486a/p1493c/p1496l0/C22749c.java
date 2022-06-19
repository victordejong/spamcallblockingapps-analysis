package p193e.p1485h.p1486a.p1493c.p1496l0;

import android.content.Context;
import android.content.SharedPreferences;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22751m;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
/* renamed from: e.h.a.c.l0.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/l0/c.class */
public class C22749c extends AbstractC22745a {

    /* renamed from: a */
    public C22746b f63010a;

    /* renamed from: b */
    public final C22751m f63011b;

    /* renamed from: c */
    public final CleverTapInstanceConfig f63012c;

    public C22749c(CleverTapInstanceConfig cleverTapInstanceConfig, C22751m c22751m) {
        this.f63012c = cleverTapInstanceConfig;
        this.f63011b = c22751m;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1496l0.AbstractC22745a
    /* renamed from: a */
    public void mo7820a(Context context) {
        Objects.requireNonNull(this.f63011b);
        synchronized (Boolean.TRUE) {
            C22746b mo7819b = mo7819b(context);
            mo7819b.m7826j(C22746b.EnumC22748b.EVENTS);
            mo7819b.m7826j(C22746b.EnumC22748b.PROFILE_EVENTS);
            SharedPreferences.Editor edit = C26232y.m2293v0(context, "IJ").edit();
            edit.clear();
            try {
                edit.apply();
            } catch (Throwable th) {
            }
            C26232y.m2470E1(context, C26232y.m2398W1(this.f63012c, "comms_first_ts"), 0);
            C26232y.m2470E1(context, C26232y.m2398W1(this.f63012c, "comms_last_ts"), 0);
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1496l0.AbstractC22745a
    /* renamed from: b */
    public C22746b mo7819b(Context context) {
        if (this.f63010a == null) {
            C22746b c22746b = new C22746b(context, this.f63012c);
            this.f63010a = c22746b;
            c22746b.m7832d(C22746b.EnumC22748b.EVENTS);
            this.f63010a.m7832d(C22746b.EnumC22748b.PROFILE_EVENTS);
            this.f63010a.m7832d(C22746b.EnumC22748b.PUSH_NOTIFICATION_VIEWED);
            C22746b c22746b2 = this.f63010a;
            synchronized (c22746b2) {
                c22746b2.m7834b(C22746b.EnumC22748b.PUSH_NOTIFICATIONS, 0L);
            }
        }
        return this.f63010a;
    }

    /* renamed from: c */
    public C22750d m7818c(Context context, C22746b.EnumC22748b enumC22748b, int i, C22750d c22750d) {
        C22750d c22750d2;
        Objects.requireNonNull(this.f63011b);
        synchronized (Boolean.TRUE) {
            C22746b mo7819b = mo7819b(context);
            if (c22750d != null) {
                enumC22748b = c22750d.f63015c;
            }
            if (c22750d != null) {
                mo7819b.m7833c(c22750d.f63014b, c22750d.f63015c);
            }
            c22750d2 = new C22750d();
            c22750d2.f63015c = enumC22748b;
            JSONObject m7831e = mo7819b.m7831e(enumC22748b, i);
            if (m7831e != null) {
                Iterator<String> keys = m7831e.keys();
                if (keys.hasNext()) {
                    String next = keys.next();
                    c22750d2.f63014b = next;
                    try {
                        c22750d2.f63013a = m7831e.getJSONArray(next);
                    } catch (JSONException e) {
                        c22750d2.f63014b = null;
                        c22750d2.f63013a = null;
                    }
                }
            }
        }
        return c22750d2;
    }

    /* renamed from: d */
    public final void m7817d(Context context, JSONObject jSONObject, C22746b.EnumC22748b enumC22748b) {
        Objects.requireNonNull(this.f63011b);
        synchronized (Boolean.TRUE) {
            if (mo7819b(context).m7825k(jSONObject, enumC22748b) > 0) {
                C22735g0 m42081b = this.f63012c.m42081b();
                String str = this.f63012c.f2240a;
                m42081b.m7856a(str, "Queued event: " + jSONObject.toString());
                C22735g0 m42081b2 = this.f63012c.m42081b();
                String str2 = this.f63012c.f2240a;
                m42081b2.m7855b(str2, "Queued event to DB table " + enumC22748b + ": " + jSONObject.toString());
            }
        }
    }
}
