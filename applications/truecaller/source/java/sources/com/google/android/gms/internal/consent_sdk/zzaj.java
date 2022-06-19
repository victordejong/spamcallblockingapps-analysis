package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.text.TextUtils;
import com.mopub.common.AdType;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzaj.class */
public final class zzaj implements zzi {
    private final Application zza;
    private final zzal zzb;
    private final Executor zzc;

    public zzaj(Application application, zzal zzalVar, Executor executor) {
        this.zza = application;
        this.zzb = zzalVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzi
    public final Executor zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzi
    public final boolean zza(String str, JSONObject jSONObject) {
        str.hashCode();
        if (str.equals(AdType.CLEAR)) {
            JSONArray optJSONArray = jSONObject.optJSONArray("keys");
            if (optJSONArray == null || optJSONArray.length() == 0) {
                String valueOf = String.valueOf(jSONObject.toString());
                if (valueOf.length() != 0) {
                    "Action[clear]: wrong args.".concat(valueOf);
                    return true;
                }
                new String("Action[clear]: wrong args.");
                return true;
            }
            HashSet hashSet = new HashSet();
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                String optString = optJSONArray.optString(i);
                if (!TextUtils.isEmpty(optString)) {
                    hashSet.add(optString);
                }
            }
            zzcc.zza(this.zza, hashSet);
            return true;
        } else if (!str.equals("write")) {
            return false;
        } else {
            zzce zzceVar = new zzce(this.zza);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = jSONObject.opt(next);
                String valueOf2 = String.valueOf(opt);
                String.valueOf(next).length();
                valueOf2.length();
                if (zzceVar.zza(next, opt)) {
                    this.zzb.zzd().add(next);
                } else {
                    String valueOf3 = String.valueOf(next);
                    if (valueOf3.length() != 0) {
                        "Failed writing key: ".concat(valueOf3);
                    } else {
                        new String("Failed writing key: ");
                    }
                }
            }
            this.zzb.zze();
            zzceVar.zza();
            return true;
        }
    }
}
