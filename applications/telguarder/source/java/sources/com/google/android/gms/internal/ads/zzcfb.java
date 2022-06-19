package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfb.class */
public final class zzcfb {
    private final Executor executor;
    private final zzcer zzghm;

    public zzcfb(Executor executor, zzcer zzcerVar) {
        this.executor = executor;
        this.zzghm = zzcerVar;
    }

    public final zzdzw<List<zzcfg>> zzg(JSONObject jSONObject, String str) {
        zzdzw zzdzwVar;
        String optString;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return zzdzk.zzag(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null && (optString = optJSONObject.optString("name")) != null) {
                String optString2 = optJSONObject.optString("type");
                boolean z = "string".equals(optString2) ? true : "image".equals(optString2) ? true : false;
                if (z) {
                    zzdzwVar = zzdzk.zzag(new zzcfg(optString, optJSONObject.optString("string_value")));
                } else if (z) {
                    zzdzwVar = zzdzk.zzb(this.zzghm.zzc(optJSONObject, "image_value"), new zzdvz(optString) { // from class: com.google.android.gms.internal.ads.zzcfd
                        private final String zzdlh;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzdlh = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.zzdvz
                        public final Object apply(Object obj) {
                            return new zzcfg(this.zzdlh, (zzaed) obj);
                        }
                    }, this.executor);
                }
                arrayList.add(zzdzwVar);
            }
            zzdzwVar = zzdzk.zzag(null);
            arrayList.add(zzdzwVar);
        }
        return zzdzk.zzb(zzdzk.zzi(arrayList), zzcfe.zzeaj, this.executor);
    }
}
