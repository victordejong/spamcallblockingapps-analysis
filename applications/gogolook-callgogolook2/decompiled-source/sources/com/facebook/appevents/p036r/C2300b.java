package com.facebook.appevents.p036r;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.p036r.C2316f;
import com.facebook.appevents.p038s.C2334b;
import com.facebook.internal.C2381b;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.r.b */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/b.class */
public final class C2300b {
    @Nullable

    /* renamed from: b */
    public static SensorManager f2747b;
    @Nullable

    /* renamed from: c */
    public static C2310e f2748c;
    @Nullable

    /* renamed from: d */
    public static String f2749d;

    /* renamed from: a */
    public static final C2316f f2746a = new C2316f();

    /* renamed from: e */
    public static final AtomicBoolean f2750e = new AtomicBoolean(true);

    /* renamed from: f */
    public static Boolean f2751f = false;

    /* renamed from: g */
    public static volatile Boolean f2752g = false;

    /* renamed from: com.facebook.appevents.r.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/b$a.class */
    public static final class C2301a implements C2316f.AbstractC2317a {

        /* renamed from: a */
        public final /* synthetic */ C2464o f2753a;

        /* renamed from: b */
        public final /* synthetic */ String f2754b;

        public C2301a(C2464o oVar, String str) {
            this.f2753a = oVar;
            this.f2754b = str;
        }

        @Override // com.facebook.appevents.p036r.C2316f.AbstractC2317a
        /* renamed from: a */
        public void mo35188a() {
            C2464o oVar = this.f2753a;
            boolean z = true;
            boolean z2 = oVar != null && oVar.m34665b();
            if (!C6135n.m23738m()) {
                z = false;
            }
            if (z2 && z) {
                C2300b.m35228c(this.f2754b);
            }
        }
    }

    /* renamed from: com.facebook.appevents.r.b$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/b$b.class */
    public static final class RunnableC2302b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f2755a;

        public RunnableC2302b(String str) {
            this.f2755a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z = true;
            GraphRequest a = GraphRequest.m35460a((AccessToken) null, String.format(Locale.US, "%s/app_indexing_session", this.f2755a), (JSONObject) null, (GraphRequest.AbstractC2230f) null);
            Bundle j = a.m35414j();
            Bundle bundle = j;
            if (j == null) {
                bundle = new Bundle();
            }
            C2381b d = C2381b.m34923d(C6135n.m23746e());
            JSONArray jSONArray = new JSONArray();
            String str = Build.MODEL;
            if (str == null) {
                str = "";
            }
            jSONArray.put(str);
            if (d == null || d.m34931a() == null) {
                jSONArray.put("");
            } else {
                jSONArray.put(d.m34931a());
            }
            String str2 = "0";
            jSONArray.put("0");
            if (C2334b.m35124d()) {
                str2 = "1";
            }
            jSONArray.put(str2);
            Locale c = C2408g0.m34825c();
            jSONArray.put(c.getLanguage() + "_" + c.getCountry());
            String jSONArray2 = jSONArray.toString();
            bundle.putString("device_session_id", C2300b.m35226e());
            bundle.putString("extinfo", jSONArray2);
            a.m35464a(bundle);
            JSONObject b = a.m35437b().m23698b();
            if (b == null || !b.optBoolean("is_app_indexing_enabled", false)) {
                z = false;
            }
            Boolean unused = C2300b.f2751f = Boolean.valueOf(z);
            if (!C2300b.f2751f.booleanValue()) {
                String unused2 = C2300b.f2749d = null;
            } else if (C2300b.f2748c != null) {
                C2300b.f2748c.m35201a();
            }
            Boolean unused3 = C2300b.f2752g = false;
        }
    }

    /* renamed from: a */
    public static void m35238a(Activity activity) {
        C2303c.m35216d().m35219b(activity);
    }

    /* renamed from: b */
    public static void m35234b(Activity activity) {
        if (f2750e.get()) {
            C2303c.m35216d().m35217c(activity);
            C2310e eVar = f2748c;
            if (eVar != null) {
                eVar.m35195b();
            }
            SensorManager sensorManager = f2747b;
            if (sensorManager != null) {
                sensorManager.unregisterListener(f2746a);
            }
        }
    }

    /* renamed from: c */
    public static void m35231c() {
        f2750e.set(false);
    }

    /* renamed from: c */
    public static void m35230c(Activity activity) {
        if (f2750e.get()) {
            C2303c.m35216d().m35223a(activity);
            Context applicationContext = activity.getApplicationContext();
            String f = C6135n.m23745f();
            C2464o c = C2466p.m34636c(f);
            if (c != null && c.m34665b()) {
                f2747b = (SensorManager) applicationContext.getSystemService("sensor");
                SensorManager sensorManager = f2747b;
                if (sensorManager != null) {
                    Sensor defaultSensor = sensorManager.getDefaultSensor(1);
                    f2748c = new C2310e(activity);
                    f2746a.m35189a(new C2301a(c, f));
                    f2747b.registerListener(f2746a, defaultSensor, 2);
                    if (c != null && c.m34665b()) {
                        f2748c.m35201a();
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public static void m35229c(Boolean bool) {
        f2751f = bool;
    }

    /* renamed from: c */
    public static void m35228c(String str) {
        if (!f2752g.booleanValue()) {
            f2752g = true;
            C6135n.m23737n().execute(new RunnableC2302b(str));
        }
    }

    /* renamed from: d */
    public static void m35227d() {
        f2750e.set(true);
    }

    /* renamed from: e */
    public static String m35226e() {
        if (f2749d == null) {
            f2749d = UUID.randomUUID().toString();
        }
        return f2749d;
    }

    /* renamed from: f */
    public static boolean m35225f() {
        return f2751f.booleanValue();
    }
}
