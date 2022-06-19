package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.facebook.internal.AnalyticsEvents;
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
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapt.class */
public final class zzapt extends zzapn {
    private MediationRewardedAd zzdnp;
    private final RtbAdapter zzdoo;
    private MediationInterstitialAd zzdop;
    private String zzdoq = "";

    public zzapt(RtbAdapter rtbAdapter) {
        this.zzdoo = rtbAdapter;
    }

    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> zza(zzapj zzapjVar, zzank zzankVar) {
        return new zzapw(this, zzapjVar, zzankVar);
    }

    private static String zza(String str, zzvl zzvlVar) {
        String str2;
        String str3 = zzvlVar.zzadq;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    private static boolean zzc(zzvl zzvlVar) {
        if (!zzvlVar.zzchq) {
            zzwr.zzqn();
            return zzaza.zzzw();
        }
        return true;
    }

    private final Bundle zzd(zzvl zzvlVar) {
        Bundle bundle;
        return (zzvlVar.zzchu == null || (bundle = zzvlVar.zzchu.getBundle(this.zzdoo.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private static Bundle zzdp(String str) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzazk.zzex(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            zzazk.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzzc getVideoController() {
        RtbAdapter rtbAdapter = this.zzdoo;
        if (!(rtbAdapter instanceof zza)) {
            return null;
        }
        try {
            return ((zza) rtbAdapter).getVideoController();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzvs zzvsVar, zzapp zzappVar) throws RemoteException {
        AdFormat adFormat;
        try {
            zzapx zzapxVar = new zzapx(this, zzappVar);
            RtbAdapter rtbAdapter = this.zzdoo;
            boolean z = true;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals(POBConstants.KEY_BANNER)) {
                        z = false;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
                        z = true;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        z = true;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals(POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE)) {
                        z = true;
                        break;
                    }
                    break;
                case 1911491517:
                    if (str.equals("rewarded_interstitial")) {
                        z = true;
                        break;
                    }
                    break;
            }
            if (!z) {
                adFormat = AdFormat.BANNER;
            } else if (z) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (z) {
                adFormat = AdFormat.REWARDED;
            } else if (z) {
                adFormat = AdFormat.REWARDED_INTERSTITIAL;
            } else if (!z) {
                throw new IllegalArgumentException("Internal Error");
            } else {
                adFormat = AdFormat.NATIVE;
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList, bundle, com.google.android.gms.ads.zza.zza(zzvsVar.width, zzvsVar.height, zzvsVar.zzacy)), zzapxVar);
        } catch (Throwable th) {
            zzazk.zzc("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvlVar, IObjectWrapper iObjectWrapper, zzaoy zzaoyVar, zzank zzankVar, zzvs zzvsVar) throws RemoteException {
        try {
            this.zzdoo.loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdp(str2), zzd(zzvlVar), zzc(zzvlVar), zzvlVar.zznb, zzvlVar.zzado, zzvlVar.zzadp, zza(str2, zzvlVar), com.google.android.gms.ads.zza.zza(zzvsVar.width, zzvsVar.height, zzvsVar.zzacy), this.zzdoq), new zzaps(this, zzaoyVar, zzankVar));
        } catch (Throwable th) {
            zzazk.zzc("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvlVar, IObjectWrapper iObjectWrapper, zzapd zzapdVar, zzank zzankVar) throws RemoteException {
        try {
            this.zzdoo.loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdp(str2), zzd(zzvlVar), zzc(zzvlVar), zzvlVar.zznb, zzvlVar.zzado, zzvlVar.zzadp, zza(str2, zzvlVar), this.zzdoq), new zzapv(this, zzapdVar, zzankVar));
        } catch (Throwable th) {
            zzazk.zzc("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvlVar, IObjectWrapper iObjectWrapper, zzape zzapeVar, zzank zzankVar) throws RemoteException {
        try {
            this.zzdoo.loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdp(str2), zzd(zzvlVar), zzc(zzvlVar), zzvlVar.zznb, zzvlVar.zzado, zzvlVar.zzadp, zza(str2, zzvlVar), this.zzdoq), new zzapu(this, zzapeVar, zzankVar));
        } catch (Throwable th) {
            zzazk.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvlVar, IObjectWrapper iObjectWrapper, zzapj zzapjVar, zzank zzankVar) throws RemoteException {
        try {
            this.zzdoo.loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdp(str2), zzd(zzvlVar), zzc(zzvlVar), zzvlVar.zznb, zzvlVar.zzado, zzvlVar.zzadp, zza(str2, zzvlVar), this.zzdoq), zza(zzapjVar, zzankVar));
        } catch (Throwable th) {
            zzazk.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final boolean zzaa(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.zzdnp;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzb(String str, String str2, zzvl zzvlVar, IObjectWrapper iObjectWrapper, zzapj zzapjVar, zzank zzankVar) throws RemoteException {
        try {
            this.zzdoo.loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdp(str2), zzd(zzvlVar), zzc(zzvlVar), zzvlVar.zznb, zzvlVar.zzado, zzvlVar.zzadp, zza(str2, zzvlVar), this.zzdoq), zza(zzapjVar, zzankVar));
        } catch (Throwable th) {
            zzazk.zzc("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzdm(String str) {
        this.zzdoq = str;
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzapy zzvc() throws RemoteException {
        return zzapy.zza(this.zzdoo.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzapy zzvd() throws RemoteException {
        return zzapy.zza(this.zzdoo.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzy(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final boolean zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.zzdop;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return true;
        }
    }
}
