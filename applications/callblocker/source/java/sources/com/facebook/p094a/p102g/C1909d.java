package com.facebook.p094a.p102g;

import android.app.Activity;
import com.facebook.C2095j;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.p094a.p099d.C1855a;
import com.facebook.p094a.p100e.C1891b;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.a.g.d */
/* loaded from: classes-dex2jar.jar:com/facebook/a/g/d.class */
public final class C1909d {

    /* renamed from: a */
    private static final AtomicBoolean f5764a = new AtomicBoolean(false);

    /* renamed from: b */
    private static final Set<String> f5765b = new HashSet();

    /* renamed from: c */
    private static final Set<String> f5766c = new HashSet();

    /* renamed from: a */
    public static void m15905a() {
        synchronized (C1909d.class) {
            try {
                if (!f5764a.get()) {
                    f5764a.set(true);
                    m15902b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m15904a(Activity activity) {
        try {
            if (!f5764a.get() || !C1906a.m15926a() || (f5765b.isEmpty() && f5766c.isEmpty())) {
                ViewTreeObserver$OnGlobalLayoutListenerC1910e.m15896b(activity);
            } else {
                ViewTreeObserver$OnGlobalLayoutListenerC1910e.m15899a(activity);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static boolean m15903a(String str) {
        return f5765b.contains(str);
    }

    /* renamed from: b */
    private static void m15902b() {
        String m15593m;
        File m15975a;
        try {
            C2048l m15584a = C2050m.m15584a(C2095j.m15356l(), false);
            if (m15584a == null || (m15593m = m15584a.m15593m()) == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject(m15593m);
            if (jSONObject.has("production_events")) {
                JSONArray jSONArray = jSONObject.getJSONArray("production_events");
                for (int i = 0; i < jSONArray.length(); i++) {
                    f5765b.add(jSONArray.getString(i));
                }
            }
            if (jSONObject.has("eligible_for_prediction_events")) {
                JSONArray jSONArray2 = jSONObject.getJSONArray("eligible_for_prediction_events");
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    f5766c.add(jSONArray2.getString(i2));
                }
            }
            if ((f5765b.isEmpty() && f5766c.isEmpty()) || (m15975a = C1891b.m15975a("SUGGEST_EVENT")) == null) {
                return;
            }
            C1906a.m15925a(m15975a);
            Activity m16082c = C1855a.m16082c();
            if (m16082c == null) {
                return;
            }
            m15904a(m16082c);
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    public static boolean m15901b(String str) {
        return f5766c.contains(str);
    }
}
