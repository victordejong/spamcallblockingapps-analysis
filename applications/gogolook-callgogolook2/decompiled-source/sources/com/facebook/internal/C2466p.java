package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.p036r.p037g.C2325e;
import com.facebook.appevents.p038s.C2338d;
import com.facebook.appevents.p038s.C2340e;
import com.facebook.appevents.p038s.C2341f;
import com.facebook.appevents.p040u.C2360a;
import com.facebook.internal.C2464o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.p */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/p.class */
public final class C2466p {

    /* renamed from: a */
    public static final String f3136a = "p";

    /* renamed from: b */
    public static final String[] f3137b = {"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting"};

    /* renamed from: c */
    public static final Map<String, C2464o> f3138c = new ConcurrentHashMap();

    /* renamed from: d */
    public static final AtomicReference<EnumC2471e> f3139d = new AtomicReference<>(EnumC2471e.NOT_LOADED);

    /* renamed from: e */
    public static final ConcurrentLinkedQueue<AbstractC2472f> f3140e = new ConcurrentLinkedQueue<>();

    /* renamed from: f */
    public static boolean f3141f = false;
    @Nullable

    /* renamed from: g */
    public static JSONArray f3142g = null;

    /* renamed from: com.facebook.internal.p$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/p$a.class */
    public static final class RunnableC2467a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f3143a;

        /* renamed from: b */
        public final /* synthetic */ String f3144b;

        /* renamed from: c */
        public final /* synthetic */ String f3145c;

