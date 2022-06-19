package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.facebook.internal.AnalyticsEvents;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoa.class */
public final class zzaoa extends zzani {
    private final Object zzdnl;
    private zzaof zzdnm;
    private zzavf zzdnn;
    private IObjectWrapper zzdno;
    private MediationRewardedAd zzdnp;

    public zzaoa(Adapter adapter) {
        this.zzdnl = adapter;
    }

    public zzaoa(MediationAdapter mediationAdapter) {
        this.zzdnl = mediationAdapter;
    }

    private final Bundle zza(String str, zzvl zzvlVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzazk.zzdy(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            if (this.zzdnl instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzvlVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzvlVar.zzado);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> zza(zzank zzankVar) {
        return new zzaoc(this, zzankVar);
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
        return (zzvlVar.zzchu == null || (bundle = zzvlVar.zzchu.getBundle(this.zzdnl.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void destroy() throws RemoteException {
        Object obj = this.zzdnl;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onDestroy();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.zzdnl;
        if (!(obj instanceof zzbga)) {
            String canonicalName = zzbga.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            return new Bundle();
        }
        return ((zzbga) obj).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzzc getVideoController() {
        Object obj = this.zzdnl;
        if (!(obj instanceof zza)) {
            return null;
        }
        try {
            return ((zza) obj).getVideoController();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean isInitialized() throws RemoteException {
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.zzdnl).isInitialized();
            } catch (Throwable th) {
                zzazk.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return this.zzdnn != null;
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void pause() throws RemoteException {
        Object obj = this.zzdnl;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onPause();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void resume() throws RemoteException {
        Object obj = this.zzdnl;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onResume();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Object obj = this.zzdnl;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                zzazk.zzc("", th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzdy(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showInterstitial() throws RemoteException {
        if (this.zzdnl instanceof MediationInterstitialAdapter) {
            zzazk.zzdy("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzdnl).showInterstitial();
                return;
            } catch (Throwable th) {
                zzazk.zzc("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzex(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showVideo() throws RemoteException {
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.zzdnl).showVideo();
            } catch (Throwable th) {
                zzazk.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzdnp;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.zzdno));
            } else {
                zzazk.zzev("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzajj zzajjVar, List<zzajr> list) throws RemoteException {
        AdFormat adFormat;
        if (this.zzdnl instanceof Adapter) {
            zzaod zzaodVar = new zzaod(this, zzajjVar);
            ArrayList arrayList = new ArrayList();
            for (zzajr zzajrVar : list) {
                String str = zzajrVar.zzdiy;
                str.hashCode();
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
                switch (z) {
                    case false:
                        adFormat = AdFormat.BANNER;
                        break;
                    case true:
                        adFormat = AdFormat.NATIVE;
                        break;
                    case true:
                        adFormat = AdFormat.REWARDED;
                        break;
                    case true:
                        adFormat = AdFormat.INTERSTITIAL;
                        break;
                    case true:
                        adFormat = AdFormat.REWARDED_INTERSTITIAL;
                        break;
                    default:
                        adFormat = null;
                        break;
                }
                if (adFormat != null) {
                    arrayList.add(new MediationConfiguration(adFormat, zzajrVar.extras));
                }
            }
            ((Adapter) this.zzdnl).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzaodVar, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzavf zzavfVar, List<String> list) throws RemoteException {
        if (!(this.zzdnl instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
        zzazk.zzdy("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.zzdnl;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                arrayList.add(zza(str, (zzvl) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzavg(zzavfVar), arrayList);
        } catch (Throwable th) {
            zzazk.zzd("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
        zza(iObjectWrapper, zzvlVar, str, (String) null, zzankVar);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzavf zzavfVar, String str2) throws RemoteException {
        zzaob zzaobVar;
        Bundle bundle;
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdnl;
                Bundle zza = zza(str2, zzvlVar, (String) null);
                if (zzvlVar != null) {
                    zzaob zzaobVar2 = new zzaob(zzvlVar.zzchn == -1 ? null : new Date(zzvlVar.zzchn), zzvlVar.zzcho, zzvlVar.zzchp != null ? new HashSet(zzvlVar.zzchp) : null, zzvlVar.zznb, zzc(zzvlVar), zzvlVar.zzado, zzvlVar.zzchz, zzvlVar.zzadp, zza(str2, zzvlVar));
                    bundle = zzvlVar.zzchu != null ? zzvlVar.zzchu.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                    zzaobVar = zzaobVar2;
                } else {
                    zzaobVar = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzaobVar, str, new zzavg(zzavfVar), zza, bundle);
            } catch (Throwable th) {
                zzazk.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            this.zzdno = iObjectWrapper;
            this.zzdnn = zzavfVar;
            zzavfVar.zzaf(ObjectWrapper.wrap(obj));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar) throws RemoteException {
        if (!(this.zzdnl instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
        zzazk.zzdy("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzdnl;
            zzaob zzaobVar = new zzaob(zzvlVar.zzchn == -1 ? null : new Date(zzvlVar.zzchn), zzvlVar.zzcho, zzvlVar.zzchp != null ? new HashSet(zzvlVar.zzchp) : null, zzvlVar.zznb, zzc(zzvlVar), zzvlVar.zzado, zzvlVar.zzchz, zzvlVar.zzadp, zza(str, zzvlVar));
            Bundle bundle = null;
            if (zzvlVar.zzchu != null) {
                bundle = zzvlVar.zzchu.getBundle(mediationInterstitialAdapter.getClass().getName());
            }
            mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzaof(zzankVar), zza(str, zzvlVar, str2), zzaobVar, bundle);
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar, zzaeh zzaehVar, List<String> list) throws RemoteException {
        Object obj = this.zzdnl;
        if (!(obj instanceof MediationNativeAdapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
            zzaoj zzaojVar = new zzaoj(zzvlVar.zzchn == -1 ? null : new Date(zzvlVar.zzchn), zzvlVar.zzcho, zzvlVar.zzchp != null ? new HashSet(zzvlVar.zzchp) : null, zzvlVar.zznb, zzc(zzvlVar), zzvlVar.zzado, zzaehVar, list, zzvlVar.zzchz, zzvlVar.zzadp, zza(str, zzvlVar));
            Bundle bundle = null;
            if (zzvlVar.zzchu != null) {
                bundle = zzvlVar.zzchu.getBundle(mediationNativeAdapter.getClass().getName());
            }
            this.zzdnm = new zzaof(zzankVar);
            mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.zzdnm, zza(str, zzvlVar, str2), zzaojVar, bundle);
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
        zza(iObjectWrapper, zzvsVar, zzvlVar, str, null, zzankVar);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, String str2, zzank zzankVar) throws RemoteException {
        if (!(this.zzdnl instanceof MediationBannerAdapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
        zzazk.zzdy("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzdnl;
            zzaob zzaobVar = new zzaob(zzvlVar.zzchn == -1 ? null : new Date(zzvlVar.zzchn), zzvlVar.zzcho, zzvlVar.zzchp != null ? new HashSet(zzvlVar.zzchp) : null, zzvlVar.zznb, zzc(zzvlVar), zzvlVar.zzado, zzvlVar.zzchz, zzvlVar.zzadp, zza(str, zzvlVar));
            Bundle bundle = null;
            if (zzvlVar.zzchu != null) {
                bundle = zzvlVar.zzchu.getBundle(mediationBannerAdapter.getClass().getName());
            }
            mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzaof(zzankVar), zza(str, zzvlVar, str2), zzvsVar.zzcin ? com.google.android.gms.ads.zza.zza(zzvsVar.width, zzvsVar.height) : com.google.android.gms.ads.zza.zza(zzvsVar.width, zzvsVar.height, zzvsVar.zzacy), zzaobVar, bundle);
        } catch (Throwable th) {
            zzazk.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvlVar, String str) throws RemoteException {
        zza(zzvlVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvlVar, String str, String str2) throws RemoteException {
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdnl;
                zzaob zzaobVar = new zzaob(zzvlVar.zzchn == -1 ? null : new Date(zzvlVar.zzchn), zzvlVar.zzcho, zzvlVar.zzchp != null ? new HashSet(zzvlVar.zzchp) : null, zzvlVar.zznb, zzc(zzvlVar), zzvlVar.zzado, zzvlVar.zzchz, zzvlVar.zzadp, zza(str, zzvlVar));
                Bundle bundle = null;
                if (zzvlVar.zzchu != null) {
                    bundle = zzvlVar.zzchu.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                }
                mediationRewardedVideoAdAdapter.loadAd(zzaobVar, zza(str, zzvlVar, str2), bundle);
            } catch (Throwable th) {
                zzazk.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            zzb(this.zzdno, zzvlVar, str, new zzaoe((Adapter) this.zzdnl, this.zzdnn));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzb(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
        if (this.zzdnl instanceof Adapter) {
            zzazk.zzdy("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.zzdnl).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zza(str, zzvlVar, (String) null), zzd(zzvlVar), zzc(zzvlVar), zzvlVar.zznb, zzvlVar.zzado, zzvlVar.zzadp, zza(str, zzvlVar), ""), zza(zzankVar));
                return;
            } catch (Exception e) {
                zzazk.zzc("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzex(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzc(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException {
        if (this.zzdnl instanceof Adapter) {
            zzazk.zzdy("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.zzdnl).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zza(str, zzvlVar, (String) null), zzd(zzvlVar), zzc(zzvlVar), zzvlVar.zznb, zzvlVar.zzado, zzvlVar.zzadp, zza(str, zzvlVar), ""), zza(zzankVar));
                return;
            } catch (Exception e) {
                zzazk.zzc("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzex(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.zzdnl;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzdnl instanceof Adapter) {
            zzazk.zzdy("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.zzdnp;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                return;
            } else {
                zzazk.zzev("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzex(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final IObjectWrapper zzuu() throws RemoteException {
        Object obj = this.zzdnl;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                zzazk.zzc("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationBannerAdapter.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzex(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanr zzuv() {
        NativeAdMapper zzvi = this.zzdnm.zzvi();
        if (zzvi instanceof NativeAppInstallAdMapper) {
            return new zzaoh((NativeAppInstallAdMapper) zzvi);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzans zzuw() {
        NativeAdMapper zzvi = this.zzdnm.zzvi();
        if (zzvi instanceof NativeContentAdMapper) {
            return new zzaog((NativeContentAdMapper) zzvi);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzux() {
        Object obj = this.zzdnl;
        if (!(obj instanceof zzbfz)) {
            String canonicalName = zzbfz.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            return new Bundle();
        }
        return ((zzbfz) obj).zzux();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzuy() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean zzuz() {
        return this.zzdnl instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzafn zzva() {
        NativeCustomTemplateAd zzvk = this.zzdnm.zzvk();
        if (zzvk instanceof zzafo) {
            return ((zzafo) zzvk).zztv();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanx zzvb() {
        UnifiedNativeAdMapper zzvj = this.zzdnm.zzvj();
        if (zzvj != null) {
            return new zzaoz(zzvj);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvc() {
        Object obj = this.zzdnl;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapy.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvd() {
        Object obj = this.zzdnl;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapy.zza(((Adapter) obj).getSDKVersionInfo());
    }
}
