package com.facebook.appevents.p289j;

import android.content.SharedPreferences;
import android.view.View;
import com.facebook.C10181g;
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.facebook.appevents.j.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/b.class */
public final class C10086b {

    /* renamed from: b */
    private static SharedPreferences f33418b;

    /* renamed from: a */
    private static final Map<String, String> f33417a = new HashMap();

    /* renamed from: c */
    private static final AtomicBoolean f33419c = new AtomicBoolean(false);

    C10086b() {
    }

    /* renamed from: a */
    public static String m23439a(View view, String str) {
        if (C10249a.m23108a(C10086b.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("text", str);
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    jSONArray.put(view.getClass().getSimpleName());
                    view = C9981f.m23705a(view);
                }
                jSONObject.put("classname", jSONArray);
            } catch (JSONException e) {
            }
            return C10213ae.m23200c(jSONObject.toString());
        } catch (Throwable th) {
            C10249a.m23106a(th, C10086b.class);
            return null;
        }
    }

    /* renamed from: a */
    public static String m23438a(String str) {
        if (C10249a.m23108a(C10086b.class)) {
            return null;
        }
        try {
            Map<String, String> map = f33417a;
            if (!map.containsKey(str)) {
                return null;
            }
            return map.get(str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10086b.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23437a(String str, String str2) {
        if (C10249a.m23108a(C10086b.class)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = f33419c;
            if (!atomicBoolean.get() && !C10249a.m23108a(C10086b.class) && !atomicBoolean.get()) {
                SharedPreferences sharedPreferences = C10181g.m23290i().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
                f33418b = sharedPreferences;
                f33417a.putAll(C10213ae.m23189f(sharedPreferences.getString("SUGGESTED_EVENTS_HISTORY", "")));
                atomicBoolean.set(true);
            }
            Map<String, String> map = f33417a;
            map.put(str, str2);
            f33418b.edit().putString("SUGGESTED_EVENTS_HISTORY", C10213ae.m23221a(map)).apply();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10086b.class);
        }
    }
}
