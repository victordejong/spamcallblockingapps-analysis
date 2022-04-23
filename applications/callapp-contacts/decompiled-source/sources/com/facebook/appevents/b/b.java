package com.facebook.appevents.b;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.appevents.b.f;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.p;
import com.facebook.internal.q;
import com.facebook.internal.v;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static SensorManager f19464b;

    /* renamed from: c  reason: collision with root package name */
    private static e f19465c;

    /* renamed from: d  reason: collision with root package name */
    private static String f19466d;

    /* renamed from: a  reason: collision with root package name */
    private static final f f19463a = new f();
    private static final AtomicBoolean e = new AtomicBoolean(true);
    private static final AtomicBoolean f = new AtomicBoolean(false);
    private static volatile Boolean g = Boolean.FALSE;
    private static a h = new a() { // from class: com.facebook.appevents.b.b.1
        @Override // com.facebook.appevents.b.b.a
        public final void a(String str) {
            b.a(str);
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/b$a.class */
    public interface a {
        void a(String str);
    }

    public static void a() {
        if (!com.facebook.internal.b.b.a.a(b.class)) {
            try {
                e.set(true);
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, b.class);
            }
        }
    }

    public static void a(Activity activity) {
        if (!com.facebook.internal.b.b.a.a(b.class)) {
            try {
                if (e.get()) {
                    final c a2 = c.a();
                    if (!com.facebook.internal.b.b.a.a(a2) && !v.b()) {
                        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                            a2.f19471b.add(activity);
                            a2.f19473d.clear();
                            if (a2.e.containsKey(Integer.valueOf(activity.hashCode()))) {
                                a2.f19473d = a2.e.get(Integer.valueOf(activity.hashCode()));
                            }
                            if (!com.facebook.internal.b.b.a.a(a2)) {
                                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                                    a2.b();
                                } else {
                                    a2.f19470a.post(new Runnable() { // from class: com.facebook.appevents.b.c.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            if (!com.facebook.internal.b.b.a.a(this)) {
                                                try {
                                                    c.a(a2);
                                                } catch (Throwable th) {
                                                    com.facebook.internal.b.b.a.a(th, this);
                                                }
                                            }
                                        }
                                    });
                                }
                            }
                        } else {
                            throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
                        }
                    }
                    Context applicationContext = activity.getApplicationContext();
                    final String m = g.m();
                    final p a3 = q.a(m);
                    if (a3 != null && a3.g) {
                        SensorManager sensorManager = (SensorManager) applicationContext.getSystemService("sensor");
                        f19464b = sensorManager;
                        if (sensorManager != null) {
                            Sensor defaultSensor = sensorManager.getDefaultSensor(1);
                            f19465c = new e(activity);
                            f fVar = f19463a;
                            f.a aVar = new f.a() { // from class: com.facebook.appevents.b.b.2
                                @Override // com.facebook.appevents.b.f.a
                                public final void a() {
                                    p pVar = p.this;
                                    boolean z = pVar != null && pVar.g;
                                    boolean q = g.q();
                                    if (z && q) {
                                        b.e().a(m);
                                    }
                                }
                            };
                            if (!com.facebook.internal.b.b.a.a(fVar)) {
                                fVar.f19499a = aVar;
                            }
                            f19464b.registerListener(f19463a, defaultSensor, 2);
                            if (a3 != null && a3.g) {
                                f19465c.a();
                            }
                            i();
                        }
                        return;
                    }
                    i();
                    i();
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, b.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Boolean bool) {
        if (!com.facebook.internal.b.b.a.a(b.class)) {
            try {
                f.set(bool.booleanValue());
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, b.class);
            }
        }
    }

    static void a(final String str) {
        if (!com.facebook.internal.b.b.a.a(b.class)) {
            try {
                if (!g.booleanValue()) {
                    g = Boolean.TRUE;
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.b.b.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str2 = "0";
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    boolean z = true;
                                    GraphRequest a2 = GraphRequest.a((AccessToken) null, String.format(Locale.US, "%s/app_indexing_session", str), (JSONObject) null, (GraphRequest.b) null);
                                    Bundle bundle = a2.f19373d;
                                    Bundle bundle2 = bundle;
                                    if (bundle == null) {
                                        bundle2 = new Bundle();
                                    }
                                    com.facebook.internal.b b2 = com.facebook.internal.b.b(g.i());
                                    JSONArray jSONArray = new JSONArray();
                                    jSONArray.put(Build.MODEL != null ? Build.MODEL : "");
                                    if (b2 == null || b2.a() == null) {
                                        jSONArray.put("");
                                    } else {
                                        jSONArray.put(b2.a());
                                    }
                                    jSONArray.put("0");
                                    if (com.facebook.appevents.f.b.c()) {
                                        str2 = "1";
                                    }
                                    jSONArray.put(str2);
                                    Locale e2 = ae.e();
                                    jSONArray.put(e2.getLanguage() + "_" + e2.getCountry());
                                    String jSONArray2 = jSONArray.toString();
                                    bundle2.putString("device_session_id", b.c());
                                    bundle2.putString("extinfo", jSONArray2);
                                    a2.f19373d = bundle2;
                                    JSONObject jSONObject = GraphRequest.a(a2).f20036a;
                                    AtomicBoolean f2 = b.f();
                                    if (jSONObject == null || !jSONObject.optBoolean("is_app_indexing_enabled", false)) {
                                        z = false;
                                    }
                                    f2.set(z);
                                    if (!b.f().get()) {
                                        b.g();
                                    } else if (b.h() != null) {
                                        b.h().a();
                                    }
                                    b.b(Boolean.FALSE);
                                } catch (Throwable th) {
                                    com.facebook.internal.b.b.a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, b.class);
            }
        }
    }

    static /* synthetic */ Boolean b(Boolean bool) {
        if (com.facebook.internal.b.b.a.a(b.class)) {
            return null;
        }
        try {
            g = bool;
            return bool;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, b.class);
            return null;
        }
    }

    public static void b() {
        if (!com.facebook.internal.b.b.a.a(b.class)) {
            try {
                e.set(false);
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, b.class);
            }
        }
    }

    public static void b(Activity activity) {
        if (!com.facebook.internal.b.b.a.a(b.class)) {
            try {
                if (e.get()) {
                    c a2 = c.a();
                    if (!com.facebook.internal.b.b.a.a(a2) && !v.b()) {
                        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                            a2.f19471b.remove(activity);
                            a2.f19472c.clear();
                            a2.e.put(Integer.valueOf(activity.hashCode()), (HashSet) a2.f19473d.clone());
                            a2.f19473d.clear();
                        } else {
                            throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
                        }
                    }
                    e eVar = f19465c;
                    if (!(eVar == null || com.facebook.internal.b.b.a.a(eVar) || eVar.f19490b.get() == null || eVar.f19491c == null)) {
                        try {
                            eVar.f19491c.cancel();
                            eVar.f19491c = null;
                        } catch (Exception e2) {
                            Log.e(e.f19489a, "Error unscheduling indexing job", e2);
                        }
                    }
                    SensorManager sensorManager = f19464b;
                    if (sensorManager != null) {
                        sensorManager.unregisterListener(f19463a);
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, b.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c() {
        if (com.facebook.internal.b.b.a.a(b.class)) {
            return null;
        }
        try {
            if (f19466d == null) {
                f19466d = UUID.randomUUID().toString();
            }
            return f19466d;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, b.class);
            return null;
        }
    }

    public static void c(Activity activity) {
        if (!com.facebook.internal.b.b.a.a(b.class)) {
            try {
                c a2 = c.a();
                if (!com.facebook.internal.b.b.a.a(a2)) {
                    a2.e.remove(Integer.valueOf(activity.hashCode()));
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, b.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        if (com.facebook.internal.b.b.a.a(b.class)) {
            return false;
        }
        try {
            return f.get();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, b.class);
            return false;
        }
    }

    static /* synthetic */ a e() {
        if (com.facebook.internal.b.b.a.a(b.class)) {
            return null;
        }
        try {
            return h;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, b.class);
            return null;
        }
    }

    static /* synthetic */ AtomicBoolean f() {
        if (com.facebook.internal.b.b.a.a(b.class)) {
            return null;
        }
        try {
            return f;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, b.class);
            return null;
        }
    }

    static /* synthetic */ String g() {
        if (com.facebook.internal.b.b.a.a(b.class)) {
            return null;
        }
        try {
            f19466d = null;
            return null;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, b.class);
            return null;
        }
    }

    static /* synthetic */ e h() {
        if (com.facebook.internal.b.b.a.a(b.class)) {
            return null;
        }
        try {
            return f19465c;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, b.class);
            return null;
        }
    }

    private static boolean i() {
        if (com.facebook.internal.b.b.a.a(b.class)) {
        }
        return false;
    }
}
