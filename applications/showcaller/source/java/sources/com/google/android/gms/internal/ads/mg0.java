package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mg0.class */
public abstract class mg0 {

    /* renamed from: a */
    static mg0 f26593a;

    /* renamed from: d */
    public static mg0 m13199d(Context context) {
        synchronized (mg0.class) {
            try {
                mg0 mg0Var = f26593a;
                if (mg0Var != null) {
                    return mg0Var;
                }
                Context applicationContext = context.getApplicationContext();
                C6679kw.m13770a(applicationContext);
                AbstractC5728q1 m12230p = C5667s.m18156h().m12230p();
                m12230p.mo17966U(applicationContext);
                pf0 pf0Var = new pf0(null);
                pf0Var.m12302a(applicationContext);
                pf0Var.m12301b(C5667s.m18153k());
                pf0Var.m12300c(m12230p);
                pf0Var.m12299d(C5667s.m18163a());
                mg0 m12298e = pf0Var.m12298e();
                f26593a = m12298e;
                m12298e.mo11486a().m14408a();
                f26593a.mo11485b().m12935e();
                rg0 mo11484c = f26593a.mo11484c();
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25735l0)).booleanValue()) {
                    HashMap hashMap = new HashMap();
                    try {
                        JSONObject jSONObject = new JSONObject((String) C7192yr.m8714c().m14263c(C6679kw.f25751n0));
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
                            mo11484c.m11472c(str);
                        }
                        mo11484c.m11473b(new qg0(mo11484c, hashMap) { // from class: com.google.android.gms.internal.ads.og0

                            /* renamed from: a */
                            private final rg0 f27524a;

                            /* renamed from: b */
                            private final Map f27525b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f27524a = mo11484c;
                                this.f27525b = hashMap;
                            }

                            @Override // com.google.android.gms.internal.ads.qg0
                            /* renamed from: a */
                            public final void mo11898a(SharedPreferences sharedPreferences, String str2, String str3) {
                                this.f27524a.m11471d(this.f27525b, sharedPreferences, str2, str3);
                            }
                        });
                    } catch (JSONException e) {
                        ei0.m15468b("Failed to parse listening list", e);
                    }
                }
                return f26593a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    abstract if0 mo11486a();

    /* renamed from: b */
    public abstract nf0 mo11485b();

    /* renamed from: c */
    abstract rg0 mo11484c();
}
