package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bbo.class */
public final class bbo {

    /* renamed from: a */
    private final Executor f10882a;

    /* renamed from: b */
    private final bbe f10883b;

    public bbo(Executor executor, bbe bbeVar) {
        this.f10882a = executor;
        this.f10883b = bbeVar;
    }

    /* renamed from: a */
    public final crt<List<bbt>> m12116a(JSONObject jSONObject, String str) {
        crt<List<bbt>> m10783a;
        crt crtVar;
        String optString;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            m10783a = crg.m10778a(Collections.emptyList());
        } else {
            ArrayList arrayList = new ArrayList();
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null && (optString = optJSONObject.optString("name")) != null) {
                    String optString2 = optJSONObject.optString("type");
                    switch ("string".equals(optString2) ? true : "image".equals(optString2) ? true : false) {
                        case true:
                            crtVar = crg.m10778a(new bbt(optString, optJSONObject.optString("string_value")));
                            continue;
                            arrayList.add(crtVar);
                        case true:
                            crtVar = crg.m10783a(this.f10883b.m12126a(optJSONObject, "image_value"), new coe(optString) { // from class: com.google.android.gms.internal.ads.bbq

                                /* renamed from: a */
                                private final String f10894a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f10894a = optString;
                                }

                                @Override // com.google.android.gms.internal.ads.coe
                                /* renamed from: a */
                                public final Object mo7184a(Object obj) {
                                    return new bbt(this.f10894a, (BinderC2831bh) obj);
                                }
                            }, this.f10882a);
                            continue;
                            arrayList.add(crtVar);
                    }
                }
                crtVar = crg.m10778a((Object) null);
                arrayList.add(crtVar);
            }
            m10783a = crg.m10783a(crg.m10779a((Iterable) arrayList), bbr.f10895a, this.f10882a);
        }
        return m10783a;
    }
}
