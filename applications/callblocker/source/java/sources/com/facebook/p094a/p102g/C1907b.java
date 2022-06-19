package com.facebook.p094a.p102g;

import android.content.SharedPreferences;
import android.view.View;
import com.facebook.C2095j;
import com.facebook.internal.C2079x;
import com.facebook.p094a.p096b.p097a.C1829f;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.facebook.a.g.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/g/b.class */
public final class C1907b {

    /* renamed from: b */
    private static SharedPreferences f5760b;

    /* renamed from: a */
    private static final Map<String, String> f5759a = new HashMap();

    /* renamed from: c */
    private static final AtomicBoolean f5761c = new AtomicBoolean(false);

    /* renamed from: a */
    public static String m15911a(View view) {
        JSONObject jSONObject = new JSONObject();
        while (view != null) {
            C1908c.m15906a(view, jSONObject);
            view = C1829f.m16178a(view);
        }
        return C2079x.m15442c(jSONObject.toString());
    }

    /* renamed from: a */
    public static String m15910a(String str) {
        return f5759a.containsKey(str) ? f5759a.get(str) : null;
    }

    /* renamed from: a */
    private static void m15912a() {
        if (f5761c.get()) {
            return;
        }
        f5760b = C2095j.m15360h().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
        f5759a.putAll(C2079x.m15434e(f5760b.getString("SUGGESTED_EVENTS_HISTORY", "")));
        f5761c.set(true);
    }

    /* renamed from: a */
    public static void m15909a(String str, String str2) {
        if (!f5761c.get()) {
            m15912a();
        }
        f5759a.put(str, str2);
        f5760b.edit().putString("SUGGESTED_EVENTS_HISTORY", C2079x.m15461a(f5759a)).apply();
    }
}
