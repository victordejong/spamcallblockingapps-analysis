package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zzb;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwf.class */
public final class zzbwf extends zzbvi {
    private final Object zza;
    private zzbwh zzb;
    private zzcck zzc;
    private IObjectWrapper zzd;
    private View zze;
    private MediationInterstitialAd zzf;
    private UnifiedNativeAdMapper zzg;
    private MediationRewardedAd zzh;
    private MediationInterscrollerAd zzi;
    private final String zzj = "";

    public zzbwf(Adapter adapter) {
        this.zza = adapter;
    }

    public zzbwf(MediationAdapter mediationAdapter) {
        this.zza = mediationAdapter;
    }

    private final Bundle zzR(String str, zzbdg zzbdgVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzcgt.zzd(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            if (this.zza instanceof AdMobAdapter) {
                bundle.putString(AdMobAdapter.AD_JSON_PARAMETER, str2);
                if (zzbdgVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzbdgVar.zzg);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            throw C22128a.m8632d1("", th);
        }
    }

    private final Bundle zzS(zzbdg zzbdgVar) {
        Bundle bundle;
        Bundle bundle2 = zzbdgVar.zzm;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.zza.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private static final boolean zzT(zzbdg zzbdgVar) {
        if (!zzbdgVar.zzf) {
            zzber.zza();
            return zzcgm.zzm();
        }
        return true;
    }

    private static final String zzU(String str, zzbdg zzbdgVar) {
        String str2;
        String str3 = zzbdgVar.zzu;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzA(boolean z) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                zzcgt.zzg("", th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzd(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbhc zzB() {
        Object obj = this.zza;
        if (obj instanceof zzb) {
            try {
                return ((zzb) obj).getVideoController();
            } catch (Throwable th) {
                zzcgt.zzg("", th);
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvv zzC() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        UnifiedNativeAdMapper zzd;
        Object obj = this.zza;
        if (!(obj instanceof MediationNativeAdapter)) {
            if ((obj instanceof Adapter) && (unifiedNativeAdMapper = this.zzg) != null) {
                return new zzbwy(unifiedNativeAdMapper);
            }
            return null;
        }
        zzbwh zzbwhVar = this.zzb;
        if (zzbwhVar != null && (zzd = zzbwhVar.zzd()) != null) {
            return new zzbwy(zzd);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzD(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzcgt.zzd("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.zza).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.m38746B1(iObjectWrapper), "", zzR(str, zzbdgVar, null), zzS(zzbdgVar), zzT(zzbdgVar), zzbdgVar.zzk, zzbdgVar.zzg, zzbdgVar.zzt, zzU(str, zzbdgVar), ""), new zzbwe(this, zzbvmVar));
                return;
            } catch (Exception e) {
                zzcgt.zzg("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzE(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzcgt.zzd("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.zzh;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.m38746B1(iObjectWrapper));
                return;
            } else {
                zzcgt.zzf("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzF(IObjectWrapper iObjectWrapper, zzbrp zzbrpVar, List<zzbrv> list) throws RemoteException {
        boolean z;
        if (this.zza instanceof Adapter) {
            zzbwa zzbwaVar = new zzbwa(this, zzbrpVar);
            ArrayList arrayList = new ArrayList();
            for (zzbrv zzbrvVar : list) {
                String str = zzbrvVar.zza;
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
                AdFormat adFormat = z ? !z ? !z ? !z ? !z ? null : AdFormat.NATIVE : AdFormat.REWARDED_INTERSTITIAL : AdFormat.REWARDED : AdFormat.INTERSTITIAL : AdFormat.BANNER;
                if (adFormat != null) {
                    arrayList.add(new MediationConfiguration(adFormat, zzbrvVar.zzb));
                }
            }
            ((Adapter) this.zza).initialize((Context) ObjectWrapper.m38746B1(iObjectWrapper), zzbwaVar, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzG(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzcgt.zzd("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.zza).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.m38746B1(iObjectWrapper), "", zzR(str, zzbdgVar, null), zzS(zzbdgVar), zzT(zzbdgVar), zzbdgVar.zzk, zzbdgVar.zzg, zzbdgVar.zzt, zzU(str, zzbdgVar), ""), new zzbwe(this, zzbvmVar));
                return;
            } catch (Exception e) {
                zzcgt.zzg("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbya zzH() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzbya.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbya zzI() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzbya.zza(((Adapter) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzJ(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzcgt.zzd("Requesting interscroller ad from adapter.");
            try {
                Adapter adapter = (Adapter) this.zza;
                adapter.loadInterscrollerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.m38746B1(iObjectWrapper), "", zzR(str, zzbdgVar, str2), zzS(zzbdgVar), zzT(zzbdgVar), zzbdgVar.zzk, zzbdgVar.zzg, zzbdgVar.zzt, zzU(str, zzbdgVar), zza.zzc(zzbdlVar.zze, zzbdlVar.zzb), ""), new zzbvz(this, zzbvmVar, adapter));
                return;
            } catch (Exception e) {
                zzcgt.zzg("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvp zzK() {
        MediationInterscrollerAd mediationInterscrollerAd = this.zzi;
        if (mediationInterscrollerAd != null) {
            return new zzbwg(mediationInterscrollerAd);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzL(IObjectWrapper iObjectWrapper) throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !(obj instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C22128a.m8666T0(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzcgt.zzi(sb.toString());
            throw new RemoteException();
        } else if (obj instanceof MediationInterstitialAdapter) {
            zzh();
        } else {
            zzcgt.zzd("Show interstitial ad from adapter.");
            MediationInterstitialAd mediationInterstitialAd = this.zzf;
            if (mediationInterstitialAd != null) {
                mediationInterstitialAd.showAd((Context) ObjectWrapper.m38746B1(iObjectWrapper));
            } else {
                zzcgt.zzf("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvr zzM() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvs zzN() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zze(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        zzj(iObjectWrapper, zzbdlVar, zzbdgVar, str, null, zzbvmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final IObjectWrapper zzf() throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return new ObjectWrapper(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                throw C22128a.m8632d1("", th);
            }
        } else if (obj instanceof Adapter) {
            return new ObjectWrapper(this.zze);
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C22128a.m8666T0(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzcgt.zzi(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzg(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        zzk(iObjectWrapper, zzbdgVar, str, null, zzbvmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzh() throws RemoteException {
        if (this.zza instanceof MediationInterstitialAdapter) {
            zzcgt.zzd("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zza).showInterstitial();
                return;
            } catch (Throwable th) {
                throw C22128a.m8632d1("", th);
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzi() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onDestroy();
        } catch (Throwable th) {
            throw C22128a.m8632d1("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzj(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar) throws RemoteException {
        RemoteException m8632d1;
        Object obj = this.zza;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C22128a.m8666T0(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzcgt.zzi(sb.toString());
            throw new RemoteException();
        }
        zzcgt.zzd("Requesting banner ad from adapter.");
        AdSize zzb = zzbdlVar.zzn ? zza.zzb(zzbdlVar.zze, zzbdlVar.zzb) : zza.zza(zzbdlVar.zze, zzbdlVar.zzb, zzbdlVar.zza);
        Object obj2 = this.zza;
        if (!(obj2 instanceof MediationBannerAdapter)) {
            if (!(obj2 instanceof Adapter)) {
                return;
            }
            try {
                ((Adapter) obj2).loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.m38746B1(iObjectWrapper), "", zzR(str, zzbdgVar, str2), zzS(zzbdgVar), zzT(zzbdgVar), zzbdgVar.zzk, zzbdgVar.zzg, zzbdgVar.zzt, zzU(str, zzbdgVar), zzb, this.zzj), new zzbwb(this, zzbvmVar));
                return;
            } finally {
            }
        }
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
            List<String> list = zzbdgVar.zze;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j = zzbdgVar.zzb;
            zzbvy zzbvyVar = new zzbvy(j == -1 ? null : new Date(j), zzbdgVar.zzd, hashSet, zzbdgVar.zzk, zzT(zzbdgVar), zzbdgVar.zzg, zzbdgVar.zzr, zzbdgVar.zzt, zzU(str, zzbdgVar));
            Bundle bundle = zzbdgVar.zzm;
            mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.m38746B1(iObjectWrapper), new zzbwh(zzbvmVar), zzR(str, zzbdgVar, str2), zzb, zzbvyVar, bundle != null ? bundle.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzk(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar) throws RemoteException {
        RemoteException m8632d1;
        Object obj = this.zza;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C22128a.m8666T0(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzcgt.zzi(sb.toString());
            throw new RemoteException();
        }
        zzcgt.zzd("Requesting interstitial ad from adapter.");
        Object obj2 = this.zza;
        if (!(obj2 instanceof MediationInterstitialAdapter)) {
            if (!(obj2 instanceof Adapter)) {
                return;
            }
            try {
                ((Adapter) obj2).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.m38746B1(iObjectWrapper), "", zzR(str, zzbdgVar, str2), zzS(zzbdgVar), zzT(zzbdgVar), zzbdgVar.zzk, zzbdgVar.zzg, zzbdgVar.zzt, zzU(str, zzbdgVar), this.zzj), new zzbwc(this, zzbvmVar));
                return;
            } finally {
            }
        }
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
            List<String> list = zzbdgVar.zze;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j = zzbdgVar.zzb;
            zzbvy zzbvyVar = new zzbvy(j == -1 ? null : new Date(j), zzbdgVar.zzd, hashSet, zzbdgVar.zzk, zzT(zzbdgVar), zzbdgVar.zzg, zzbdgVar.zzr, zzbdgVar.zzt, zzU(str, zzbdgVar));
            Bundle bundle = zzbdgVar.zzm;
            mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.m38746B1(iObjectWrapper), new zzbwh(zzbvmVar), zzR(str, zzbdgVar, str2), zzbvyVar, bundle != null ? bundle.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzl() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onPause();
        } catch (Throwable th) {
            throw C22128a.m8632d1("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzm() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onResume();
        } catch (Throwable th) {
            throw C22128a.m8632d1("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzn(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzcck zzcckVar, String str2) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            this.zzd = iObjectWrapper;
            this.zzc = zzcckVar;
            zzcckVar.zze(new ObjectWrapper(obj));
            return;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzo(zzbdg zzbdgVar, String str) throws RemoteException {
        zzv(zzbdgVar, str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzp() throws RemoteException {
        if (this.zza instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzh;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.m38746B1(this.zzd));
                return;
            } else {
                zzcgt.zzf("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final boolean zzq() throws RemoteException {
        if (this.zza instanceof Adapter) {
            return this.zzc != null;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzr(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar, zzblv zzblvVar, List<String> list) throws RemoteException {
        RemoteException m8632d1;
        Object obj = this.zza;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C22128a.m8666T0(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzcgt.zzi(sb.toString());
            throw new RemoteException();
        }
        zzcgt.zzd("Requesting native ad from adapter.");
        Object obj2 = this.zza;
        if (!(obj2 instanceof MediationNativeAdapter)) {
            if (!(obj2 instanceof Adapter)) {
                return;
            }
            try {
                ((Adapter) obj2).loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.m38746B1(iObjectWrapper), "", zzR(str, zzbdgVar, str2), zzS(zzbdgVar), zzT(zzbdgVar), zzbdgVar.zzk, zzbdgVar.zzg, zzbdgVar.zzt, zzU(str, zzbdgVar), this.zzj, zzblvVar), new zzbwd(this, zzbvmVar));
                return;
            } finally {
            }
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
            List<String> list2 = zzbdgVar.zze;
            HashSet hashSet = list2 != null ? new HashSet(list2) : null;
            long j = zzbdgVar.zzb;
            zzbwj zzbwjVar = new zzbwj(j == -1 ? null : new Date(j), zzbdgVar.zzd, hashSet, zzbdgVar.zzk, zzT(zzbdgVar), zzbdgVar.zzg, zzblvVar, list, zzbdgVar.zzr, zzbdgVar.zzt, zzU(str, zzbdgVar));
            Bundle bundle = zzbdgVar.zzm;
            Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.zzb = new zzbwh(zzbvmVar);
            mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.m38746B1(iObjectWrapper), this.zzb, zzR(str, zzbdgVar, str2), zzbwjVar, bundle2);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final Bundle zzs() {
        Object obj = this.zza;
        if (!(obj instanceof zzcoh)) {
            String canonicalName = zzcoh.class.getCanonicalName();
            String canonicalName2 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzcgt.zzi(sb.toString());
            return new Bundle();
        }
        return ((zzcoh) obj).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final Bundle zzt() {
        Object obj = this.zza;
        if (!(obj instanceof zzcoi)) {
            String canonicalName = zzcoi.class.getCanonicalName();
            String canonicalName2 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzcgt.zzi(sb.toString());
            return new Bundle();
        }
        return ((zzcoi) obj).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final Bundle zzu() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzv(zzbdg zzbdgVar, String str, String str2) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzD(this.zzd, zzbdgVar, str, new zzbwi((Adapter) obj, this.zzc));
            return;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzcgt.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        Object obj = this.zza;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final boolean zzx() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzy(IObjectWrapper iObjectWrapper, zzcck zzcckVar, List<String> list) throws RemoteException {
        zzcgt.zzi("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbnb zzz() {
        zzbwh zzbwhVar = this.zzb;
        if (zzbwhVar != null) {
            NativeCustomTemplateAd zze = zzbwhVar.zze();
            if (!(zze instanceof zzbnc)) {
                return null;
            }
            return ((zzbnc) zze).zza();
        }
        return null;
    }
}
