package com.facebook.appevents.j;

import android.app.Activity;
import com.facebook.appevents.g.c;
import com.facebook.g;
import com.facebook.internal.b.b.a;
import com.facebook.internal.p;
import com.facebook.internal.q;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f19638a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f19639b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f19640c = new HashSet();

    public static void a() {
        synchronized (d.class) {
            try {
                if (!a.a(d.class)) {
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.j.d.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!a.a(this)) {
                                try {
                                    if (!d.b().get()) {
                                        d.b().set(true);
                                        d.c();
                                    }
                                } catch (Throwable th) {
                                    a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(Activity activity) {
        if (!a.a(d.class)) {
            try {
                if (!f19638a.get() || !a.a() || (f19639b.isEmpty() && f19640c.isEmpty())) {
                    e.b(activity);
                } else {
                    e.a(activity);
                }
            } catch (Exception e) {
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            return f19639b.contains(str);
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    static /* synthetic */ AtomicBoolean b() {
        if (a.a(d.class)) {
            return null;
        }
        try {
            return f19638a;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(String str) {
        if (a.a(d.class)) {
            return false;
        }
        try {
            return f19640c.contains(str);
        } catch (Throwable th) {
            a.a(th, d.class);
            return false;
        }
    }

    static /* synthetic */ void c() {
        String str;
        File a2;
        if (!a.a(d.class)) {
            try {
                if (!a.a(d.class)) {
                    try {
                        p a3 = q.a(g.m(), false);
                        if (!(a3 == null || (str = a3.k) == null)) {
                            if (!a.a(d.class)) {
                                try {
                                    JSONObject jSONObject = new JSONObject(str);
                                    if (jSONObject.has("production_events")) {
                                        JSONArray jSONArray = jSONObject.getJSONArray("production_events");
                                        for (int i = 0; i < jSONArray.length(); i++) {
                                            f19639b.add(jSONArray.getString(i));
                                        }
                                    }
                                    if (jSONObject.has("eligible_for_prediction_events")) {
                                        JSONArray jSONArray2 = jSONObject.getJSONArray("eligible_for_prediction_events");
                                        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                            f19640c.add(jSONArray2.getString(i2));
                                        }
                                    }
                                } catch (Exception e) {
                                } catch (Throwable th) {
                                    a.a(th, d.class);
                                }
                            }
                            if ((!f19639b.isEmpty() || !f19640c.isEmpty()) && (a2 = c.a(c.a.MTML_APP_EVENT_PREDICTION)) != null) {
                                a.a(a2);
                                Activity d2 = com.facebook.appevents.f.a.d();
                                if (d2 != null) {
                                    a(d2);
                                }
                            }
                        }
                    } catch (Exception e2) {
                    } catch (Throwable th2) {
                        a.a(th2, d.class);
                    }
                }
            } catch (Throwable th3) {
                a.a(th3, d.class);
            }
        }
    }
}
