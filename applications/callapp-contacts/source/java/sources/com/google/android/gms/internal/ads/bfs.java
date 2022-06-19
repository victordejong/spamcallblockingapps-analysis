package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfs.class */
public final class bfs {

    /* renamed from: a */
    private final Executor f43830a;

    /* renamed from: b */
    private final bfi f43831b;

    public bfs(Executor executor, bfi bfiVar) {
        this.f43830a = executor;
        this.f43831b = bfiVar;
    }

    /* renamed from: a */
    public final dbt<List<bft>> m17882a(JSONObject jSONObject, String str) {
        dbt dbtVar;
        String optString;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return dbh.m16899a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null && (optString = optJSONObject.optString("name")) != null) {
                String optString2 = optJSONObject.optString("type");
                boolean z = "string".equals(optString2) ? true : "image".equals(optString2) ? true : false;
                if (z) {
                    dbtVar = dbh.m16899a(new bft(optString, optJSONObject.optString("string_value")));
                } else if (z) {
                    dbtVar = daj.m16942a(this.f43831b.m17886a(optJSONObject, "image_value"), new cxu(optString) { // from class: com.google.android.gms.internal.ads.bfu

                        /* renamed from: a */
                        private final String f43836a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43836a = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.cxu
                        /* renamed from: a */
                        public final Object mo14064a(Object obj) {
                            return new bft(this.f43836a, (BinderC12325de) obj);
                        }
                    }, this.f43830a);
                }
                arrayList.add(dbtVar);
            }
            dbtVar = dbh.m16899a((Object) null);
            arrayList.add(dbtVar);
        }
        return daj.m16942a(dbh.m16900a((Iterable) arrayList), bfr.f43829a, this.f43830a);
    }
}
