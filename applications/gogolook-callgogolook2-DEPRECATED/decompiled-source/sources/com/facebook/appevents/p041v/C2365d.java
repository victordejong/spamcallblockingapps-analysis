package com.facebook.appevents.p041v;

import android.app.Activity;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.p038s.C2327a;
import com.facebook.appevents.p039t.C2354b;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.v.d */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/d.class */
public final class C2365d {

    /* renamed from: a */
    public static final AtomicBoolean f2916a = new AtomicBoolean(false);

    /* renamed from: b */
    public static final Set<String> f2917b = new HashSet();

    /* renamed from: c */
    public static final Set<String> f2918c = new HashSet();

    /* renamed from: a */
    public static void m35006a() {
        synchronized (C2365d.class) {
            try {
                if (!f2916a.get()) {
                    f2916a.set(true);
                    m35003b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m35005a(Activity activity) {
        try {
            if (!f2916a.get() || !C2362a.m35027a() || (f2917b.isEmpty() && f2918c.isEmpty())) {
                ViewTreeObserver$OnGlobalLayoutListenerC2366e.m34997b(activity);
            } else {
                ViewTreeObserver$OnGlobalLayoutListenerC2366e.m35000a(activity);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static boolean m35004a(String str) {
        return f2918c.contains(str);
    }

    /* renamed from: b */
    public static void m35003b() {
        String m;
        File a;
        try {
            C2464o a2 = C2466p.m34643a(C6135n.m23745f(), false);
            if (!(a2 == null || (m = a2.m34654m()) == null)) {
                JSONObject jSONObject = new JSONObject(m);
                if (jSONObject.has("production_events")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("production_events");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        f2917b.add(jSONArray.getString(i));
                    }
                }
                if (jSONObject.has("eligible_for_prediction_events")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("eligible_for_prediction_events");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        f2918c.add(jSONArray2.getString(i2));
                    }
                }
                if ((!f2917b.isEmpty() || !f2918c.isEmpty()) && (a = C2354b.m35061a("SUGGEST_EVENT")) != null) {
                    C2362a.m35026a(a);
                    Activity l = C2327a.m35133l();
                    if (l != null) {
                        m35005a(l);
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    public static boolean m35002b(String str) {
        return f2917b.contains(str);
    }
}
