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
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
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
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.mopub.common.AdType;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nn.class */
public final class nn extends mq {

    /* renamed from: a  reason: collision with root package name */
    private final Object f28223a;

    /* renamed from: b  reason: collision with root package name */
    private nv f28224b;

    /* renamed from: c  reason: collision with root package name */
    private uf f28225c;

    /* renamed from: d  reason: collision with root package name */
    private b f28226d;
    private View e;
    private MediationInterstitialAd f;
    private UnifiedNativeAdMapper g;
    private MediationRewardedAd h;
    private MediationInterscrollerAd i;
    private String j = "";

    public nn(Adapter adapter) {
        this.f28223a = adapter;
    }

    public nn(MediationAdapter mediationAdapter) {
        this.f28223a = mediationAdapter;
    }

    private final Bundle a(String str, zzvq zzvqVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        za.zzdz(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            if (this.f28223a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzvqVar != null) {
                    bundle.putInt(GooglePlayServicesInterstitial.TAG_FOR_CHILD_DIRECTED_KEY, zzvqVar.zzadv);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            za.zzc("", th);
            throw new RemoteException();
        }
    }

    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> a(ms msVar) {
        return new nt(this, msVar);
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
        return (zzvqVar.zzcih == null || (bundle = zzvqVar.zzcih.getBundle(this.f28223a.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final b a() throws RemoteException {
        Object obj = this.f28223a;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return d.a(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return d.a(this.e);
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar) throws RemoteException {
        Context context = (Context) d.a(bVar);
        Object obj = this.f28223a;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, io ioVar, List<zzajw> list) throws RemoteException {
        AdFormat adFormat;
        if (this.f28223a instanceof Adapter) {
            np npVar = new np(this, ioVar);
            ArrayList arrayList = new ArrayList();
            for (zzajw zzajwVar : list) {
                String str = zzajwVar.zzdke;
                str.hashCode();
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
                            c2 = 1;
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
                            c2 = 3;
                            break;
                        }
                        break;
                    case 1911491517:
                        if (str.equals("rewarded_interstitial")) {
                            c2 = 4;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        adFormat = AdFormat.BANNER;
                        break;
                    case 1:
                        adFormat = AdFormat.NATIVE;
                        break;
                    case 2:
                        adFormat = AdFormat.REWARDED;
                        break;
                    case 3:
                        adFormat = AdFormat.INTERSTITIAL;
                        break;
                    case 4:
                        adFormat = AdFormat.REWARDED_INTERSTITIAL;
                        break;
                    default:
                        adFormat = null;
                        break;
                }
                if (adFormat != null) {
                    arrayList.add(new MediationConfiguration(adFormat, zzajwVar.extras));
                }
            }
            ((Adapter) this.f28223a).initialize((Context) d.a(bVar), npVar, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, uf ufVar, List<String> list) throws RemoteException {
        if (this.f28223a instanceof InitializableMediationRewardedVideoAdAdapter) {
            za.zzdz("Initialize rewarded video adapter.");
            try {
                InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f28223a;
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    arrayList.add(a(str, (zzvq) null, (String) null));
                }
                initializableMediationRewardedVideoAdAdapter.initialize((Context) d.a(bVar), new uj(ufVar), arrayList);
            } catch (Throwable th) {
                za.zzd("Could not initialize rewarded video adapter.", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        a(bVar, zzvqVar, str, (String) null, msVar);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, uf ufVar, String str2) throws RemoteException {
        nk nkVar;
        Bundle bundle;
        Object obj = this.f28223a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            za.zzdz("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f28223a;
                Bundle a2 = a(str2, zzvqVar, (String) null);
                if (zzvqVar != null) {
                    nkVar = new nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, a(str2, zzvqVar));
                    bundle = zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                } else {
                    nkVar = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) d.a(bVar), nkVar, str, new uj(ufVar), a2, bundle);
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            this.f28226d = bVar;
            this.f28225c = ufVar;
            ufVar.a(d.a(obj));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f28223a;
        if ((obj instanceof MediationInterstitialAdapter) || (obj instanceof Adapter)) {
            za.zzdz("Requesting interstitial ad from adapter.");
            Object obj2 = this.f28223a;
            if (obj2 instanceof MediationInterstitialAdapter) {
                try {
                    MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
                    mediationInterstitialAdapter.requestInterstitialAd((Context) d.a(bVar), new nv(msVar), a(str, zzvqVar, str2), new nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, a(str, zzvqVar)), zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
                } finally {
                }
            } else if (obj2 instanceof Adapter) {
                try {
                    ((Adapter) obj2).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) d.a(bVar), "", a(str, zzvqVar, str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str, zzvqVar), this.j), new nr(this, msVar));
                } finally {
                }
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, String str2, ms msVar, zzaei zzaeiVar, List<String> list) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f28223a;
        if ((obj instanceof MediationNativeAdapter) || (obj instanceof Adapter)) {
            za.zzdz("Requesting native ad from adapter.");
            Object obj2 = this.f28223a;
            if (obj2 instanceof MediationNativeAdapter) {
                try {
                    MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
                    nz nzVar = new nz(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, a(zzvqVar), zzvqVar.zzadv, zzaeiVar, list, zzvqVar.zzcim, zzvqVar.zzadw, a(str, zzvqVar));
                    Bundle bundle = zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationNativeAdapter.getClass().getName()) : null;
                    this.f28224b = new nv(msVar);
                    mediationNativeAdapter.requestNativeAd((Context) d.a(bVar), this.f28224b, a(str, zzvqVar, str2), nzVar, bundle);
                } finally {
                }
            } else if (obj2 instanceof Adapter) {
                try {
                    ((Adapter) obj2).loadNativeAd(new MediationNativeAdConfiguration((Context) d.a(bVar), "", a(str, zzvqVar, str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str, zzvqVar), this.j, zzaeiVar), new nq(this, msVar));
                } finally {
                }
            }
        } else {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        a(bVar, zzvtVar, zzvqVar, str, null, msVar);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f28223a;
        if ((obj instanceof MediationBannerAdapter) || (obj instanceof Adapter)) {
            za.zzdz("Requesting banner ad from adapter.");
            AdSize zzb = zzvtVar.zzciy ? zza.zzb(zzvtVar.width, zzvtVar.height) : zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd);
            Object obj2 = this.f28223a;
            if (obj2 instanceof MediationBannerAdapter) {
                try {
                    MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
                    mediationBannerAdapter.requestBannerAd((Context) d.a(bVar), new nv(msVar), a(str, zzvqVar, str2), zzb, new nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, a(str, zzvqVar)), zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationBannerAdapter.getClass().getName()) : null);
                } finally {
                }
            } else if (obj2 instanceof Adapter) {
                try {
                    ((Adapter) obj2).loadBannerAd(new MediationBannerAdConfiguration((Context) d.a(bVar), "", a(str, zzvqVar, str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str, zzvqVar), zzb, this.j), new no(this, msVar));
                } finally {
                }
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(zzvq zzvqVar, String str) throws RemoteException {
        a(zzvqVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(zzvq zzvqVar, String str, String str2) throws RemoteException {
        Object obj = this.f28223a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            za.zzdz("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f28223a;
                Bundle bundle = null;
                nk nkVar = new nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, a(str, zzvqVar));
                if (zzvqVar.zzcih != null) {
                    bundle = zzvqVar.zzcih.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                }
                mediationRewardedVideoAdAdapter.loadAd(nkVar, a(str, zzvqVar, str2), bundle);
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            b(this.f28226d, zzvqVar, str, new nu((Adapter) this.f28223a, this.f28225c));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(boolean z) throws RemoteException {
        Object obj = this.f28223a;
        if (!(obj instanceof OnImmersiveModeUpdatedListener)) {
            String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
            String canonicalName2 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            za.zzdz(sb.toString());
            return;
        }
        try {
            ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            za.zzc("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b() throws RemoteException {
        if (this.f28223a instanceof MediationInterstitialAdapter) {
            za.zzdz("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f28223a).showInterstitial();
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(b bVar) throws RemoteException {
        if (this.f28223a instanceof Adapter) {
            za.zzdz("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.h;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) d.a(bVar));
            } else {
                za.zzex("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        if (this.f28223a instanceof Adapter) {
            za.zzdz("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.f28223a).loadRewardedAd(new MediationRewardedAdConfiguration((Context) d.a(bVar), "", a(str, zzvqVar, (String) null), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str, zzvqVar), ""), a(msVar));
            } catch (Exception e) {
                za.zzc("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        if (this.f28223a instanceof Adapter) {
            za.zzdz("Requesting interscroller ad from adapter.");
            try {
                Adapter adapter = (Adapter) this.f28223a;
                adapter.loadInterscrollerAd(new MediationBannerAdConfiguration((Context) d.a(bVar), "", a(str, zzvqVar, str2), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str, zzvqVar), zza.zzc(zzvtVar.width, zzvtVar.height), ""), new nm(this, msVar, adapter));
            } catch (Exception e) {
                za.zzc("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c() throws RemoteException {
        Object obj = this.f28223a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c(b bVar) throws RemoteException {
        Object obj = this.f28223a;
        if (!(obj instanceof Adapter) && !(obj instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        } else if (obj instanceof MediationInterstitialAdapter) {
            b();
        } else {
            za.zzdz("Show interstitial ad from adapter.");
            MediationInterstitialAd mediationInterstitialAd = this.f;
            if (mediationInterstitialAd != null) {
                mediationInterstitialAd.showAd((Context) d.a(bVar));
            } else {
                za.zzex("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c(b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        if (this.f28223a instanceof Adapter) {
            za.zzdz("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.f28223a).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) d.a(bVar), "", a(str, zzvqVar, (String) null), b(zzvqVar), a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, a(str, zzvqVar), ""), a(msVar));
            } catch (Exception e) {
                za.zzc("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void d() throws RemoteException {
        Object obj = this.f28223a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void e() throws RemoteException {
        Object obj = this.f28223a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void f() throws RemoteException {
        Object obj = this.f28223a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            za.zzdz("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.f28223a).showVideo();
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.h;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) d.a(this.f28226d));
            } else {
                za.zzex("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final boolean g() throws RemoteException {
        Object obj = this.f28223a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            za.zzdz("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.f28223a).isInitialized();
            } catch (Throwable th) {
                za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return this.f28225c != null;
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f28223a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nb h() {
        nv nvVar = this.f28224b;
        if (nvVar == null) {
            return null;
        }
        NativeAdMapper nativeAdMapper = nvVar.f28239a;
        if (nativeAdMapper instanceof NativeAppInstallAdMapper) {
            return new nx((NativeAppInstallAdMapper) nativeAdMapper);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nc i() {
        nv nvVar = this.f28224b;
        if (nvVar == null) {
            return null;
        }
        NativeAdMapper nativeAdMapper = nvVar.f28239a;
        if (nativeAdMapper instanceof NativeContentAdMapper) {
            return new nw((NativeContentAdMapper) nativeAdMapper);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle j() {
        Object obj = this.f28223a;
        if (obj instanceof zzbhe) {
            return ((zzbhe) obj).zzvh();
        }
        String canonicalName = zzbhe.class.getCanonicalName();
        String canonicalName2 = this.f28223a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        za.zzez(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle k() {
        Object obj = this.f28223a;
        if (obj instanceof zzbhf) {
            return ((zzbhf) obj).getInterstitialAdapterInfo();
        }
        String canonicalName = zzbhf.class.getCanonicalName();
        String canonicalName2 = this.f28223a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        za.zzez(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final boolean m() {
        return this.f28223a instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final eo n() {
        nv nvVar = this.f28224b;
        if (nvVar == null) {
            return null;
        }
        NativeCustomTemplateAd nativeCustomTemplateAd = nvVar.f28241c;
        if (nativeCustomTemplateAd instanceof et) {
            return ((et) nativeCustomTemplateAd).f27987a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final emk o() {
        Object obj = this.f28223a;
        if (!(obj instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) obj).getVideoController();
        } catch (Throwable th) {
            za.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nh p() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        Object obj = this.f28223a;
        if (obj instanceof MediationNativeAdapter) {
            nv nvVar = this.f28224b;
            if (nvVar == null || (unifiedNativeAdMapper = nvVar.f28240b) == null) {
                return null;
            }
            return new og(unifiedNativeAdMapper);
        } else if (!(obj instanceof Adapter) || this.g == null) {
            return null;
        } else {
            return new og(this.g);
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final zzaqr q() {
        Object obj = this.f28223a;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzaqr.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final zzaqr r() {
        Object obj = this.f28223a;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzaqr.zza(((Adapter) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final mt s() {
        if (this.i != null) {
            return new ns(this.i);
        }
        return null;
    }
}
