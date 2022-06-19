package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoi.class */
public final class zzaoi<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends zzani {
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> zzdoc;
    private final NETWORK_EXTRAS zzdod;

    public zzaoi(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.zzdoc = mediationAdapter;
        this.zzdod = network_extras;
    }

    private static boolean zzc(zzvl zzvlVar) {
        if (!zzvlVar.zzchq) {
            zzwr.zzqn();
            return zzaza.zzzw();
        }
        return true;
    }

    private final SERVER_PARAMETERS zzdk(String str) throws RemoteException {
        HashMap hashMap;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                HashMap hashMap2 = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    hashMap = hashMap2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    hashMap2.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.zzdoc.getServerParametersType();
            SERVER_PARAMETERS server_parameters = null;
            if (serverParametersType != null) {
                server_parameters = serverParametersType.newInstance();
                server_parameters.load(hashMap);
            }
            return server_parameters;
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void destroy() throws RemoteException {
        try {
            this.zzdoc.destroy();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean isInitialized() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void resume() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showInterstitial() throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzazk.zzdy("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzdoc).showInterstitial();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showVideo() {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzajj zzajjVar, List<zzajr> list) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzavf zzavfVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
        zza(iObjectWrapper, zzvlVar, str, (String) null, zzankVar);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzavf zzavfVar, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar) throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzazk.zzdy("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzdoc).requestInterstitialAd(new zzaol(zzankVar), (Activity) ObjectWrapper.unwrap(iObjectWrapper), zzdk(str), zzaox.zza(zzvlVar, zzc(zzvlVar)), this.zzdod);
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar, zzaeh zzaehVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
        zza(iObjectWrapper, zzvsVar, zzvlVar, str, null, zzankVar);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, String str2, zzank zzankVar) throws RemoteException {
        AdSize adSize;
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzazk.zzdy("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzdoc;
            zzaol zzaolVar = new zzaol(zzankVar);
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
            SERVER_PARAMETERS zzdk = zzdk(str);
            AdSize[] adSizeArr = new AdSize[6];
            int i = 0;
            adSizeArr[0] = AdSize.SMART_BANNER;
            adSizeArr[1] = AdSize.BANNER;
            adSizeArr[2] = AdSize.IAB_MRECT;
            adSizeArr[3] = AdSize.IAB_BANNER;
            adSizeArr[4] = AdSize.IAB_LEADERBOARD;
            adSizeArr[5] = AdSize.IAB_WIDE_SKYSCRAPER;
            while (true) {
                if (i >= 6) {
                    adSize = new AdSize(zza.zza(zzvsVar.width, zzvsVar.height, zzvsVar.zzacy));
                    break;
                } else if (adSizeArr[i].getWidth() == zzvsVar.width && adSizeArr[i].getHeight() == zzvsVar.height) {
                    adSize = adSizeArr[i];
                    break;
                } else {
                    i++;
                }
            }
            mediationBannerAdapter.requestBannerAd(zzaolVar, activity, zzdk, adSize, zzaox.zza(zzvlVar, zzc(zzvlVar)), this.zzdod);
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvlVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvlVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzb(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzc(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final IObjectWrapper zzuu() throws RemoteException {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return ObjectWrapper.wrap(((MediationBannerAdapter) mediationAdapter).getBannerView());
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanr zzuv() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzans zzuw() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzux() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzuy() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean zzuz() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzafn zzva() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanx zzvb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvd() {
        return null;
    }
}
