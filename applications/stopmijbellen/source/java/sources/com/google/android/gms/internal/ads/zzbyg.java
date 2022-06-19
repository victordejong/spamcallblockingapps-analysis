package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.p012v4.media.C0082b;
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
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyg.class */
public final class zzbyg extends zzbxj {
    private final Object zza;
    private zzbyi zzb;
    private zzcer zzc;
    private IObjectWrapper zzd;
    private View zze;
    private MediationInterstitialAd zzf;
    private UnifiedNativeAdMapper zzg;
    private MediationRewardedAd zzh;
    private MediationInterscrollerAd zzi;
    private final String zzj = "";

    public zzbyg(Adapter adapter) {
        this.zza = adapter;
    }

    public zzbyg(MediationAdapter mediationAdapter) {
        this.zza = mediationAdapter;
    }

    private final Bundle zzR(zzbfd zzbfdVar) {
        Bundle bundle;
        Bundle bundle2 = zzbfdVar.zzm;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.zza.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private final Bundle zzS(String str, zzbfd zzbfdVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzciz.zze(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
                if (zzbfdVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzbfdVar.zzg);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    private static final boolean zzT(zzbfd zzbfdVar) {
        if (!zzbfdVar.zzf) {
            zzbgo.zzb();
            return zzcis.zzm();
        }
        return true;
    }

    private static final String zzU(String str, zzbfd zzbfdVar) {
        String str2;
        String str3 = zzbfdVar.zzu;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzA(zzbfd zzbfdVar, String str, String str2) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzz(this.zzd, zzbfdVar, str, new zzbyj((Adapter) obj, this.zzc));
            return;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzB(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzciz.zze("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.zza).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzS(str, zzbfdVar, null), zzR(zzbfdVar), zzT(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzU(str, zzbfdVar), ""), new zzbyf(this, zzbxnVar));
                return;
            } catch (Exception e) {
                zzciz.zzh("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzC(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.zza;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzD() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onPause();
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzE() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onResume();
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzF(boolean z) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                zzciz.zzh("", th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zze(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzG() throws RemoteException {
        if (this.zza instanceof MediationInterstitialAdapter) {
            zzciz.zze("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zza).showInterstitial();
                return;
            } catch (Throwable th) {
                throw C1676a.m4792e("", th);
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzH(IObjectWrapper iObjectWrapper) throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !(obj instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C0082b.m8749m(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzciz.zzj(sb.toString());
            throw new RemoteException();
        } else if (obj instanceof MediationInterstitialAdapter) {
            zzG();
        } else {
            zzciz.zze("Show interstitial ad from adapter.");
            MediationInterstitialAd mediationInterstitialAd = this.zzf;
            if (mediationInterstitialAd != null) {
                mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            } else {
                zzciz.zzg("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzI(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzciz.zze("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.zzh;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                return;
            } else {
                zzciz.zzg("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzJ() throws RemoteException {
        if (this.zza instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzh;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.zzd));
                return;
            } else {
                zzciz.zzg("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final boolean zzK() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final boolean zzL() throws RemoteException {
        if (this.zza instanceof Adapter) {
            return this.zzc != null;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxs zzM() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxt zzN() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zze() {
        Object obj = this.zza;
        if (!(obj instanceof zzcqk)) {
            String canonicalName = zzcqk.class.getCanonicalName();
            String canonicalName2 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzciz.zzj(sb.toString());
            return new Bundle();
        }
        return ((zzcqk) obj).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zzf() {
        Object obj = this.zza;
        if (!(obj instanceof zzcql)) {
            String canonicalName = zzcql.class.getCanonicalName();
            String canonicalName2 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzciz.zzj(sb.toString());
            return new Bundle();
        }
        return ((zzcql) obj).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zzg() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbiz zzh() {
        Object obj = this.zza;
        if (obj instanceof zzb) {
            try {
                return ((zzb) obj).getVideoController();
            } catch (Throwable th) {
                zzciz.zzh("", th);
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbpc zzi() {
        zzbyi zzbyiVar = this.zzb;
        if (zzbyiVar != null) {
            NativeCustomTemplateAd zza = zzbyiVar.zza();
            if (!(zza instanceof zzbpd)) {
                return null;
            }
            return ((zzbpd) zza).zza();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxq zzj() {
        MediationInterscrollerAd mediationInterscrollerAd = this.zzi;
        if (mediationInterscrollerAd != null) {
            return new zzbyh(mediationInterscrollerAd);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxw zzk() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        UnifiedNativeAdMapper zzb;
        Object obj = this.zza;
        if (!(obj instanceof MediationNativeAdapter)) {
            if ((obj instanceof Adapter) && (unifiedNativeAdMapper = this.zzg) != null) {
                return new zzbyz(unifiedNativeAdMapper);
            }
            return null;
        }
        zzbyi zzbyiVar = this.zzb;
        if (zzbyiVar != null && (zzb = zzbyiVar.zzb()) != null) {
            return new zzbyz(zzb);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzcab zzl() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzcab.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzcab zzm() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzcab.zza(((Adapter) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final IObjectWrapper zzn() throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                throw C1676a.m4792e("", th);
            }
        } else if (obj instanceof Adapter) {
            return ObjectWrapper.wrap(this.zze);
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C0082b.m8749m(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzciz.zzj(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzo() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onDestroy();
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzp(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzcer zzcerVar, String str2) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            this.zzd = iObjectWrapper;
            this.zzc = zzcerVar;
            zzcerVar.zzl(ObjectWrapper.wrap(obj));
            return;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzq(IObjectWrapper iObjectWrapper, zzbtr zzbtrVar, List<zzbtx> list) throws RemoteException {
        boolean z;
        if (this.zza instanceof Adapter) {
            zzbyb zzbybVar = new zzbyb(this, zzbtrVar);
            ArrayList arrayList = new ArrayList();
            for (zzbtx zzbtxVar : list) {
                String str = zzbtxVar.zza;
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
                    arrayList.add(new MediationConfiguration(adFormat, zzbtxVar.zzb));
                }
            }
            ((Adapter) this.zza).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbybVar, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzr(IObjectWrapper iObjectWrapper, zzcer zzcerVar, List<String> list) throws RemoteException {
        zzciz.zzj("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzs(zzbfd zzbfdVar, String str) throws RemoteException {
        zzA(zzbfdVar, str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzt(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        zzu(iObjectWrapper, zzbfiVar, zzbfdVar, str, null, zzbxnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzu(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        RemoteException m4792e;
        Object obj = this.zza;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C0082b.m8749m(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzciz.zzj(sb.toString());
            throw new RemoteException();
        }
        zzciz.zze("Requesting banner ad from adapter.");
        AdSize zzd = zzbfiVar.zzn ? zza.zzd(zzbfiVar.zze, zzbfiVar.zzb) : zza.zzc(zzbfiVar.zze, zzbfiVar.zzb, zzbfiVar.zza);
        Object obj2 = this.zza;
        if (!(obj2 instanceof MediationBannerAdapter)) {
            if (!(obj2 instanceof Adapter)) {
                return;
            }
            try {
                ((Adapter) obj2).loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzS(str, zzbfdVar, str2), zzR(zzbfdVar), zzT(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzU(str, zzbfdVar), zzd, this.zzj), new zzbyc(this, zzbxnVar));
                return;
            } finally {
            }
        }
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
            List<String> list = zzbfdVar.zze;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j = zzbfdVar.zzb;
            zzbxz zzbxzVar = new zzbxz(j == -1 ? null : new Date(j), zzbfdVar.zzd, hashSet, zzbfdVar.zzk, zzT(zzbfdVar), zzbfdVar.zzg, zzbfdVar.zzr, zzbfdVar.zzt, zzU(str, zzbfdVar));
            Bundle bundle = zzbfdVar.zzm;
            mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzbyi(zzbxnVar), zzS(str, zzbfdVar, str2), zzd, zzbxzVar, bundle != null ? bundle.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzv(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzciz.zze("Requesting interscroller ad from adapter.");
            try {
                Adapter adapter = (Adapter) this.zza;
                adapter.loadInterscrollerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzS(str, zzbfdVar, str2), zzR(zzbfdVar), zzT(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzU(str, zzbfdVar), zza.zze(zzbfiVar.zze, zzbfiVar.zzb), ""), new zzbya(this, zzbxnVar, adapter));
                return;
            } catch (Exception e) {
                zzciz.zzh("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzw(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        zzx(iObjectWrapper, zzbfdVar, str, null, zzbxnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzx(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        RemoteException m4792e;
        Object obj = this.zza;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C0082b.m8749m(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzciz.zzj(sb.toString());
            throw new RemoteException();
        }
        zzciz.zze("Requesting interstitial ad from adapter.");
        Object obj2 = this.zza;
        if (!(obj2 instanceof MediationInterstitialAdapter)) {
            if (!(obj2 instanceof Adapter)) {
                return;
            }
            try {
                ((Adapter) obj2).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzS(str, zzbfdVar, str2), zzR(zzbfdVar), zzT(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzU(str, zzbfdVar), this.zzj), new zzbyd(this, zzbxnVar));
                return;
            } finally {
            }
        }
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
            List<String> list = zzbfdVar.zze;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j = zzbfdVar.zzb;
            zzbxz zzbxzVar = new zzbxz(j == -1 ? null : new Date(j), zzbfdVar.zzd, hashSet, zzbfdVar.zzk, zzT(zzbfdVar), zzbfdVar.zzg, zzbfdVar.zzr, zzbfdVar.zzt, zzU(str, zzbfdVar));
            Bundle bundle = zzbfdVar.zzm;
            mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzbyi(zzbxnVar), zzS(str, zzbfdVar, str2), zzbxzVar, bundle != null ? bundle.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzy(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar, zzbnw zzbnwVar, List<String> list) throws RemoteException {
        RemoteException m4792e;
        Object obj = this.zza;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zza.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(canonicalName).length(), 26, String.valueOf(canonicalName2).length(), String.valueOf(canonicalName3).length()));
            C0082b.m8749m(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzciz.zzj(sb.toString());
            throw new RemoteException();
        }
        zzciz.zze("Requesting native ad from adapter.");
        Object obj2 = this.zza;
        if (!(obj2 instanceof MediationNativeAdapter)) {
            if (!(obj2 instanceof Adapter)) {
                return;
            }
            try {
                ((Adapter) obj2).loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzS(str, zzbfdVar, str2), zzR(zzbfdVar), zzT(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzU(str, zzbfdVar), this.zzj, zzbnwVar), new zzbye(this, zzbxnVar));
                return;
            } finally {
            }
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
            List<String> list2 = zzbfdVar.zze;
            HashSet hashSet = list2 != null ? new HashSet(list2) : null;
            long j = zzbfdVar.zzb;
            zzbyk zzbykVar = new zzbyk(j == -1 ? null : new Date(j), zzbfdVar.zzd, hashSet, zzbfdVar.zzk, zzT(zzbfdVar), zzbfdVar.zzg, zzbnwVar, list, zzbfdVar.zzr, zzbfdVar.zzt, zzU(str, zzbfdVar));
            Bundle bundle = zzbfdVar.zzm;
            Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.zzb = new zzbyi(zzbxnVar);
            mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.zzb, zzS(str, zzbfdVar, str2), zzbykVar, bundle2);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzz(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        if (this.zza instanceof Adapter) {
            zzciz.zze("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.zza).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzS(str, zzbfdVar, null), zzR(zzbfdVar), zzT(zzbfdVar), zzbfdVar.zzk, zzbfdVar.zzg, zzbfdVar.zzt, zzU(str, zzbfdVar), ""), new zzbyf(this, zzbxnVar));
                return;
            } catch (Exception e) {
                zzciz.zzh("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zza.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzciz.zzj(sb.toString());
        throw new RemoteException();
    }
}
