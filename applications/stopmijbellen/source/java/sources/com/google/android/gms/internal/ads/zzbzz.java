package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.zzb;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzz.class */
public final class zzbzz extends zzbzn {
    private final RtbAdapter zza;
    private MediationInterstitialAd zzb;
    private MediationRewardedAd zzc;
    private String zzd = "";

    public zzbzz(RtbAdapter rtbAdapter) {
        this.zza = rtbAdapter;
    }

    private final Bundle zzs(zzbfd zzbfdVar) {
        Bundle bundle;
        Bundle bundle2 = zzbfdVar.zzm;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.zza.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private static final Bundle zzt(String str) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzciz.zzj(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            zzciz.zzh("", e);
            throw new RemoteException();
        }
    }

    private static final boolean zzu(zzbfd zzbfdVar) {
        if (!zzbfdVar.zzf) {
            zzbgo.zzb();
            return zzcis.zzm();
        }
        return true;
    }

    private static final String zzv(String str, zzbfd zzbfdVar) {
        String str2;
        String str3 = zzbfdVar.zzu;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final zzbiz zze() {
        RtbAdapter rtbAdapter = this.zza;
        if (rtbAdapter instanceof zzb) {
            try {
                return ((zzb) rtbAdapter).getVideoController();
            } catch (Throwable th) {
                zzciz.zzh("", th);
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final zzcab zzf() throws RemoteException {
        return zzcab.zza(this.zza.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final zzcab zzg() throws RemoteException {
        return zzcab.zza(this.zza.getSDKVersionInfo());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzbfi zzbfiVar, zzbzr zzbzrVar) throws RemoteException {
        boolean z;
        AdFormat adFormat;
        try {
            zzbzx zzbzxVar = new zzbzx(this, zzbzrVar);
            RtbAdapter rtbAdapter = this.zza;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1911491517:
                    if (str.equals("rewarded_interstitial")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
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
            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList, bundle, zza.zzc(zzbfiVar.zze, zzbfiVar.zzb, zzbfiVar.zza)), zzbzxVar);
        } catch (Throwable th) {
            throw C1676a.m4792e("Error generating signals for RTB", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzi(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzc zzbzcVar, zzbxn zzbxnVar, zzbfi zzbfiVar) throws RemoteException {
        try {
            this.zza.loadRtbBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzt(str2), zzs(zzbfdVar), zzu(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzv(str2, zzbfdVar), zza.zzc(zzbfiVar.zze, zzbfiVar.zzb, zzbfiVar.zza), this.zzd), new zzbzt(this, zzbzcVar, zzbxnVar));
        } catch (Throwable th) {
            throw C1676a.m4792e("Adapter failed to render banner ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzj(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzc zzbzcVar, zzbxn zzbxnVar, zzbfi zzbfiVar) throws RemoteException {
        try {
            this.zza.loadRtbInterscrollerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzt(str2), zzs(zzbfdVar), zzu(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzv(str2, zzbfdVar), zza.zzc(zzbfiVar.zze, zzbfiVar.zzb, zzbfiVar.zza), this.zzd), new zzbzu(this, zzbzcVar, zzbxnVar));
        } catch (Throwable th) {
            throw C1676a.m4792e("Adapter failed to render interscroller ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzk(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzf zzbzfVar, zzbxn zzbxnVar) throws RemoteException {
        try {
            this.zza.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzt(str2), zzs(zzbfdVar), zzu(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzv(str2, zzbfdVar), this.zzd), new zzbzv(this, zzbzfVar, zzbxnVar));
        } catch (Throwable th) {
            throw C1676a.m4792e("Adapter failed to render interstitial ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzl(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzi zzbziVar, zzbxn zzbxnVar) throws RemoteException {
        zzm(str, str2, zzbfdVar, iObjectWrapper, zzbziVar, zzbxnVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzm(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzi zzbziVar, zzbxn zzbxnVar, zzbnw zzbnwVar) throws RemoteException {
        try {
            this.zza.loadRtbNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzt(str2), zzs(zzbfdVar), zzu(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzv(str2, zzbfdVar), this.zzd, zzbnwVar), new zzbzw(this, zzbziVar, zzbxnVar));
        } catch (Throwable th) {
            throw C1676a.m4792e("Adapter failed to render native ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzn(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzl zzbzlVar, zzbxn zzbxnVar) throws RemoteException {
        try {
            this.zza.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzt(str2), zzs(zzbfdVar), zzu(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzv(str2, zzbfdVar), this.zzd), new zzbzy(this, zzbzlVar, zzbxnVar));
        } catch (Throwable th) {
            throw C1676a.m4792e("Adapter failed to render rewarded interstitial ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzo(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzl zzbzlVar, zzbxn zzbxnVar) throws RemoteException {
        try {
            this.zza.loadRtbRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzt(str2), zzs(zzbfdVar), zzu(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzv(str2, zzbfdVar), this.zzd), new zzbzy(this, zzbzlVar, zzbxnVar));
        } catch (Throwable th) {
            throw C1676a.m4792e("Adapter failed to render rewarded ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzp(String str) {
        this.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final boolean zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.zzb;
        if (mediationInterstitialAd != null) {
            try {
                mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                return true;
            } catch (Throwable th) {
                zzciz.zzh("", th);
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.zzc;
        if (mediationRewardedAd != null) {
            try {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                return true;
            } catch (Throwable th) {
                zzciz.zzh("", th);
                return true;
            }
        }
        return false;
    }
}
