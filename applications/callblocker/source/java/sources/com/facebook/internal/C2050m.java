package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.internal.C2048l;
import com.facebook.p094a.p096b.p097a.C1828e;
import com.facebook.p094a.p099d.C1866d;
import com.facebook.p094a.p099d.C1868e;
import com.facebook.p094a.p099d.C1870g;
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
/* renamed from: com.facebook.internal.m */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/m.class */
public final class C2050m {

    /* renamed from: a */
    private static final String f6056a = C2050m.class.getSimpleName();

    /* renamed from: b */
    private static final String[] f6057b = {"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting"};

    /* renamed from: c */
    private static final Map<String, C2048l> f6058c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final AtomicReference<EnumC2054a> f6059d = new AtomicReference<>(EnumC2054a.NOT_LOADED);

    /* renamed from: e */
    private static final ConcurrentLinkedQueue<AbstractC2055b> f6060e = new ConcurrentLinkedQueue<>();

    /* renamed from: f */
    private static boolean f6061f = false;

    /* renamed from: g */
    private static boolean f6062g = false;

    /* renamed from: h */
    private static JSONArray f6063h = null;

    /* renamed from: com.facebook.internal.m$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/m$a.class */
    public enum EnumC2054a {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR
    }

    /* renamed from: com.facebook.internal.m$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/m$b.class */
    public interface AbstractC2055b {
        /* renamed from: a */
        void m15572a();

        /* renamed from: a */
        void m15571a(C2048l c2048l);
    }

    /* renamed from: a */
    public static C2048l m15586a(String str) {
        return str != null ? f6058c.get(str) : null;
    }

    /* renamed from: a */
    public static C2048l m15584a(String str, boolean z) {
        C2048l c2048l;
        if (z || !f6058c.containsKey(str)) {
            JSONObject m15577c = m15577c(str);
            if (m15577c == null) {
                c2048l = null;
            } else {
                C2048l m15579b = m15579b(str, m15577c);
                c2048l = m15579b;
                if (str.equals(C2095j.m15356l())) {
                    f6059d.set(EnumC2054a.SUCCESS);
                    m15573g();
                    c2048l = m15579b;
                }
            }
        } else {
            c2048l = f6058c.get(str);
        }
        return c2048l;
    }

