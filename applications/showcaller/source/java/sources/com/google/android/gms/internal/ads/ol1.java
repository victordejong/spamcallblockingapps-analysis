package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ol1.class */
public final class ol1 {

    /* renamed from: a */
    private final ll1 f27595a;

    /* renamed from: b */
    private final AtomicReference<s70> f27596b = new AtomicReference<>();

    public ol1(ll1 ll1Var) {
        this.f27595a = ll1Var;
    }

    /* renamed from: e */
    private final s70 m12594e() {
        s70 s70Var = this.f27596b.get();
        if (s70Var != null) {
            return s70Var;
        }
        ei0.m15464f("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    /* renamed from: a */
    public final void m12598a(s70 s70Var) {
        this.f27596b.compareAndSet(null, s70Var);
    }

    /* renamed from: b */
    public final ok2 m12597b(String str, JSONObject jSONObject) {
        r80 r80Var;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                r80Var = new r80(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                r80Var = new r80(new AdUrlAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                r80Var = new r80(new zzbye());
            } else {
                s70 m12594e = m12594e();
                if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        r80Var = m12594e.mo11101y(string) ? m12594e.mo11102r("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : m12594e.mo11104P2(string) ? m12594e.mo11102r(string) : m12594e.mo11102r("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e) {
                        ei0.m15466d("Invalid custom event.", e);
                    }
                }
                r80Var = m12594e.mo11102r(str);
            }
            ok2 ok2Var = new ok2(r80Var);
            this.f27595a.m13487a(str, ok2Var);
            return ok2Var;
        } catch (Throwable th) {
            throw new zzfaw(th);
        }
    }

    /* renamed from: c */
    public final r90 m12596c(String str) {
        r90 mo11103p = m12594e().mo11103p(str);
        this.f27595a.m13486b(str, mo11103p);
        return mo11103p;
    }

    /* renamed from: d */
    public final boolean m12595d() {
        return this.f27596b.get() != null;
    }
}
