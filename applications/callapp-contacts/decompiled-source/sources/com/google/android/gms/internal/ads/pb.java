package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pb.class */
public final class pb extends ov {

    /* renamed from: a  reason: collision with root package name */
    private final RtbAdapter f28265a;

    /* renamed from: b  reason: collision with root package name */
    private MediationInterstitialAd f28266b;

    /* renamed from: c  reason: collision with root package name */
    private MediationRewardedAd f28267c;

    /* renamed from: d  reason: collision with root package name */
    private String f28268d = "";

    public pb(RtbAdapter rtbAdapter) {
        this.f28265a = rtbAdapter;
    }

    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> a(oq oqVar, ms msVar) {
        return new ph(this, oqVar, msVar);
    }

    private static String a(String str, zzvq zzvqVar) {
        String str2 = zzvqVar.zzadx;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
        }
        return str2;
    }

    private static boolean a(zzvq zzvqVar) {
        if (zzvqVar.zzcid) {
            return true;
        }
        ekb.a();
        return yq.a();
    }

    private final Bundle b(zzvq zzvqVar) {
        Bundle bundle;
        return (zzvqVar.zzcih == null || (bundle = zzvqVar.zzcih.getBundle(this.f28265a.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private static Bundle b(String str) throws RemoteException {
        String valueOf = String.valueOf(str);
        za.zzez(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                bundle = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            }
            return bundle;
        } catch (JSONException e) {
            za.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final zzaqr a() throws RemoteException {
        return zzaqr.zza(this.f28265a.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(b bVar, String str, Bundle bundle, Bundle bundle2, zzvt zzvtVar, ox oxVar) throws RemoteException {
        AdFormat adFormat;
        try {
            pe peVar = new pe(this, oxVar);
            RtbAdapter rtbAdapter = this.f28265a;
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals(Reporting.AdFormat.REWARDED)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals(AdType.INTERSTITIAL)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1911491517:
                    if (str.equals("rewarded_interstitial")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                adFormat = AdFormat.BANNER;
            } else if (c2 == 1) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (c2 == 2) {
                adFormat = AdFormat.REWARDED;
            } else if (c2 == 3) {
                adFormat = AdFormat.REWARDED_INTERSTITIAL;
            } else if (c2 == 4) {
                adFormat = AdFormat.NATIVE;
            } else {
                throw new IllegalArgumentException("Internal Error");
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) d.a(bVar), arrayList, bundle, zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd)), peVar);
        } catch (Throwable th) {
            za.zzc("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str) {
        this.f28268d = str;
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, of ofVar, ms msVar, zzvt zzvtVar) throws RemoteException {
        try {
            this.f28265a.loadRtbBannerAd(new MediationBannerAdConfiguration((Context) d.a(bVar), str, b(str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str2, zzvqVar), zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd), this.f28268d), new pa(this, ofVar, msVar));
        } catch (Throwable th) {
            za.zzc("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, ok okVar, ms msVar) throws RemoteException {
        try {
            this.f28265a.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration((Context) d.a(bVar), str, b(str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str2, zzvqVar), this.f28268d), new pc(this, okVar, msVar));
        } catch (Throwable th) {
            za.zzc("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, ol olVar, ms msVar) throws RemoteException {
        a(str, str2, zzvqVar, bVar, olVar, msVar, (zzaei) null);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, ol olVar, ms msVar, zzaei zzaeiVar) throws RemoteException {
        try {
            this.f28265a.loadRtbNativeAd(new MediationNativeAdConfiguration((Context) d.a(bVar), str, b(str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str2, zzvqVar), this.f28268d, zzaeiVar), new pf(this, olVar, msVar));
        } catch (Throwable th) {
            za.zzc("Adapter failed to render native ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, oq oqVar, ms msVar) throws RemoteException {
        try {
            this.f28265a.loadRtbRewardedAd(new MediationRewardedAdConfiguration((Context) d.a(bVar), str, b(str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str2, zzvqVar), this.f28268d), a(oqVar, msVar));
        } catch (Throwable th) {
            za.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.os
    public final zzaqr b() throws RemoteException {
        return zzaqr.zza(this.f28265a.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void b(String str, String str2, zzvq zzvqVar, b bVar, of ofVar, ms msVar, zzvt zzvtVar) throws RemoteException {
        try {
            this.f28265a.loadRtbInterscrollerAd(new MediationBannerAdConfiguration((Context) d.a(bVar), str, b(str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str2, zzvqVar), zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd), this.f28268d), new pd(this, ofVar, msVar));
        } catch (Throwable th) {
            za.zzc("Adapter failed to render interscroller ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void b(String str, String str2, zzvq zzvqVar, b bVar, oq oqVar, ms msVar) throws RemoteException {
        try {
            this.f28265a.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) d.a(bVar), str, b(str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str2, zzvqVar), this.f28268d), a(oqVar, msVar));
        } catch (Throwable th) {
            za.zzc("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final boolean b(b bVar) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.f28266b;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) d.a(bVar));
            return true;
        } catch (Throwable th) {
            za.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final emk c() {
        RtbAdapter rtbAdapter = this.f28265a;
        if (!(rtbAdapter instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) rtbAdapter).getVideoController();
        } catch (Throwable th) {
            za.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.os
    public final boolean c(b bVar) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.f28267c;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) d.a(bVar));
            return true;
        } catch (Throwable th) {
            za.zzc("", th);
            return true;
        }
    }
}
