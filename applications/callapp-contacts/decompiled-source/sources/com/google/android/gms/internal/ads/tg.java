package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tg.class */
public final class tg extends ti {

    /* renamed from: a  reason: collision with root package name */
    final Context f28400a;

    /* renamed from: b  reason: collision with root package name */
    SharedPreferences f28401b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f28402c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final lg<JSONObject, JSONObject> f28403d;

    public tg(Context context, lg<JSONObject, JSONObject> lgVar) {
        this.f28400a = context.getApplicationContext();
        this.f28403d = lgVar;
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzbar.zzaau().zzbrz);
            jSONObject.put("mf", cp.f26200a.a());
            jSONObject.put("cl", "360757573");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.b(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.ti
    public final dbt<Void> a() {
        synchronized (this.f28402c) {
            if (this.f28401b == null) {
                this.f28401b = this.f28400a.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzr.zzlc().a() - this.f28401b.getLong("js_last_update", 0L) < cp.f26201b.a().longValue()) {
            return dbh.a((Object) null);
        }
        return daj.a(this.f28403d.a(a(this.f28400a)), new cxu(this) { // from class: com.google.android.gms.internal.ads.tf

            /* renamed from: a  reason: collision with root package name */
            private final tg f28399a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28399a = this;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                tg tgVar = this.f28399a;
                aq.a(tgVar.f28400a, (JSONObject) obj);
                tgVar.f28401b.edit().putLong("js_last_update", zzr.zzlc().a()).apply();
                return null;
            }
        }, zd.f);
    }
}
