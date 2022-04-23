package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.internal.ads.zzato;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzdgu;
import com.google.android.gms.internal.ads.zzdgx;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.cv */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cv.class */
public final class C3448cv implements zzdgx<zzdgu<JSONObject>> {

    /* renamed from: a */
    public final JSONObject f12584a;

    public C3448cv(Context context) {
        this.f12584a = zzato.m16357a(context);
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<JSONObject>> mo13576a() {
        return zzdyq.m12988a(new zzdgu(this) { // from class: c.d.b.d.g.a.dv

            /* renamed from: a */
            public final C3448cv f12777a;

            {
                this.f12777a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Object obj) {
                this.f12777a.m27092a((JSONObject) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m27092a(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.f12584a);
        } catch (JSONException e) {
            zzayp.m16153g("Failed putting version constants.");
        }
    }
}
