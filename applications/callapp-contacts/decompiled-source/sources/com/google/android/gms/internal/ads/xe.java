package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xe.class */
public abstract class xe {

    /* renamed from: a  reason: collision with root package name */
    private static xe f28506a;

    public static xe a(Context context) {
        synchronized (xe.class) {
            try {
                xe xeVar = f28506a;
                if (xeVar != null) {
                    return xeVar;
                }
                Context applicationContext = context.getApplicationContext();
                aq.a(applicationContext);
                zzf d2 = zzr.zzkz().d();
                d2.initialize(applicationContext);
                xe a2 = new wm().a(applicationContext).a(d2).a(zzr.zzlt()).a();
                f28506a = a2;
                wd a3 = a2.a();
                a3.f28459a.registerOnSharedPreferenceChangeListener(a3);
                a3.onSharedPreferenceChanged(a3.f28459a, "IABTCF_PurposeConsents");
                f28506a.b().f28468a.a();
                final xf c2 = f28506a.c();
                if (((Boolean) ekb.e().a(aq.aj)).booleanValue()) {
                    final HashMap hashMap = new HashMap();
                    try {
                        JSONObject jSONObject = new JSONObject((String) ekb.e().a(aq.ak));
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            HashSet hashSet = new HashSet();
                            JSONArray optJSONArray = jSONObject.optJSONArray(next);
                            if (optJSONArray != null) {
                                for (int i = 0; i < optJSONArray.length(); i++) {
                                    String optString = optJSONArray.optString(i);
                                    if (optString != null) {
                                        hashSet.add(optString);
                                    }
                                }
                                hashMap.put(next, hashSet);
                            }
                        }
                        for (String str : hashMap.keySet()) {
                            c2.a(str);
                        }
                        c2.a(new xk(c2, hashMap) { // from class: com.google.android.gms.internal.ads.xi

                            /* renamed from: a  reason: collision with root package name */
                            private final xf f28513a;

                            /* renamed from: b  reason: collision with root package name */
                            private final Map f28514b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f28513a = c2;
                                this.f28514b = hashMap;
                            }

                            @Override // com.google.android.gms.internal.ads.xk
                            public final void a(String str2, String str3) {
                                xf xfVar = this.f28513a;
                                Map map = this.f28514b;
                                if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str3)) {
                                    xfVar.f28508b.f28468a.a(-1);
                                }
                            }
                        });
                    } catch (JSONException e) {
                        zzd.zzb("Failed to parse listening list", e);
                    }
                }
                return f28506a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    abstract wd a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract wh b();

    abstract xf c();
}
