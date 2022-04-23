package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.Person;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
import p459j.p460a.p541n0.C13032a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.n */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/n.class */
public final class C2460n {

    /* renamed from: a */
    public static final AtomicBoolean f3110a = new AtomicBoolean(false);

    /* renamed from: b */
    public static final ConcurrentLinkedQueue<AbstractC2463c> f3111b = new ConcurrentLinkedQueue<>();

    /* renamed from: c */
    public static final Map<String, JSONObject> f3112c = new ConcurrentHashMap();
    @Nullable

    /* renamed from: d */
    public static Long f3113d;

    /* renamed from: com.facebook.internal.n$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/n$a.class */
    public static final class RunnableC2461a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f3114a;

        /* renamed from: b */
        public final /* synthetic */ Context f3115b;

        /* renamed from: c */
        public final /* synthetic */ String f3116c;

        public RunnableC2461a(String str, Context context, String str2) {
            this.f3114a = str;
            this.f3115b = context;
            this.f3116c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject b = C2460n.m34671b(this.f3114a);
            if (b != null) {
                C2460n.m34670b(this.f3114a, b);
                this.f3115b.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(this.f3116c, b.toString()).apply();
                Long unused = C2460n.f3113d = Long.valueOf(System.currentTimeMillis());
            }
            C2460n.m34668d();
            C2460n.f3110a.set(false);
        }
    }

    /* renamed from: com.facebook.internal.n$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/n$b.class */
    public static final class RunnableC2462b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2463c f3117a;

        public RunnableC2462b(AbstractC2463c cVar) {
            this.f3117a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3117a.onCompleted();
        }
    }

    /* renamed from: com.facebook.internal.n$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/n$c.class */
    public interface AbstractC2463c {
        void onCompleted();
    }

    @Nullable
    /* renamed from: a */
    public static JSONObject m34674a(String str, boolean z) {
        if (!z && f3112c.containsKey(str)) {
            return f3112c.get(str);
        }
        JSONObject b = m34671b(str);
        if (b == null) {
            return null;
        }
        C6135n.m23746e().getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(String.format("com.facebook.internal.APP_GATEKEEPERS.%s", str), b.toString()).apply();
        return m34670b(str, b);
    }

    /* renamed from: a */
    public static void m34679a(@Nullable AbstractC2463c cVar) {
        synchronized (C2460n.class) {
            if (cVar != null) {
                try {
                    f3111b.add(cVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (m34672b(f3113d)) {
                m34668d();
                return;
            }
            Context e = C6135n.m23746e();
            String f = C6135n.m23745f();
            String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", f);
            if (e != null) {
                JSONObject jSONObject = null;
                String string = e.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(format, null);
                if (!C2408g0.m34816d(string)) {
                    try {
                        jSONObject = new JSONObject(string);
                    } catch (JSONException e2) {
                        C2408g0.m34853a("FacebookSDK", (Exception) e2);
                    }
                    if (jSONObject != null) {
                        m34670b(f, jSONObject);
                    }
                }
                Executor n = C6135n.m23737n();
                if (n != null) {
                    if (f3110a.compareAndSet(false, true)) {
                        n.execute(new RunnableC2461a(f, e, format));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m34676a(String str, String str2, boolean z) {
        m34669c();
        return (str2 == null || !f3112c.containsKey(str2)) ? z : f3112c.get(str2).optBoolean(str, z);
    }

    @Nullable
    /* renamed from: b */
    public static JSONObject m34671b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", IJSExecutor.JS_FUNCTION_GROUP);
        bundle.putString("sdk_version", C6135n.m23733r());
        bundle.putString("fields", "gatekeepers");
        GraphRequest a = GraphRequest.m35461a((AccessToken) null, String.format("%s/%s", str, "mobile_sdk_gk"), (GraphRequest.AbstractC2230f) null);
        a.m35439a(true);
        a.m35464a(bundle);
        return a.m35437b().m23698b();
    }

    /* renamed from: b */
    public static JSONObject m34670b(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (C2460n.class) {
            try {
                jSONObject2 = f3112c.containsKey(str) ? f3112c.get(str) : new JSONObject();
                JSONArray optJSONArray = jSONObject.optJSONArray("data");
                JSONObject jSONObject3 = null;
                if (optJSONArray != null) {
                    jSONObject3 = optJSONArray.optJSONObject(0);
                }
                if (!(jSONObject3 == null || jSONObject3.optJSONArray("gatekeepers") == null)) {
                    JSONArray optJSONArray2 = jSONObject3.optJSONArray("gatekeepers");
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        try {
                            JSONObject jSONObject4 = optJSONArray2.getJSONObject(i);
                            jSONObject2.put(jSONObject4.getString(Person.KEY_KEY), jSONObject4.getBoolean(C13032a.f29462d));
                        } catch (JSONException e) {
                            C2408g0.m34853a("FacebookSDK", (Exception) e);
                        }
                    }
                }
                f3112c.put(str, jSONObject2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONObject2;
    }

    /* renamed from: b */
    public static boolean m34672b(@Nullable Long l) {
        boolean z = false;
        if (l == null) {
            return false;
        }
        if (System.currentTimeMillis() - l.longValue() < 3600000) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static void m34669c() {
        m34679a((AbstractC2463c) null);
    }

    /* renamed from: d */
    public static void m34668d() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (!f3111b.isEmpty()) {
            AbstractC2463c poll = f3111b.poll();
            if (poll != null) {
                handler.post(new RunnableC2462b(poll));
            }
        }
    }
}
