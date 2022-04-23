package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fp0.class */
public final class fp0 {

    /* renamed from: a */
    private final cp0 f6565a;

    /* renamed from: b */
    private final AtomicReference<AbstractC1767he> f6566b = new AtomicReference<>();

    fp0(cp0 cp0Var) {
        this.f6565a = cp0Var;
    }

    /* renamed from: e */
    private final AbstractC1767he m7466e() {
        AbstractC1767he heVar = this.f6566b.get();
        if (heVar != null) {
            return heVar;
        }
        C1894po.m6180f("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    /* renamed from: a */
    public final void m7470a(AbstractC1767he heVar) {
        this.f6566b.compareAndSet(null, heVar);
    }

    /* renamed from: b */
    public final im1 m7469b(String str, JSONObject jSONObject) {
        gf gfVar;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                gfVar = new gf(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                gfVar = new gf(new AdUrlAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                gfVar = new gf(new zzasz());
            } else {
                AbstractC1767he e = m7466e();
                if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        gfVar = e.m7291x(string) ? e.m7292u("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : e.m7294I0(string) ? e.m7292u(string) : e.m7292u("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e2) {
                        C1894po.m6182d("Invalid custom event.", e2);
                    }
                }
                gfVar = e.m7292u(str);
            }
            im1 im1Var = new im1(gfVar);
            this.f6565a.m7790a(str, im1Var);
            return im1Var;
        } catch (Throwable th) {
            throw new zzdrl(th);
        }
    }

    /* renamed from: c */
    public final AbstractC1752gg m7468c(String str) {
        AbstractC1752gg s = m7466e().m7293s(str);
        this.f6565a.m7789b(str, s);
        return s;
    }

    /* renamed from: d */
    public final boolean m7467d() {
        return this.f6566b.get() != null;
    }
}
