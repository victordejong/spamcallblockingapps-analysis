package com.facebook.appevents.j;

import android.content.SharedPreferences;
import android.view.View;
import com.facebook.appevents.b.a.f;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.b.b.a;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/b.class */
final class b {

    /* renamed from: b  reason: collision with root package name */
    private static SharedPreferences f19634b;

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, String> f19633a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f19635c = new AtomicBoolean(false);

    b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(View view, String str) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("text", str);
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    jSONArray.put(view.getClass().getSimpleName());
                    view = f.a(view);
                }
                jSONObject.put("classname", jSONArray);
            } catch (JSONException e) {
            }
            return ae.c(jSONObject.toString());
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            Map<String, String> map = f19633a;
            if (map.containsKey(str)) {
                return map.get(str);
            }
            return null;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2) {
        if (!a.a(b.class)) {
            try {
                AtomicBoolean atomicBoolean = f19635c;
                if (!atomicBoolean.get() && !a.a(b.class) && !atomicBoolean.get()) {
                    SharedPreferences sharedPreferences = g.i().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
                    f19634b = sharedPreferences;
                    f19633a.putAll(ae.f(sharedPreferences.getString("SUGGESTED_EVENTS_HISTORY", "")));
                    atomicBoolean.set(true);
                }
                Map<String, String> map = f19633a;
                map.put(str, str2);
                f19634b.edit().putString("SUGGESTED_EVENTS_HISTORY", ae.a(map)).apply();
            } catch (Throwable th) {
                a.a(th, b.class);
            }
        }
    }
}
