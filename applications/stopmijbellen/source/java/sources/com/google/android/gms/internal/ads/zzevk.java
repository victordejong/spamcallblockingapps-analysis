package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevk.class */
public final class zzevk implements zzevn<zzevm<Bundle>> {
    private final zzfxb zza;
    private final Context zzb;

    public zzevk(zzfxb zzfxbVar, Context context) {
        this.zza = zzfxbVar;
        this.zzb = context;
    }

    public static Bundle zza(Context context, JSONArray jSONArray) {
        String str;
        SharedPreferences sharedPreferences;
        Bundle bundle = new Bundle();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            int i2 = optInt != 0 ? optInt != 1 ? optInt != 2 ? 0 : 3 : 2 : 1;
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i2 != 0) {
                String[] split = optString2.split("/");
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

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevm<Bundle>> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevk.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzevm zzc() throws Exception {
        String str = (String) zzbgq.zzc().zzb(zzblj.zzeA);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Bundle zza = zza(this.zzb, new JSONArray(str));
            return new zzevm() { // from class: com.google.android.gms.internal.ads.zzevi
                @Override // com.google.android.gms.internal.ads.zzevm
                public final void zza(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", zza);
                }
            };
        } catch (JSONException e) {
            zzciz.zzf("JSON parsing error", e);
            return null;
        }
    }
}
