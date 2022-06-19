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
        AbstractC1767he abstractC1767he = this.f6566b.get();
        if (abstractC1767he != null) {
            return abstractC1767he;
        }
        C1894po.m6180f("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    /* renamed from: a */
    public final void m7470a(AbstractC1767he abstractC1767he) {
        this.f6566b.compareAndSet(null, abstractC1767he);
    }

    /* renamed from: b */
    public final im1 m7469b(String str, JSONObject jSONObject) {
        AbstractC1816ke abstractC1816ke;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                abstractC1816ke = new gf(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                abstractC1816ke = new gf(new AdUrlAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                abstractC1816ke = new gf(new zzasz());
            } else {
                AbstractC1767he m7466e = m7466e();
                if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        abstractC1816ke = m7466e.m7291x(string) ? m7466e.m7292u("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : m7466e.m7294I0(string) ? m7466e.m7292u(string) : m7466e.m7292u("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e) {
                        C1894po.m6182d("Invalid custom event.", e);
                    }
                }
                abstractC1816ke = m7466e.m7292u(str);
            }
            im1 im1Var = new im1(abstractC1816ke);
            this.f6565a.m7790a(str, im1Var);
            return im1Var;
        } catch (Throwable th) {
            throw new zzdrl(th);
        }
    }

    /* renamed from: c */
    public final AbstractC1752gg m7468c(String str) {
        AbstractC1752gg m7293s = m7466e().m7293s(str);
        this.f6565a.m7789b(str, m7293s);
        return m7293s;
    }

    /* renamed from: d */
    public final boolean m7467d() {
        return this.f6566b.get() != null;
    }
}
