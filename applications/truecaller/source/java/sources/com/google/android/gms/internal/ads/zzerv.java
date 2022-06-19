package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzerv.class */
public final class zzerv implements zzery<zzerx<Bundle>> {
    private final zzfsn zza;
    private final Context zzb;

    public zzerv(zzfsn zzfsnVar, Context context) {
        this.zza = zzfsnVar;
        this.zzb = context;
    }

    public static Bundle zzb(Context context, JSONArray jSONArray) {
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            int i2 = optInt != 0 ? optInt != 1 ? optInt != 2 ? 0 : 3 : 2 : 1;
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i2 != 0) {
                String[] split = optString2.split(StringConstant.SLASH);
                int length = split.length;
                Object obj = null;
                if (length <= 2) {
                    if (length == 0) {
                        obj = null;
                    } else {
                        if (length == 1) {
                            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                            str = split[0];
                        } else {
                            sharedPreferences = context.getSharedPreferences(split[0], 0);
                            str = split[1];
                        }
                        obj = sharedPreferences.getAll().get(str);
                    }
                }
                if (obj != null) {
                    int i3 = i2 - 1;
                    if (i3 != 0) {
                        if (i3 != 1) {
                            if (obj instanceof Boolean) {
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

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzerx<Bundle>> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzert
            private final zzerv zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    public final /* synthetic */ zzerx zzc() throws Exception {
        String str = (String) zzbet.zzc().zzc(zzbjl.zzet);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new zzerx(zzb(this.zzb, new JSONArray(str))) { // from class: com.google.android.gms.internal.ads.zzeru
                private final Bundle zza;

                {
                    this.zza = zzb;
                }

                @Override // com.google.android.gms.internal.ads.zzerx
                public final void zzf(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", this.zza);
                }
            };
        } catch (JSONException e) {
            zzcgt.zze("JSON parsing error", e);
            return null;
        }
    }
}
