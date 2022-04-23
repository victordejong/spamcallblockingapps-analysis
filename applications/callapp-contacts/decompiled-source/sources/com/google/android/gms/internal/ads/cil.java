package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cil.class */
final class cil implements chb<cgy<JSONObject>> {

    /* renamed from: a  reason: collision with root package name */
    final JSONObject f25895a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cil(Context context) {
        this.f25895a = tg.a(context);
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgy<JSONObject>> a() {
        return dbh.a(new cgy(this) { // from class: com.google.android.gms.internal.ads.cio

            /* renamed from: a  reason: collision with root package name */
            private final cil f25900a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25900a = this;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            public final void a(Object obj) {
                try {
                    ((JSONObject) obj).put("gms_sdk_env", this.f25900a.f25895a);
                } catch (JSONException e) {
                    zzd.zzed("Failed putting version constants.");
                }
            }
        });
    }
}
