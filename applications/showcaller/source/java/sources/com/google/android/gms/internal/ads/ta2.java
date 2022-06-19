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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ta2.class */
public final class ta2 implements wa2<va2<Bundle>> {

    /* renamed from: a */
    private final s03 f29877a;

    /* renamed from: b */
    private final Context f29878b;

    public ta2(s03 s03Var, Context context) {
        this.f29877a = s03Var;
        this.f29878b = context;
    }

    /* renamed from: a */
    public static Bundle m10754a(Context context, JSONArray jSONArray) {
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

    /* renamed from: b */
    public final /* synthetic */ va2 m10753b() {
        String str = (String) C7192yr.m8714c().m14263c(C6679kw.f25803t4);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new va2(m10754a(this.f29878b, new JSONArray(str))) { // from class: com.google.android.gms.internal.ads.sa2

                /* renamed from: a */
                private final Bundle f29433a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29433a = m10754a;
                }

                @Override // com.google.android.gms.internal.ads.va2
                /* renamed from: a */
                public final void mo8928a(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", this.f29433a);
                }
            };
        } catch (JSONException e) {
            ei0.m15468b("JSON parsing error", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<va2<Bundle>> zza() {
        return this.f29877a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ra2

            /* renamed from: a */
            private final ta2 f28835a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28835a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f28835a.m10753b();
            }
        });
    }
}
