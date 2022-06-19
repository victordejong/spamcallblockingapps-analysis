package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfg.class */
public final class bfg {

    /* renamed from: a */
    private final bfb f11135a;

    /* renamed from: b */
    private final AtomicReference<AbstractC3280ko> f11136b = new AtomicReference<>();

    public bfg(bfb bfbVar) {
        this.f11135a = bfbVar;
    }

    /* renamed from: b */
    private final AbstractC3280ko m12005b() {
        AbstractC3280ko abstractC3280ko = this.f11136b.get();
        if (abstractC3280ko == null) {
            C3556uu.m6745e("Unexpected call to adapter creator.");
            throw new RemoteException();
        }
        return abstractC3280ko;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.gms.internal.ads.kp] */
    /* renamed from: b */
    private final AbstractC3281kp m12004b(String str, JSONObject jSONObject) {
        AbstractC3280ko m12005b = m12005b();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                str = m12005b.mo7662b(jSONObject.getString("class_name")) ? m12005b.mo7663a("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : m12005b.mo7663a("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                C3556uu.m6748c("Invalid custom event.", e);
            }
            return str;
        }
        str = m12005b.mo7663a(str);
        return str;
    }

    /* renamed from: a */
    public final chs m12006a(String str, JSONObject jSONObject) {
        try {
            chs chsVar = new chs("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new BinderC3304ll(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new BinderC3304ll(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new BinderC3304ll(new zzaol()) : m12004b(str, jSONObject));
            this.f11135a.m12013a(str, chsVar);
            return chsVar;
        } catch (Throwable th) {
            throw new zzdhk(th);
        }
    }

    /* renamed from: a */
    public final AbstractC3333mn m12007a(String str) {
        AbstractC3333mn mo7661c = m12005b().mo7661c(str);
        this.f11135a.m12012a(str, mo7661c);
        return mo7661c;
    }

    /* renamed from: a */
    public final void m12008a(AbstractC3280ko abstractC3280ko) {
        this.f11136b.compareAndSet(null, abstractC3280ko);
    }

    /* renamed from: a */
    public final boolean m12009a() {
        return this.f11136b.get() != null;
    }
}
