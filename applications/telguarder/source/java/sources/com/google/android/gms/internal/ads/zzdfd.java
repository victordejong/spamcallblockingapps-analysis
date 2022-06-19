package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfd.class */
public final class zzdfd implements zzdfi<zzdfj<Bundle>> {
    private final Context zzaad;
    private final zzdzv zzghl;

    public zzdfd(zzdzv zzdzvVar, Context context) {
        this.zzghl = zzdzvVar;
        this.zzaad = context;
    }

    public static Bundle zza(Context context, JSONArray jSONArray) {
        Object obj;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            int i2 = optInt != 0 ? optInt != 1 ? optInt != 2 ? 0 : zzdfh.zzhdj : zzdfh.zzhdi : zzdfh.zzhdh;
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i2 != 0) {
                String[] split = optString2.split("/");
                if (split.length > 2 || split.length == 0) {
                    obj = null;
                } else {
                    if (split.length == 1) {
                        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                        str = split[0];
                    } else {
                        sharedPreferences = context.getSharedPreferences(split[0], 0);
                        str = split[1];
                    }
                    obj = sharedPreferences.getAll().get(str);
                }
                if (obj != null) {
                    int i3 = zzdfe.zzhdg[i2 - 1];
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 == 3 && (obj instanceof Boolean)) {
                                bundle.putBoolean(optString, ((Boolean) obj).booleanValue());
                            }
                        } else if (obj instanceof Integer) {
                            bundle.putInt(optString, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            bundle.putLong(optString, ((Long) obj).longValue());
                        } else if (obj instanceof Float) {
                            bundle.putFloat(optString, ((Float) obj).floatValue());
                        }
                    } else if (obj instanceof String) {
                        bundle.putString(optString, (String) obj);
                    }
                }
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdfc
            private final zzdfd zzhdf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhdf = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhdf.zzatp();
            }
        });
    }

    public final /* synthetic */ zzdfj zzatp() throws Exception {
        String str = (String) zzwr.zzqr().zzd(zzabp.zzcxu);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new zzdfj(zza(this.zzaad, new JSONArray(str))) { // from class: com.google.android.gms.internal.ads.zzdff
                private final Bundle zzebm;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzebm = zza;
                }

                @Override // com.google.android.gms.internal.ads.zzdfj
                public final void zzr(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", this.zzebm);
                }
            };
        } catch (JSONException e) {
            zzd.zzb("JSON parsing error", e);
            return null;
        }
    }
}
