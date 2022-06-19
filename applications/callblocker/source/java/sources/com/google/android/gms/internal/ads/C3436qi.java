package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.qi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qi.class */
public final class C3436qi extends AbstractC3438qk {

    /* renamed from: a */
    private final Object f17286a = new Object();

    /* renamed from: b */
    private final Context f17287b;

    /* renamed from: c */
    private SharedPreferences f17288c;

    /* renamed from: d */
    private final AbstractC3244jf<JSONObject, JSONObject> f17289d;

    public C3436qi(Context context, AbstractC3244jf<JSONObject, JSONObject> abstractC3244jf) {
        this.f17287b = context.getApplicationContext();
        this.f17289d = abstractC3244jf;
    }

    /* renamed from: a */
    public static JSONObject m7308a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", C3647yd.m6741a().f17636a);
            jSONObject.put("mf", C2787an.f10031a.mo13599a());
            jSONObject.put("cl", "305933803");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 20360);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.m13784b(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451009);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3438qk
    /* renamed from: a */
    public final crt<Void> mo7306a() {
        crt<Void> m10783a;
        synchronized (this.f17286a) {
            if (this.f17288c == null) {
                this.f17288c = this.f17287b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (C2341q.m14737j().mo13862a() - this.f17288c.getLong("js_last_update", 0L) < C2787an.f10032b.mo13599a().longValue()) {
            m10783a = crg.m10778a((Object) null);
        } else {
            m10783a = crg.m10783a(this.f17289d.mo7721b(m7308a(this.f17287b)), new coe(this) { // from class: com.google.android.gms.internal.ads.ql

                /* renamed from: a */
                private final C3436qi f17292a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17292a = this;
                }

                @Override // com.google.android.gms.internal.ads.coe
                /* renamed from: a */
                public final Object mo7184a(Object obj) {
                    return this.f17292a.m7307a((JSONObject) obj);
                }
            }, C3650yg.f17647f);
        }
        return m10783a;
    }

    /* renamed from: a */
    public final /* synthetic */ Void m7307a(JSONObject jSONObject) {
        edi.m7865a(this.f17287b, 1, jSONObject);
        this.f17288c.edit().putLong("js_last_update", C2341q.m14737j().mo13862a()).apply();
        return null;
    }
}
