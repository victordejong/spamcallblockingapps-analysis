package com.facebook.appevents.p289j;

import android.app.Activity;
import com.facebook.C10181g;
import com.facebook.appevents.p285f.C10026a;
import com.facebook.appevents.p286g.C10052c;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.j.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/d.class */
public final class C10088d {

    /* renamed from: a */
    private static final AtomicBoolean f33422a = new AtomicBoolean(false);

    /* renamed from: b */
    private static final Set<String> f33423b = new HashSet();

    /* renamed from: c */
    private static final Set<String> f33424c = new HashSet();

    /* renamed from: a */
    public static void m23432a() {
        synchronized (C10088d.class) {
            try {
                if (C10249a.m23108a(C10088d.class)) {
                    return;
                }
                C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.j.d.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C10249a.m23108a(this)) {
                            return;
                        }
                        try {
                            if (C10088d.m23429b().get()) {
                                return;
                            }
                            C10088d.m23429b().set(true);
                            C10088d.m23427c();
                        } catch (Throwable th) {
                            C10249a.m23106a(th, this);
                        }
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m23431a(Activity activity) {
        if (C10249a.m23108a(C10088d.class)) {
            return;
        }
        try {
            if (!f33422a.get() || !C10085a.m23453a() || (f33423b.isEmpty() && f33424c.isEmpty())) {
                ViewTreeObserver$OnGlobalLayoutListenerC10090e.m23423b(activity);
            } else {
                ViewTreeObserver$OnGlobalLayoutListenerC10090e.m23425a(activity);
            }
        } catch (Exception e) {
        } catch (Throwable th) {
            C10249a.m23106a(th, C10088d.class);
        }
    }

    /* renamed from: a */
    public static boolean m23430a(String str) {
        if (C10249a.m23108a(C10088d.class)) {
            return false;
        }
        try {
            return f33423b.contains(str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10088d.class);
            return false;
        }
    }

    /* renamed from: b */
    static /* synthetic */ AtomicBoolean m23429b() {
        if (C10249a.m23108a(C10088d.class)) {
            return null;
        }
        try {
            return f33422a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10088d.class);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m23428b(String str) {
        if (C10249a.m23108a(C10088d.class)) {
            return false;
        }
        try {
            return f33424c.contains(str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10088d.class);
            return false;
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m23427c() {
        String str;
        File m23521a;
        if (C10249a.m23108a(C10088d.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(C10088d.class)) {
                return;
            }
            try {
                C10302p m23026a = C10306q.m23026a(C10181g.m23286m(), false);
                if (m23026a == null || (str = m23026a.f33854k) == null) {
                    return;
                }
                if (!C10249a.m23108a(C10088d.class)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has("production_events")) {
                            JSONArray jSONArray = jSONObject.getJSONArray("production_events");
                            for (int i = 0; i < jSONArray.length(); i++) {
                                f33423b.add(jSONArray.getString(i));
                            }
                        }
                        if (jSONObject.has("eligible_for_prediction_events")) {
                            JSONArray jSONArray2 = jSONObject.getJSONArray("eligible_for_prediction_events");
                            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                f33424c.add(jSONArray2.getString(i2));
                            }
                        }
                    } catch (Exception e) {
                    } catch (Throwable th) {
                        C10249a.m23106a(th, C10088d.class);
                    }
                }
                if ((f33423b.isEmpty() && f33424c.isEmpty()) || (m23521a = C10052c.m23521a(C10052c.EnumC10057a.MTML_APP_EVENT_PREDICTION)) == null) {
                    return;
                }
                C10085a.m23452a(m23521a);
                Activity m23573d = C10026a.m23573d();
                if (m23573d == null) {
                    return;
                }
                m23431a(m23573d);
            } catch (Exception e2) {
            } catch (Throwable th2) {
                C10249a.m23106a(th2, C10088d.class);
            }
        } catch (Throwable th3) {
            C10249a.m23106a(th3, C10088d.class);
        }
    }
}
