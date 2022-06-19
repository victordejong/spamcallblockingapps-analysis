package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.tg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tg.class */
public final class C12930tg extends AbstractC12932ti {

    /* renamed from: a */
    final Context f49872a;

    /* renamed from: b */
    SharedPreferences f49873b;

    /* renamed from: c */
    private final Object f49874c = new Object();

    /* renamed from: d */
    private final AbstractC12713lg<JSONObject, JSONObject> f49875d;

    public C12930tg(Context context, AbstractC12713lg<JSONObject, JSONObject> abstractC12713lg) {
        this.f49872a = context.getApplicationContext();
        this.f49875d = abstractC12713lg;
    }

    /* renamed from: a */
    public static JSONObject m14177a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzbar.zzaau().zzbrz);
            jSONObject.put("mf", C12281cp.f46297a.mo17481a());
            jSONObject.put("cl", "360757573");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.m18968b(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12932ti
    /* renamed from: a */
    public final dbt<Void> mo14176a() {
        synchronized (this.f49874c) {
            if (this.f49873b == null) {
                this.f49873b = this.f49872a.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzr.zzlc().mo19039a() - this.f49873b.getLong("js_last_update", 0L) < C12281cp.f46298b.mo17481a().longValue()) {
            return dbh.m16899a((Object) null);
        }
        return daj.m16942a(this.f49875d.mo14522a(m14177a(this.f49872a)), new cxu(this) { // from class: com.google.android.gms.internal.ads.tf

            /* renamed from: a */
            private final C12930tg f49871a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49871a = this;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            /* renamed from: a */
            public final Object mo14064a(Object obj) {
                C12930tg c12930tg = this.f49871a;
                C12187aq.m18473a(c12930tg.f49872a, (JSONObject) obj);
                c12930tg.f49873b.edit().putLong("js_last_update", zzr.zzlc().mo19039a()).apply();
                return null;
            }
        }, C13091zd.f50123f);
    }
}
