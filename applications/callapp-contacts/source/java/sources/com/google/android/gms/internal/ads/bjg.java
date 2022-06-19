package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjg.class */
public final class bjg {

    /* renamed from: a */
    final bja f44092a;

    /* renamed from: b */
    final AtomicReference<AbstractC12746mm> f44093b = new AtomicReference<>();

    public bjg(bja bjaVar) {
        this.f44092a = bjaVar;
    }

    /* renamed from: b */
    private final AbstractC12747mn m17809b(String str, JSONObject jSONObject) throws RemoteException {
        AbstractC12746mm m17812a = m17812a();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                String string = jSONObject.getString("class_name");
                return m17812a.mo14486b(string) ? m17812a.mo14487a("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : m17812a.mo14485c(string) ? m17812a.mo14487a(string) : m17812a.mo14487a("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                zzd.zzc("Invalid custom event.", e);
            }
        }
        return m17812a.mo14487a(str);
    }

    /* renamed from: a */
    public final cqe m17810a(String str, JSONObject jSONObject) throws zzdpq {
        try {
            cqe cqeVar = new cqe("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new BinderC12775nn(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new BinderC12775nn(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new BinderC12775nn(new zzaqt()) : m17809b(str, jSONObject));
            this.f44092a.m17816a(str, cqeVar);
            return cqeVar;
        } catch (Throwable th) {
            throw new zzdpq(th);
        }
    }

    /* renamed from: a */
    public final AbstractC12746mm m17812a() throws RemoteException {
        AbstractC12746mm abstractC12746mm = this.f44093b.get();
        if (abstractC12746mm != null) {
            return abstractC12746mm;
        }
        zzd.zzez("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    /* renamed from: a */
    public final void m17811a(AbstractC12746mm abstractC12746mm) {
        this.f44093b.compareAndSet(null, abstractC12746mm);
    }
}