        public RunnableC2467a(Context context, String str, String str2) {
            this.f3143a = context;
            this.f3144b = str;
            this.f3145c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject jSONObject;
            SharedPreferences sharedPreferences = this.f3143a.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
            String string = sharedPreferences.getString(this.f3144b, null);
            C2464o oVar = null;
            if (!C2408g0.m34816d(string)) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    C2408g0.m34853a("FacebookSDK", (Exception) e);
                    jSONObject = null;
                }
                oVar = null;
                if (jSONObject != null) {
                    oVar = C2466p.m34638b(this.f3145c, jSONObject);
                }
            }
            JSONObject b = C2466p.m34639b(this.f3145c);
            if (b != null) {
                C2466p.m34638b(this.f3145c, b);
                sharedPreferences.edit().putString(this.f3144b, b.toString()).apply();
            }
            if (oVar != null) {
                String j = oVar.m34657j();
                if (!C2466p.f3141f && j != null && j.length() > 0) {
                    boolean unused = C2466p.f3141f = true;
                    String unused2 = C2466p.f3136a;
                }
            }
            C2460n.m34674a(this.f3145c, true);
            C2338d.m35117b();
            C2341f.m35108e();
            C2466p.f3139d.set(C2466p.f3138c.containsKey(this.f3145c) ? EnumC2471e.SUCCESS : EnumC2471e.ERROR);
            C2466p.m34632g();
        }
    }

    /* renamed from: com.facebook.internal.p$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/p$b.class */
    public static final class RunnableC2468b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2472f f3146a;

        public RunnableC2468b(AbstractC2472f fVar) {
            this.f3146a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3146a.m34631a();
        }
    }

    /* renamed from: com.facebook.internal.p$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/p$c.class */
    public static final class RunnableC2469c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2472f f3147a;

        /* renamed from: b */
        public final /* synthetic */ C2464o f3148b;

        public RunnableC2469c(AbstractC2472f fVar, C2464o oVar) {
            this.f3147a = fVar;
            this.f3148b = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3147a.m34630a(this.f3148b);
        }
    }

    /* renamed from: com.facebook.internal.p$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/p$d.class */
    public static final class RunnableC2470d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ JSONObject f3149a;

        public RunnableC2470d(JSONObject jSONObject) {
            this.f3149a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2360a.m35028b(this.f3149a.optString("restrictive_data_filter_params"));
        }
    }

    /* renamed from: com.facebook.internal.p$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/p$e.class */
    public enum EnumC2471e {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR
    }

    /* renamed from: com.facebook.internal.p$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/p$f.class */
    public interface AbstractC2472f {
        /* renamed from: a */
        void m34631a();

        /* renamed from: a */
        void m34630a(C2464o oVar);
    }

    @Nullable
    /* renamed from: a */
    public static C2464o m34643a(String str, boolean z) {
        if (!z && f3138c.containsKey(str)) {
            return f3138c.get(str);
        }
        JSONObject b = m34639b(str);
        if (b == null) {
            return null;
        }
        C2464o b2 = m34638b(str, b);
        if (str.equals(C6135n.m23745f())) {
            f3139d.set(EnumC2471e.SUCCESS);
            m34632g();
        }
        return b2;
    }

    /* renamed from: a */
    public static Map<String, Map<String, C2464o.C2465a>> m34642a(JSONObject jSONObject) {
        JSONArray optJSONArray;
        HashMap hashMap = new HashMap();
        if (!(jSONObject == null || (optJSONArray = jSONObject.optJSONArray("data")) == null)) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                C2464o.C2465a a = C2464o.C2465a.m34650a(optJSONArray.optJSONObject(i));
                if (a != null) {
                    String a2 = a.m34652a();
                    Map map = (Map) hashMap.get(a2);
                    Map map2 = map;
                    if (map == null) {
                        map2 = new HashMap();
                        hashMap.put(a2, map2);
                    }
                    map2.put(a.m34648c(), a);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    public static C2464o m34638b(String str, JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("android_sdk_error_categories");
        C2430j a = optJSONArray == null ? C2430j.m34741a() : C2430j.m34738a(optJSONArray);
        int optInt = jSONObject.optInt("app_events_feature_bitmask", 0);
        boolean z = (optInt & 8) != 0;
        boolean z2 = (optInt & 16) != 0;
        boolean z3 = (optInt & 32) != 0;
        boolean z4 = (optInt & 256) != 0;
        JSONArray optJSONArray2 = jSONObject.optJSONArray("auto_event_mapping_android");
        f3142g = optJSONArray2;
        if (f3142g != null && C2500w.m34565b()) {
            C2325e.m35172a(optJSONArray2.toString());
        }
        C2464o oVar = new C2464o(jSONObject.optBoolean("supports_implicit_sdk_logging", false), jSONObject.optString("gdpv4_nux_content", ""), jSONObject.optBoolean("gdpv4_nux_enabled", false), jSONObject.optInt("app_events_session_timeout", C2340e.m35116a()), EnumC2403e0.m34892a(jSONObject.optLong("seamless_login")), m34642a(jSONObject.optJSONObject("android_dialog_configs")), z, a, jSONObject.optString("smart_login_bookmark_icon_url"), jSONObject.optString("smart_login_menu_icon_url"), z2, z3, optJSONArray2, jSONObject.optString("sdk_update_message"), z4, jSONObject.optString("aam_rules"), jSONObject.optString("suggested_events_setting"));
        f3138c.put(str, oVar);
        C6135n.m23737n().execute(new RunnableC2470d(jSONObject));
        return oVar;
    }

    /* renamed from: b */
    public static JSONObject m34639b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", new ArrayList(Arrays.asList(f3137b))));
        GraphRequest a = GraphRequest.m35461a((AccessToken) null, str, (GraphRequest.AbstractC2230f) null);
        a.m35439a(true);
        a.m35464a(bundle);
        return a.m35437b().m23698b();
    }

    @Nullable
    /* renamed from: c */
    public static C2464o m34636c(String str) {
        return str != null ? f3138c.get(str) : null;
    }

    /* renamed from: f */
    public static void m34633f() {
        Context e = C6135n.m23746e();
        String f = C6135n.m23745f();
        if (C2408g0.m34816d(f)) {
            f3139d.set(EnumC2471e.ERROR);
            m34632g();
        } else if (f3138c.containsKey(f)) {
            f3139d.set(EnumC2471e.SUCCESS);
            m34632g();
        } else {
            if (!(f3139d.compareAndSet(EnumC2471e.NOT_LOADED, EnumC2471e.LOADING) || f3139d.compareAndSet(EnumC2471e.ERROR, EnumC2471e.LOADING))) {
                m34632g();
            } else {
                C6135n.m23737n().execute(new RunnableC2467a(e, String.format("com.facebook.internal.APP_SETTINGS.%s", f), f));
            }
        }
    }

    /* renamed from: g */
    public static void m34632g() {
        synchronized (C2466p.class) {
            try {
                EnumC2471e eVar = f3139d.get();
                if (!EnumC2471e.NOT_LOADED.equals(eVar) && !EnumC2471e.LOADING.equals(eVar)) {
                    C2464o oVar = f3138c.get(C6135n.m23745f());
                    Handler handler = new Handler(Looper.getMainLooper());
                    if (EnumC2471e.ERROR.equals(eVar)) {
                        while (!f3140e.isEmpty()) {
                            handler.post(new RunnableC2468b(f3140e.poll()));
                        }
                        return;
                    }
                    while (!f3140e.isEmpty()) {
                        handler.post(new RunnableC2469c(f3140e.poll(), oVar));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
