package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cil.class */
public final class cil implements chb<cgy<JSONObject>> {

    /* renamed from: a */
    final JSONObject f45860a;

    public cil(Context context) {
        this.f45860a = C12930tg.m14177a(context);
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgy<JSONObject>> mo17449a() {
        return dbh.m16899a(new cgy(this) { // from class: com.google.android.gms.internal.ads.cio

            /* renamed from: a */
            private final cil f45865a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45865a = this;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            /* renamed from: a */
            public final void mo17450a(Object obj) {
                try {
                    ((JSONObject) obj).put("gms_sdk_env", this.f45865a.f45860a);
                } catch (JSONException e) {
                    zzd.zzed("Failed putting version constants.");
                }
            }
        });
    }
}
