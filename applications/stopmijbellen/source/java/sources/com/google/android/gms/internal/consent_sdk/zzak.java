package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzak.class */
public final class zzak implements zzg {
    private final Application zza;
    private final zzam zzb;
    private final Executor zzc;

    public zzak(Application application, zzam zzamVar, Executor executor) {
        this.zza = application;
        this.zzb = zzamVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzg
    public final Executor zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzg
    public final boolean zzb(String str, JSONObject jSONObject) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode != 94746189) {
            if (hashCode == 113399775 && str.equals("write")) {
                z = false;
            }
            z = true;
        } else {
            if (str.equals("clear")) {
                z = true;
            }
            z = true;
        }
        if (!z) {
            zzbz zzbzVar = new zzbz(this.zza);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = jSONObject.opt(next);
                new StringBuilder(String.valueOf(next).length() + 23 + String.valueOf(opt).length());
                if (zzbzVar.zzc(next, opt)) {
                    this.zzb.zzc().add(next);
                } else {
                    String valueOf = String.valueOf(next);
                    if (valueOf.length() != 0) {
                        "Failed writing key: ".concat(valueOf);
                    }
                }
            }
            this.zzb.zze();
            zzbzVar.zzb();
            return true;
        } else if (!z) {
            return false;
        } else {
            JSONArray optJSONArray = jSONObject.optJSONArray("keys");
            if (optJSONArray == null || optJSONArray.length() == 0) {
                String valueOf2 = String.valueOf(jSONObject.toString());
                if (valueOf2.length() == 0) {
                    return true;
                }
                "Action[clear]: wrong args.".concat(valueOf2);
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
            zzca.zzb(this.zza, hashSet);
            return true;
        }
    }
}
