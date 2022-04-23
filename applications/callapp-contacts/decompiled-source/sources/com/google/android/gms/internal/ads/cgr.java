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

    /* renamed from: a  reason: collision with root package name */
    private final dbs f25805a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f25806b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cgr(dbs dbsVar, Context context) {
        this.f25805a = dbsVar;
        this.f25806b = context;
    }

    public static Bundle a(Context context, JSONArray jSONArray) {
        Object obj;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            int i2 = optInt != 0 ? optInt != 1 ? optInt != 2 ? 0 : cgv.f25812c : cgv.f25811b : cgv.f25810a;
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
                    int i3 = cgx.f25815a[i2 - 1];
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
    public final dbt<cgy<Bundle>> a() {
        return this.f25805a.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cgu

            /* renamed from: a  reason: collision with root package name */
            private final cgr f25809a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25809a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f25809a.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ cgy b() throws Exception {
        String str = (String) ekb.e().a(aq.dI);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Bundle a2 = a(this.f25806b, new JSONArray(str));
            return new cgy(a2) { // from class: com.google.android.gms.internal.ads.cgt

                /* renamed from: a  reason: collision with root package name */
                private final Bundle f25808a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25808a = a2;
                }

                @Override // com.google.android.gms.internal.ads.cgy
                public final void a(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", this.f25808a);
                }
            };
        } catch (JSONException e) {
            zzd.zzb("JSON parsing error", e);
            return null;
        }
    }
}
