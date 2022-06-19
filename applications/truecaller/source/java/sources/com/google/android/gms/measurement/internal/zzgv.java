package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import e.m.a.f.l.a.u;
import e.m.a.f.l.a.v0;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.RunnableC25122w1;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzgv.class */
public final /* synthetic */ class zzgv implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzhw f6428a;

    @Override // java.lang.Runnable
    public final void run() {
        Pair pair;
        NetworkInfo activeNetworkInfo;
        URL url;
        zzhw zzhwVar = this.f6428a;
        zzhwVar.d();
        if (((v0) zzhwVar).a.p().r.m38583b()) {
            ((v0) zzhwVar).a.zzay().m.m38590a("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long m38580a = ((v0) zzhwVar).a.p().s.m38580a();
        ((v0) zzhwVar).a.p().s.m38579b(1 + m38580a);
        zzfr zzfrVar = ((v0) zzhwVar).a;
        zzaf zzafVar = zzfrVar.g;
        if (m38580a >= 5) {
            zzfrVar.zzay().i.m38590a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
            ((v0) zzhwVar).a.p().r.m38584a(true);
            return;
        }
        zzfrVar.a().d();
        zzfr.h(zzfrVar.s());
        String i = zzfrVar.m().i();
        u p = zzfrVar.p();
        p.d();
        long mo38789a = ((v0) p).a.n.mo38789a();
        String str = p.h;
        if (str == null || mo38789a >= p.j) {
            p.j = ((v0) p).a.g.n(i, zzdu.f6312b) + mo38789a;
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(((v0) p).a.a);
                p.h = "";
                String id = advertisingIdInfo.getId();
                if (id != null) {
                    p.h = id;
                }
                p.i = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                ((v0) p).a.zzay().m.m38589b("Unable to get advertising id", e);
                p.h = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            pair = new Pair(p.h, Boolean.valueOf(p.i));
        } else {
            pair = new Pair(str, Boolean.valueOf(p.i));
        }
        if (!zzfrVar.g.q() || ((Boolean) pair.second).booleanValue() || TextUtils.isEmpty((CharSequence) pair.first)) {
            zzfrVar.zzay().m.m38590a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        zzia s = zzfrVar.s();
        s.g();
        ConnectivityManager connectivityManager = (ConnectivityManager) ((v0) s).a.a.getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException e2) {
            }
            if (activeNetworkInfo != null || !activeNetworkInfo.isConnected()) {
                zzfrVar.zzay().i.m38590a("Network is not available for Deferred Deep Link request. Skipping");
            }
            zzkw w = zzfrVar.w();
            ((v0) zzfrVar.m()).a.g.m();
            String str2 = (String) pair.first;
            long m38580a2 = zzfrVar.p().s.m38580a();
            Objects.requireNonNull(w);
            try {
                Preconditions.m38901g(str2);
                Preconditions.m38901g(i);
                String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 55005L, Integer.valueOf(w.h0())), str2, i, Long.valueOf(m38580a2 - 1));
                String str3 = format;
                if (i.equals(((v0) w).a.g.f("debug.deferred.deeplink", ""))) {
                    str3 = format.concat("&ddl_test=1");
                }
                url = new URL(str3);
            } catch (IllegalArgumentException | MalformedURLException e3) {
                ((v0) w).a.zzay().f.m38589b("Failed to create BOW URL for Deferred Deep Link. exception", e3.getMessage());
                url = null;
            }
            if (url == null) {
                return;
            }
            zzia s2 = zzfrVar.s();
            zzfp zzfpVar = new zzfp(zzfrVar);
            s2.d();
            s2.g();
            ((v0) s2).a.a().m(new RunnableC25122w1(s2, i, url, zzfpVar));
            return;
        }
        activeNetworkInfo = null;
        if (activeNetworkInfo != null) {
        }
        zzfrVar.zzay().i.m38590a("Network is not available for Deferred Deep Link request. Skipping");
    }
}
