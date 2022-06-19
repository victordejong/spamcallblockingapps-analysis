package com.facebook.appevents.p280b;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.appevents.p280b.C10000f;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10234b;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.C10333v;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.b.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/b.class */
public final class C9982b {

    /* renamed from: b */
    private static SensorManager f33201b;

    /* renamed from: c */
    private static C9994e f33202c;

    /* renamed from: d */
    private static String f33203d;

    /* renamed from: a */
    private static final C10000f f33200a = new C10000f();

    /* renamed from: e */
    private static final AtomicBoolean f33204e = new AtomicBoolean(true);

    /* renamed from: f */
    private static final AtomicBoolean f33205f = new AtomicBoolean(false);

    /* renamed from: g */
    private static volatile Boolean f33206g = Boolean.FALSE;

    /* renamed from: h */
    private static AbstractC9986a f33207h = new AbstractC9986a() { // from class: com.facebook.appevents.b.b.1
        @Override // com.facebook.appevents.p280b.C9982b.AbstractC9986a
        /* renamed from: a */
        public final void mo23673a(String str) {
            C9982b.m23685a(str);
        }
    };

    /* renamed from: com.facebook.appevents.b.b$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/b$a.class */
    public interface AbstractC9986a {
        /* renamed from: a */
        void mo23673a(String str);
    }

    /* renamed from: a */
    public static void m23688a() {
        if (C10249a.m23108a(C9982b.class)) {
            return;
        }
        try {
            f33204e.set(true);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
        }
    }

