package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfs.class */
public final class bfs {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f24350a;

    /* renamed from: b  reason: collision with root package name */
    private final bfi f24351b;

    public bfs(Executor executor, bfi bfiVar) {
        this.f24350a = executor;
        this.f24351b = bfiVar;
    }

    public final dbt<List<bft>> a(JSONObject jSONObject, String str) {
        dbt dbtVar;
        final String optString;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return dbh.a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (!(optJSONObject == null || (optString = optJSONObject.optString("name")) == null)) {
                String optString2 = optJSONObject.optString("type");
                char c2 = "string".equals(optString2) ? (char) 1 : "image".equals(optString2) ? (char) 2 : (char) 0;
                if (c2 == 1) {
                    dbtVar = dbh.a(new bft(optString, optJSONObject.optString("string_value")));
                } else if (c2 == 2) {
                    dbtVar = daj.a(this.f24351b.a(optJSONObject, "image_value"), new cxu(optString) { // from class: com.google.android.gms.internal.ads.bfu

                        /* renamed from: a  reason: collision with root package name */
                        private final String f24356a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24356a = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.cxu
                        public final Object a(Object obj) {
                            return new bft(this.f24356a, (de) obj);
                        }
                    }, this.f24350a);
                }
                arrayList.add(dbtVar);
            }
            dbtVar = dbh.a((Object) null);
            arrayList.add(dbtVar);
        }
        return daj.a(dbh.a((Iterable) arrayList), bfr.f24349a, this.f24350a);
    }
}
