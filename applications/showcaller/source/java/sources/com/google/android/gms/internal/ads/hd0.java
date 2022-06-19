package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.zhy.http.okhttp.OkHttpUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hd0.class */
public final class hd0 extends id0 {

    /* renamed from: a */
    private final Object f23855a = new Object();

    /* renamed from: b */
    private final Context f23856b;

    /* renamed from: c */
    private SharedPreferences f23857c;

    /* renamed from: d */
    private final g60<JSONObject, JSONObject> f23858d;

    public hd0(Context context, g60<JSONObject, JSONObject> g60Var) {
        this.f23856b = context.getApplicationContext();
        this.f23858d = g60Var;
    }

    /* renamed from: b */
    public static JSONObject m14711b(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzcgz.m8066k0().f33854d);
            jSONObject.put("mf", C7198yx.f32690a.m12799e());
            jSONObject.put("cl", "407425155");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", OkHttpUtils.METHOD.HEAD);
            jSONObject.put("admob_module_version", C6094e.f19409a);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.m16741c(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", C6094e.f19409a);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.id0
    /* renamed from: a */
    public final r03<Void> mo14449a() {
        synchronized (this.f23855a) {
            if (this.f23857c == null) {
                this.f23857c = this.f23856b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (C5667s.m18153k().mo16807a() - this.f23857c.getLong("js_last_update", 0L) < C7198yx.f32691b.m12799e().longValue()) {
            return k03.m14003a(null);
        }
        return k03.m13994j(this.f23858d.mo10088b(m14711b(this.f23856b)), new nu2(this) { // from class: com.google.android.gms.internal.ads.gd0

            /* renamed from: a */
            private final hd0 f23311a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23311a = this;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                this.f23311a.m14710c((JSONObject) obj);
                return null;
            }
        }, qi0.f28500f);
    }

    /* renamed from: c */
    public final /* synthetic */ Void m14710c(JSONObject jSONObject) {
        C6679kw.m13769b(this.f23856b, 1, jSONObject);
        this.f23857c.edit().putLong("js_last_update", C5667s.m18153k().mo16807a()).apply();
        return null;
    }
}