    /* renamed from: a */
    public static void m23687a(Activity activity) {
        if (C10249a.m23108a(C9982b.class)) {
            return;
        }
        try {
            if (!f33204e.get()) {
                return;
            }
            final C9987c m23672a = C9987c.m23672a();
            if (!C10249a.m23108a(m23672a) && !C10333v.m22996b()) {
                if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                    throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
                }
                m23672a.f33214b.add(activity);
                m23672a.f33216d.clear();
                if (m23672a.f33217e.containsKey(Integer.valueOf(activity.hashCode()))) {
                    m23672a.f33216d = m23672a.f33217e.get(Integer.valueOf(activity.hashCode()));
                }
                if (!C10249a.m23108a(m23672a)) {
                    if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                        m23672a.m23669b();
                    } else {
                        m23672a.f33213a.post(new Runnable() { // from class: com.facebook.appevents.b.c.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (C10249a.m23108a(this)) {
                                    return;
                                }
                                try {
                                    C9987c.m23670a(m23672a);
                                } catch (Throwable th) {
                                    C10249a.m23106a(th, this);
                                }
                            }
                        });
                    }
                }
            }
            Context applicationContext = activity.getApplicationContext();
            final String m23286m = C10181g.m23286m();
            final C10302p m23028a = C10306q.m23028a(m23286m);
            if (m23028a != null && m23028a.f33850g) {
                SensorManager sensorManager = (SensorManager) applicationContext.getSystemService("sensor");
                f33201b = sensorManager;
                if (sensorManager == null) {
                    return;
                }
                Sensor defaultSensor = sensorManager.getDefaultSensor(1);
                f33202c = new C9994e(activity);
                C10000f c10000f = f33200a;
                C10000f.AbstractC10001a abstractC10001a = new C10000f.AbstractC10001a() { // from class: com.facebook.appevents.b.b.2
                    @Override // com.facebook.appevents.p280b.C10000f.AbstractC10001a
                    /* renamed from: a */
                    public final void mo23646a() {
                        C10302p c10302p = m23028a;
                        boolean z = c10302p != null && c10302p.f33850g;
                        boolean m23282q = C10181g.m23282q();
                        if (!z || !m23282q) {
                            return;
                        }
                        C9982b.m23678e().mo23673a(m23286m);
                    }
                };
                if (!C10249a.m23108a(c10000f)) {
                    c10000f.f33247a = abstractC10001a;
                }
                f33201b.registerListener(f33200a, defaultSensor, 2);
                if (m23028a != null && m23028a.f33850g) {
                    f33202c.m23656a();
                }
                m23674i();
            }
            m23674i();
            m23674i();
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
        }
    }

    /* renamed from: a */
    public static void m23686a(Boolean bool) {
        if (C10249a.m23108a(C9982b.class)) {
            return;
        }
        try {
            f33205f.set(bool.booleanValue());
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
        }
    }

    /* renamed from: a */
    static void m23685a(final String str) {
        if (C10249a.m23108a(C9982b.class)) {
            return;
        }
        try {
            if (f33206g.booleanValue()) {
                return;
            }
            f33206g = Boolean.TRUE;
            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.b.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        boolean z = true;
                        GraphRequest m23799a = GraphRequest.m23799a((AccessToken) null, String.format(Locale.US, "%s/app_indexing_session", str), (JSONObject) null, (GraphRequest.AbstractC9933b) null);
                        Bundle bundle = m23799a.f33078d;
                        Bundle bundle2 = bundle;
                        if (bundle == null) {
                            bundle2 = new Bundle();
                        }
                        C10234b m23133b = C10234b.m23133b(C10181g.m23290i());
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(Build.MODEL != null ? Build.MODEL : "");
                        if (m23133b == null || m23133b.m23140a() == null) {
                            jSONArray.put("");
                        } else {
                            jSONArray.put(m23133b.m23140a());
                        }
                        jSONArray.put("0");
                        Object obj = "0";
                        if (C10033b.m23556c()) {
                            obj = "1";
                        }
                        jSONArray.put(obj);
                        Locale m23194e = C10213ae.m23194e();
                        jSONArray.put(m23194e.getLanguage() + "_" + m23194e.getCountry());
                        String jSONArray2 = jSONArray.toString();
                        bundle2.putString("device_session_id", C9982b.m23681c());
                        bundle2.putString("extinfo", jSONArray2);
                        m23799a.f33078d = bundle2;
                        JSONObject jSONObject = GraphRequest.m23796a(m23799a).f33959a;
                        AtomicBoolean m23677f = C9982b.m23677f();
                        if (jSONObject == null || !jSONObject.optBoolean("is_app_indexing_enabled", false)) {
                            z = false;
                        }
                        m23677f.set(z);
                        if (!C9982b.m23677f().get()) {
                            C9982b.m23676g();
                        } else if (C9982b.m23675h() != null) {
                            C9982b.m23675h().m23656a();
                        }
                        C9982b.m23682b(Boolean.FALSE);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
        }
    }

    /* renamed from: b */
    static /* synthetic */ Boolean m23682b(Boolean bool) {
        if (C10249a.m23108a(C9982b.class)) {
            return null;
        }
        try {
            f33206g = bool;
            return bool;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
            return null;
        }
    }

    /* renamed from: b */
    public static void m23684b() {
        if (C10249a.m23108a(C9982b.class)) {
            return;
        }
        try {
            f33204e.set(false);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
        }
    }

    /* renamed from: b */
    public static void m23683b(Activity activity) {
        if (C10249a.m23108a(C9982b.class)) {
            return;
        }
        try {
            if (!f33204e.get()) {
                return;
            }
            C9987c m23672a = C9987c.m23672a();
            if (!C10249a.m23108a(m23672a) && !C10333v.m22996b()) {
                if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                    throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
                }
                m23672a.f33214b.remove(activity);
                m23672a.f33215c.clear();
                m23672a.f33217e.put(Integer.valueOf(activity.hashCode()), (HashSet) m23672a.f33216d.clone());
                m23672a.f33216d.clear();
            }
            C9994e c9994e = f33202c;
            if (c9994e != null && !C10249a.m23108a(c9994e) && c9994e.f33237b.get() != null && c9994e.f33238c != null) {
                try {
                    c9994e.f33238c.cancel();
                    c9994e.f33238c = null;
                } catch (Exception e) {
                    Log.e(C9994e.f33235a, "Error unscheduling indexing job", e);
                }
            }
            SensorManager sensorManager = f33201b;
            if (sensorManager == null) {
                return;
            }
            sensorManager.unregisterListener(f33200a);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
        }
    }

    /* renamed from: c */
    public static String m23681c() {
        if (C10249a.m23108a(C9982b.class)) {
            return null;
        }
        try {
            if (f33203d == null) {
                f33203d = UUID.randomUUID().toString();
            }
            return f33203d;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
            return null;
        }
    }

    /* renamed from: c */
    public static void m23680c(Activity activity) {
        if (C10249a.m23108a(C9982b.class)) {
            return;
        }
        try {
            C9987c m23672a = C9987c.m23672a();
            if (C10249a.m23108a(m23672a)) {
                return;
            }
            m23672a.f33217e.remove(Integer.valueOf(activity.hashCode()));
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
        }
    }

    /* renamed from: d */
    public static boolean m23679d() {
        if (C10249a.m23108a(C9982b.class)) {
            return false;
        }
        try {
            return f33205f.get();
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
            return false;
        }
    }

    /* renamed from: e */
    static /* synthetic */ AbstractC9986a m23678e() {
        if (C10249a.m23108a(C9982b.class)) {
            return null;
        }
        try {
            return f33207h;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
            return null;
        }
    }

    /* renamed from: f */
    static /* synthetic */ AtomicBoolean m23677f() {
        if (C10249a.m23108a(C9982b.class)) {
            return null;
        }
        try {
            return f33205f;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
            return null;
        }
    }

    /* renamed from: g */
    static /* synthetic */ String m23676g() {
        if (C10249a.m23108a(C9982b.class)) {
            return null;
        }
        try {
            f33203d = null;
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
            return null;
        }
    }

    /* renamed from: h */
    static /* synthetic */ C9994e m23675h() {
        if (C10249a.m23108a(C9982b.class)) {
            return null;
        }
        try {
            return f33202c;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9982b.class);
            return null;
        }
    }

    /* renamed from: i */
    private static boolean m23674i() {
        if (C10249a.m23108a(C9982b.class)) {
        }
        return false;
    }
}
