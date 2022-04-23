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

    /* renamed from: a  reason: collision with root package name */
    final bja f24542a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<mm> f24543b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public bjg(bja bjaVar) {
        this.f24542a = bjaVar;
    }

    private final mn b(String str, JSONObject jSONObject) throws RemoteException {
        mm a2 = a();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                String string = jSONObject.getString("class_name");
                return a2.b(string) ? a2.a("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : a2.c(string) ? a2.a(string) : a2.a("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                zzd.zzc("Invalid custom event.", e);
            }
        }
        return a2.a(str);
    }

    public final cqe a(String str, JSONObject jSONObject) throws zzdpq {
        try {
            cqe cqeVar = new cqe("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new nn(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new nn(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new nn(new zzaqt()) : b(str, jSONObject));
            this.f24542a.a(str, cqeVar);
            return cqeVar;
        } catch (Throwable th) {
            throw new zzdpq(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final mm a() throws RemoteException {
        mm mmVar = this.f24543b.get();
        if (mmVar != null) {
            return mmVar;
        }
        zzd.zzez("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final void a(mm mmVar) {
        this.f24543b.compareAndSet(null, mmVar);
    }
}
