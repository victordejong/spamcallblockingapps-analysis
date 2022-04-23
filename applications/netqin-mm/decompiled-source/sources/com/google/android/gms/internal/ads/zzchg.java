package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzchh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C4142vi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchg.class */
public final class zzchg {

    /* renamed from: a */
    public final Executor f26022a;

    /* renamed from: b */
    public final zzcgw f26023b;

    public zzchg(Executor executor, zzcgw zzcgwVar) {
        this.f26022a = executor;
        this.f26023b = zzcgwVar;
    }

    /* renamed from: a */
    public final zzdzc<List<zzchh>> m14273a(JSONObject jSONObject, String str) {
        zzdzc zzdzcVar;
        final String optString;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return zzdyq.m12988a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (!(optJSONObject == null || (optString = optJSONObject.optString("name")) == null)) {
                String optString2 = optJSONObject.optString("type");
                char c = "string".equals(optString2) ? (char) 1 : "image".equals(optString2) ? (char) 2 : (char) 0;
                if (c == 1) {
                    zzdzcVar = zzdyq.m12988a(new zzchh(optString, optJSONObject.optString("string_value")));
                } else if (c == 2) {
                    zzdzcVar = zzdyq.m12993a(this.f26023b.m14283a(optJSONObject, "image_value"), new zzdvu(optString) { // from class: c.d.b.d.g.a.wi

                        /* renamed from: a */
                        public final String f15952a;

                        {
                            this.f15952a = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.zzdvu
                        public final Object apply(Object obj) {
                            return new zzchh(this.f15952a, (zzadq) obj);
                        }
                    }, this.f26022a);
                }
                arrayList.add(zzdzcVar);
            }
            zzdzcVar = zzdyq.m12988a((Object) null);
            arrayList.add(zzdzcVar);
        }
        return zzdyq.m12993a(zzdyq.m12989a((Iterable) arrayList), C4142vi.f15869a, this.f26022a);
    }
}
