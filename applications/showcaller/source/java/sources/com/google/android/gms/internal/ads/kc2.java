package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.C5722o1;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kc2.class */
public final class kc2 implements wa2<va2<JSONObject>> {

    /* renamed from: a */
    private final JSONObject f25100a;

    public kc2(Context context) {
        this.f25100a = hd0.m14711b(context);
    }

    /* renamed from: a */
    public final /* synthetic */ void m13920a(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.f25100a);
        } catch (JSONException e) {
            C5722o1.m17990k("Failed putting version constants.");
        }
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<va2<JSONObject>> zza() {
        return k03.m14003a(new va2(this) { // from class: com.google.android.gms.internal.ads.jc2

            /* renamed from: a */
            private final kc2 f24841a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24841a = this;
            }

            @Override // com.google.android.gms.internal.ads.va2
            /* renamed from: a */
            public final void mo8928a(Object obj) {
                this.f24841a.m13920a((JSONObject) obj);
            }
        });
    }
}
