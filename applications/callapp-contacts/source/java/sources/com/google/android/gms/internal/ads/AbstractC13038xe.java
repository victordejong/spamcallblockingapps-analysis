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
/* renamed from: com.google.android.gms.internal.ads.xe */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xe.class */
public abstract class AbstractC13038xe {

    /* renamed from: a */
    private static AbstractC13038xe f50014a;

    /* renamed from: a */
    public static AbstractC13038xe m14013a(Context context) {
        synchronized (AbstractC13038xe.class) {
            try {
                AbstractC13038xe abstractC13038xe = f50014a;
                if (abstractC13038xe != null) {
                    return abstractC13038xe;
                }
                Context applicationContext = context.getApplicationContext();
                C12187aq.m18474a(applicationContext);
                zzf m13975d = zzr.zzkz().m13975d();
                m13975d.initialize(applicationContext);
                AbstractC13038xe mo14018a = new C13017wm().mo14017a(applicationContext).mo14016a(m13975d).mo14015a(zzr.zzlt()).mo14018a();
                f50014a = mo14018a;
                SharedPreferences$OnSharedPreferenceChangeListenerC13008wd mo14014a = mo14018a.mo14014a();
                mo14014a.f49954a.registerOnSharedPreferenceChangeListener(mo14014a);
                mo14014a.onSharedPreferenceChanged(mo14014a.f49954a, "IABTCF_PurposeConsents");
                f50014a.mo14012b().f49964a.m14048a();
                C13039xf mo14011c = f50014a.mo14011c();
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42673aj)).booleanValue()) {
                    HashMap hashMap = new HashMap();
                    try {
                        JSONObject jSONObject = new JSONObject((String) ekb.m14831e().m18571a(C12187aq.f42674ak));
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
                            mo14011c.m14009a(str);
                        }
                        mo14011c.m14010a(new AbstractC13044xk(mo14011c, hashMap) { // from class: com.google.android.gms.internal.ads.xi

                            /* renamed from: a */
                            private final C13039xf f50021a;

                            /* renamed from: b */
                            private final Map f50022b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f50021a = mo14011c;
                                this.f50022b = hashMap;
                            }

                            @Override // com.google.android.gms.internal.ads.AbstractC13044xk
                            /* renamed from: a */
                            public final void mo14004a(String str2, String str3) {
                                C13039xf c13039xf = this.f50021a;
                                Map map = this.f50022b;
                                if (!map.containsKey(str2) || !((Set) map.get(str2)).contains(str3)) {
                                    return;
                                }
                                c13039xf.f50016b.f49964a.m14047a(-1);
                            }
                        });
                    } catch (JSONException e) {
                        zzd.zzb("Failed to parse listening list", e);
                    }
                }
                return f50014a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    abstract SharedPreferences$OnSharedPreferenceChangeListenerC13008wd mo14014a();

    /* renamed from: b */
    public abstract C13012wh mo14012b();

    /* renamed from: c */
    abstract C13039xf mo14011c();
}
