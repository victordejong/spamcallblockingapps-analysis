package com.google.android.gms.internal.ads;

import com.allinone.callerid.bean.ShortCut;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yh1.class */
public final class yh1 {

    /* renamed from: a */
    private final Executor f32510a;

    /* renamed from: b */
    private final th1 f32511b;

    public yh1(Executor executor, th1 th1Var) {
        this.f32510a = executor;
        this.f32511b = th1Var;
    }

    /* renamed from: a */
    public final r03<List<xh1>> m8822a(JSONObject jSONObject, String str) {
        r03 r03Var;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return k03.m14003a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                r03Var = k03.m14003a(null);
            } else {
                String optString = optJSONObject.optString(ShortCut.NAME);
                if (optString == null) {
                    r03Var = k03.m14003a(null);
                } else {
                    String optString2 = optJSONObject.optString("type");
                    r03Var = "string".equals(optString2) ? k03.m14003a(new xh1(optString, optJSONObject.optString("string_value"))) : "image".equals(optString2) ? k03.m13994j(this.f32511b.m10676a(optJSONObject, "image_value"), new nu2(optString) { // from class: com.google.android.gms.internal.ads.wh1

                        /* renamed from: a */
                        private final String f31581a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f31581a = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.nu2
                        /* renamed from: a */
                        public final Object mo8501a(Object obj) {
                            return new xh1(this.f31581a, (BinderC6940ry) obj);
                        }
                    }, this.f32510a) : k03.m14003a(null);
                }
            }
            arrayList.add(r03Var);
        }
        return k03.m13994j(k03.m13993k(arrayList), vh1.f31182a, this.f32510a);
    }
}
