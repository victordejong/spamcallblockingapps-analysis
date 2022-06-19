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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgr.class */
public final class cgr implements chb<cgy<Bundle>> {

    /* renamed from: a */
    private final dbs f45751a;

    /* renamed from: b */
    private final Context f45752b;

    public cgr(dbs dbsVar, Context context) {
        this.f45751a = dbsVar;
        this.f45752b = context;
    }

    /* renamed from: a */
    public static Bundle m17468a(Context context, JSONArray jSONArray) {
        Object obj;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            int i2 = optInt != 0 ? optInt != 1 ? optInt != 2 ? 0 : cgv.f45758c : cgv.f45757b : cgv.f45756a;
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
                    int i3 = cgx.f45761a[i2 - 1];
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

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgy<Bundle>> mo17449a() {
        return this.f45751a.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cgu

            /* renamed from: a */
            private final cgr f45755a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45755a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f45755a.m17467b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ cgy m17467b() throws Exception {
        String str = (String) ekb.m14831e().m18571a(C12187aq.f42805dI);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new cgy(m17468a(this.f45752b, new JSONArray(str))) { // from class: com.google.android.gms.internal.ads.cgt

                /* renamed from: a */
                private final Bundle f45754a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f45754a = m17468a;
                }

                @Override // com.google.android.gms.internal.ads.cgy
                /* renamed from: a */
                public final void mo17450a(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", this.f45754a);
                }
            };
        } catch (JSONException e) {
            zzd.zzb("JSON parsing error", e);
            return null;
        }
    }
}