    /* renamed from: a */
    private static Map<String, Map<String, C2048l.C2049a>> m15583a(JSONObject jSONObject) {
        JSONArray optJSONArray;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                C2048l.C2049a m15589a = C2048l.C2049a.m15589a(optJSONArray.optJSONObject(i));
                if (m15589a != null) {
                    String m15591a = m15589a.m15591a();
                    Map map = (Map) hashMap.get(m15591a);
                    HashMap hashMap2 = map;
                    if (map == null) {
                        hashMap2 = new HashMap();
                        hashMap.put(m15591a, hashMap2);
                    }
                    hashMap2.put(m15589a.m15588b(), m15589a);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m15587a() {
        final Context m15360h = C2095j.m15360h();
        final String m15356l = C2095j.m15356l();
        if (C2079x.m15472a(m15356l)) {
            f6059d.set(EnumC2054a.ERROR);
            m15573g();
        } else if (f6058c.containsKey(m15356l)) {
            f6059d.set(EnumC2054a.SUCCESS);
            m15573g();
        } else {
            if (!(f6059d.compareAndSet(EnumC2054a.NOT_LOADED, EnumC2054a.LOADING) || f6059d.compareAndSet(EnumC2054a.ERROR, EnumC2054a.LOADING))) {
                m15573g();
                return;
            }
            final String format = String.format("com.facebook.internal.APP_SETTINGS.%s", m15356l);
            C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.internal.m.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject;
                    SharedPreferences sharedPreferences = m15360h.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
                    String string = sharedPreferences.getString(format, null);
                    C2048l c2048l = null;
                    if (!C2079x.m15472a(string)) {
                        try {
                            jSONObject = new JSONObject(string);
                        } catch (JSONException e) {
                            C2079x.m15470a("FacebookSDK", (Exception) e);
                            jSONObject = null;
                        }
                        c2048l = null;
                        if (jSONObject != null) {
                            c2048l = C2050m.m15579b(m15356l, jSONObject);
                        }
                    }
                    JSONObject m15577c = C2050m.m15577c(m15356l);
                    if (m15577c != null) {
                        C2050m.m15579b(m15356l, m15577c);
                        sharedPreferences.edit().putString(format, m15577c.toString()).apply();
                    }
                    if (c2048l != null) {
                        String m15595k = c2048l.m15595k();
                        if (!C2050m.f6061f && m15595k != null && m15595k.length() > 0) {
                            boolean unused = C2050m.f6061f = true;
                            Log.w(C2050m.f6056a, m15595k);
                        }
                    }
                    C2044k.m15613a(m15356l, true);
                    C1866d.m16058a();
                    C1870g.m16049a();
                    C2050m.f6059d.set(C2050m.f6058c.containsKey(m15356l) ? EnumC2054a.SUCCESS : EnumC2054a.ERROR);
                    C2050m.m15573g();
                }
            });
        }
    }

    /* renamed from: b */
    public static C2048l m15579b(String str, JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("android_sdk_error_categories");
        C2032g m15635a = optJSONArray == null ? C2032g.m15635a() : C2032g.m15632a(optJSONArray);
        int optInt = jSONObject.optInt("app_events_feature_bitmask", 0);
        boolean z = (optInt & 8) != 0;
        boolean z2 = (optInt & 16) != 0;
        boolean z3 = (optInt & 32) != 0;
        boolean z4 = (optInt & 256) != 0;
        JSONArray optJSONArray2 = jSONObject.optJSONArray("auto_event_mapping_android");
        f6063h = optJSONArray2;
        if (f6063h != null && C2060p.m15557b()) {
            C1828e.m16181a(optJSONArray2.toString());
        }
        C2048l c2048l = new C2048l(jSONObject.optBoolean("supports_implicit_sdk_logging", false), jSONObject.optString("gdpv4_nux_content", ""), jSONObject.optBoolean("gdpv4_nux_enabled", false), jSONObject.optInt("app_events_session_timeout", C1868e.m16052a()), EnumC2078w.m15493a(jSONObject.optLong("seamless_login")), m15583a(jSONObject.optJSONObject("android_dialog_configs")), z, m15635a, jSONObject.optString("smart_login_bookmark_icon_url"), jSONObject.optString("smart_login_menu_icon_url"), z2, z3, optJSONArray2, jSONObject.optString("sdk_update_message"), z4, jSONObject.optString("aam_rules"), jSONObject.optString("suggested_events_setting"), jSONObject.optString("restrictive_data_filter_params"));
        f6058c.put(str, c2048l);
        return c2048l;
    }

    /* renamed from: c */
    public static JSONObject m15577c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", new ArrayList(Arrays.asList(f6057b))));
        C2102k m15338a = C2102k.m15338a((C1803a) null, str, (C2102k.AbstractC2108b) null);
        m15338a.m15316a(true);
        m15338a.m15341a(bundle);
        return m15338a.m15293i().m14980b();
    }

    /* renamed from: g */
    public static void m15573g() {
        synchronized (C2050m.class) {
            try {
                EnumC2054a enumC2054a = f6059d.get();
                if (!EnumC2054a.NOT_LOADED.equals(enumC2054a) && !EnumC2054a.LOADING.equals(enumC2054a)) {
                    final C2048l c2048l = f6058c.get(C2095j.m15356l());
                    Handler handler = new Handler(Looper.getMainLooper());
                    if (EnumC2054a.ERROR.equals(enumC2054a)) {
                        while (!f6060e.isEmpty()) {
                            final AbstractC2055b poll = f6060e.poll();
                            handler.post(new Runnable() { // from class: com.facebook.internal.m.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    poll.m15572a();
                                }
                            });
                        }
                    } else {
                        while (!f6060e.isEmpty()) {
                            final AbstractC2055b poll2 = f6060e.poll();
                            handler.post(new Runnable() { // from class: com.facebook.internal.m.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    poll2.m15571a(c2048l);
                                }
                            });
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
