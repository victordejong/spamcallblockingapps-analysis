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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzy.class */
public final class bzy implements cah<cae<Bundle>> {

    /* renamed from: a */
    private final crs f12588a;

    /* renamed from: b */
    private final Context f12589b;

    public bzy(crs crsVar, Context context) {
        this.f12588a = crsVar;
        this.f12589b = context;
    }

    /* renamed from: a */
    public static Bundle m11530a(Context context, JSONArray jSONArray) {
        int i;
        Object obj;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i2);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            switch (optJSONObject.optInt("type", -1)) {
                case 0:
                    i = cac.f12593a;
                    break;
                case 1:
                    i = cac.f12594b;
                    break;
                case 2:
                    i = cac.f12595c;
                    break;
                default:
                    i = 0;
                    break;
            }
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i != 0) {
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
                    switch (cad.f12597a[i - 1]) {
                        case 1:
                            if (obj instanceof String) {
                                bundle.putString(optString, (String) obj);
                                break;
                            } else {
                                continue;
                            }
                        case 2:
                            if (obj instanceof Integer) {
                                bundle.putInt(optString, ((Integer) obj).intValue());
                                continue;
                            } else if (obj instanceof Long) {
                                bundle.putLong(optString, ((Long) obj).longValue());
                                break;
                            } else if (obj instanceof Float) {
                                bundle.putFloat(optString, ((Float) obj).floatValue());
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (obj instanceof Boolean) {
                                bundle.putBoolean(optString, ((Boolean) obj).booleanValue());
                                break;
                            } else {
                                continue;
                            }
                    }
                }
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cae<Bundle>> mo11479a() {
        return this.f12588a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cab

            /* renamed from: a */
            private final bzy f12592a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12592a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12592a.m11529b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ cae m11529b() {
        cae caeVar;
        String str = (String) dyx.m8158e().m7876a(edi.f16470cW);
        if (TextUtils.isEmpty(str)) {
            caeVar = null;
        } else {
            try {
                caeVar = new cae(m11530a(this.f12589b, new JSONArray(str))) { // from class: com.google.android.gms.internal.ads.caa

                    /* renamed from: a */
                    private final Bundle f12591a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12591a = m11530a;
                    }

                    @Override // com.google.android.gms.internal.ads.cae
                    /* renamed from: a */
                    public final void mo11481a(Object obj) {
                        ((Bundle) obj).putBundle("shared_pref", this.f12591a);
                    }
                };
            } catch (JSONException e) {
                C3556uu.m6750b("JSON parsing error", e);
                caeVar = null;
            }
        }
        return caeVar;
    }
}
