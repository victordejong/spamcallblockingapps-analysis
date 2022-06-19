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
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
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
/* renamed from: com.google.android.gms.internal.ads.nn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nn.class */
public final class BinderC12775nn extends AbstractBinderC12750mq {

    /* renamed from: a */
    private final Object f49581a;

    /* renamed from: b */
    private C12783nv f49582b;

    /* renamed from: c */
    private AbstractC12956uf f49583c;

    /* renamed from: d */
    private AbstractC12126b f49584d;

    /* renamed from: e */
    private View f49585e;

    /* renamed from: f */
    private MediationInterstitialAd f49586f;

    /* renamed from: g */
    private UnifiedNativeAdMapper f49587g;

    /* renamed from: h */
    private MediationRewardedAd f49588h;

    /* renamed from: i */
    private MediationInterscrollerAd f49589i;

    /* renamed from: j */
    private String f49590j = "";

    public BinderC12775nn(Adapter adapter) {
        this.f49581a = adapter;
    }

    public BinderC12775nn(MediationAdapter mediationAdapter) {
        this.f49581a = mediationAdapter;
    }

    /* renamed from: a */
    private final Bundle m14443a(String str, zzvq zzvqVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        C13088za.zzdz(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            if (this.f49581a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzvqVar != null) {
                    bundle.putInt(GooglePlayServicesInterstitial.TAG_FOR_CHILD_DIRECTED_KEY, zzvqVar.zzadv);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> m14452a(AbstractC12752ms abstractC12752ms) {
        return new C12781nt(this, abstractC12752ms);
    }

    /* renamed from: a */
    private static String m14444a(String str, zzvq zzvqVar) {
        String str2;
        String str3 = zzvqVar.zzadx;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
            str2 = str3;
        }
        return str2;
    }

    /* renamed from: a */
    private static boolean m14445a(zzvq zzvqVar) {
        if (!zzvqVar.zzcid) {
            ekb.m14835a();
            return C13077yq.m13952a();
        }
        return true;
    }

    /* renamed from: b */
    private final Bundle m14442b(zzvq zzvqVar) {
        Bundle bundle;
        return (zzvqVar.zzcih == null || (bundle = zzvqVar.zzcih.getBundle(this.f49581a.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final AbstractC12126b mo14370a() throws RemoteException {
        Object obj = this.f49581a;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return BinderC12129d.m18979a(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                C13088za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return BinderC12129d.m18979a(this.f49585e);
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14369a(AbstractC12126b abstractC12126b) throws RemoteException {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        Object obj = this.f49581a;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14368a(AbstractC12126b abstractC12126b, AbstractC12640io abstractC12640io, List<zzajw> list) throws RemoteException {
        AdFormat adFormat;
        if (this.f49581a instanceof Adapter) {
            C12777np c12777np = new C12777np(this, abstractC12640io);
            ArrayList arrayList = new ArrayList();
            for (zzajw zzajwVar : list) {
                String str = zzajwVar.zzdke;
                str.hashCode();
                boolean z = true;
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals("banner")) {
                            z = false;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (str.equals("native")) {
                            z = true;
                            break;
                        }
                        break;
                    case -239580146:
                        if (str.equals(Reporting.AdFormat.REWARDED)) {
                            z = true;
                            break;
                        }
                        break;
                    case 604727084:
                        if (str.equals(AdType.INTERSTITIAL)) {
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
                    arrayList.add(new MediationConfiguration(adFormat, zzajwVar.extras));
                }
            }
            ((Adapter) this.f49581a).initialize((Context) BinderC12129d.m18980a(abstractC12126b), c12777np, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14367a(AbstractC12126b abstractC12126b, AbstractC12956uf abstractC12956uf, List<String> list) throws RemoteException {
        if (!(this.f49581a instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
        C13088za.zzdz("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f49581a;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                arrayList.add(m14443a(str, (zzvq) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) BinderC12129d.m18980a(abstractC12126b), new C12960uj(abstractC12956uf), arrayList);
        } catch (Throwable th) {
            C13088za.zzd("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14366a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        mo14364a(abstractC12126b, zzvqVar, str, (String) null, abstractC12752ms);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14365a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12956uf abstractC12956uf, String str2) throws RemoteException {
        C12772nk c12772nk;
        Bundle bundle;
        Object obj = this.f49581a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            C13088za.zzdz("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f49581a;
                Bundle m14443a = m14443a(str2, zzvqVar, (String) null);
                if (zzvqVar != null) {
                    C12772nk c12772nk2 = new C12772nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, m14445a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, m14444a(str2, zzvqVar));
                    bundle = zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                    c12772nk = c12772nk2;
                } else {
                    c12772nk = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) BinderC12129d.m18980a(abstractC12126b), c12772nk, str, new C12960uj(abstractC12956uf), m14443a, bundle);
            } catch (Throwable th) {
                C13088za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            this.f49584d = abstractC12126b;
            this.f49583c = abstractC12956uf;
            abstractC12956uf.mo14116a(BinderC12129d.m18979a(obj));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14364a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f49581a;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
        C13088za.zzdz("Requesting interstitial ad from adapter.");
        Object obj2 = this.f49581a;
        if (obj2 instanceof MediationInterstitialAdapter) {
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
                mediationInterstitialAdapter.requestInterstitialAd((Context) BinderC12129d.m18980a(abstractC12126b), new C12783nv(abstractC12752ms), m14443a(str, zzvqVar, str2), new C12772nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, m14445a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, m14444a(str, zzvqVar)), zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
            } finally {
            }
        } else if (!(obj2 instanceof Adapter)) {
        } else {
            try {
                ((Adapter) obj2).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), "", m14443a(str, zzvqVar, str2), m14442b(zzvqVar), m14445a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14444a(str, zzvqVar), this.f49590j), new C12779nr(this, abstractC12752ms));
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14363a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms, zzaei zzaeiVar, List<String> list) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f49581a;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
        C13088za.zzdz("Requesting native ad from adapter.");
        Object obj2 = this.f49581a;
        if (!(obj2 instanceof MediationNativeAdapter)) {
            if (!(obj2 instanceof Adapter)) {
                return;
            }
            try {
                ((Adapter) obj2).loadNativeAd(new MediationNativeAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), "", m14443a(str, zzvqVar, str2), m14442b(zzvqVar), m14445a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14444a(str, zzvqVar), this.f49590j, zzaeiVar), new C12778nq(this, abstractC12752ms));
                return;
            } finally {
            }
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
            C12787nz c12787nz = new C12787nz(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, m14445a(zzvqVar), zzvqVar.zzadv, zzaeiVar, list, zzvqVar.zzcim, zzvqVar.zzadw, m14444a(str, zzvqVar));
            Bundle bundle = zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.f49582b = new C12783nv(abstractC12752ms);
            mediationNativeAdapter.requestNativeAd((Context) BinderC12129d.m18980a(abstractC12126b), this.f49582b, m14443a(str, zzvqVar, str2), c12787nz, bundle);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14362a(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        mo14361a(abstractC12126b, zzvtVar, zzvqVar, str, null, abstractC12752ms);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14361a(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f49581a;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
        C13088za.zzdz("Requesting banner ad from adapter.");
        AdSize zzb = zzvtVar.zzciy ? zza.zzb(zzvtVar.width, zzvtVar.height) : zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd);
        Object obj2 = this.f49581a;
        if (obj2 instanceof MediationBannerAdapter) {
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
                mediationBannerAdapter.requestBannerAd((Context) BinderC12129d.m18980a(abstractC12126b), new C12783nv(abstractC12752ms), m14443a(str, zzvqVar, str2), zzb, new C12772nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, m14445a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, m14444a(str, zzvqVar)), zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(mediationBannerAdapter.getClass().getName()) : null);
            } finally {
            }
        } else if (!(obj2 instanceof Adapter)) {
        } else {
            try {
                ((Adapter) obj2).loadBannerAd(new MediationBannerAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), "", m14443a(str, zzvqVar, str2), m14442b(zzvqVar), m14445a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14444a(str, zzvqVar), zzb, this.f49590j), new C12776no(this, abstractC12752ms));
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14359a(zzvq zzvqVar, String str) throws RemoteException {
        mo14358a(zzvqVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14358a(zzvq zzvqVar, String str, String str2) throws RemoteException {
        Object obj = this.f49581a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            C13088za.zzdz("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f49581a;
                C12772nk c12772nk = new C12772nk(zzvqVar.zzcia == -1 ? null : new Date(zzvqVar.zzcia), zzvqVar.zzcib, zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null, zzvqVar.zzng, m14445a(zzvqVar), zzvqVar.zzadv, zzvqVar.zzcim, zzvqVar.zzadw, m14444a(str, zzvqVar));
                Bundle bundle = null;
                if (zzvqVar.zzcih != null) {
                    bundle = zzvqVar.zzcih.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                }
                mediationRewardedVideoAdAdapter.loadAd(c12772nk, m14443a(str, zzvqVar, str2), bundle);
            } catch (Throwable th) {
                C13088za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            mo14353b(this.f49584d, zzvqVar, str, new BinderC12782nu((Adapter) this.f49581a, this.f49583c));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14356a(boolean z) throws RemoteException {
        Object obj = this.f49581a;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                C13088za.zzc("", th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = this.f49581a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        C13088za.zzdz(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14355b() throws RemoteException {
        if (this.f49581a instanceof MediationInterstitialAdapter) {
            C13088za.zzdz("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f49581a).showInterstitial();
                return;
            } catch (Throwable th) {
                C13088za.zzc("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.f49581a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        C13088za.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14354b(AbstractC12126b abstractC12126b) throws RemoteException {
        if (this.f49581a instanceof Adapter) {
            C13088za.zzdz("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.f49588h;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) BinderC12129d.m18980a(abstractC12126b));
                return;
            } else {
                C13088za.zzex("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.f49581a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        C13088za.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14353b(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        if (this.f49581a instanceof Adapter) {
            C13088za.zzdz("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.f49581a).loadRewardedAd(new MediationRewardedAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), "", m14443a(str, zzvqVar, (String) null), m14442b(zzvqVar), m14445a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14444a(str, zzvqVar), ""), m14452a(abstractC12752ms));
                return;
            } catch (Exception e) {
                C13088za.zzc("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.f49581a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        C13088za.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14352b(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        if (this.f49581a instanceof Adapter) {
            C13088za.zzdz("Requesting interscroller ad from adapter.");
            try {
                Adapter adapter = (Adapter) this.f49581a;
                adapter.loadInterscrollerAd(new MediationBannerAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), "", m14443a(str, zzvqVar, str2), m14442b(zzvqVar), m14445a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14444a(str, zzvqVar), zza.zzc(zzvtVar.width, zzvtVar.height), ""), new C12774nm(this, abstractC12752ms, adapter));
                return;
            } catch (Exception e) {
                C13088za.zzc("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.f49581a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        C13088za.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14351c() throws RemoteException {
        Object obj = this.f49581a;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onDestroy();
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14350c(AbstractC12126b abstractC12126b) throws RemoteException {
        Object obj = this.f49581a;
        if ((obj instanceof Adapter) || (obj instanceof MediationInterstitialAdapter)) {
            if (obj instanceof MediationInterstitialAdapter) {
                mo14355b();
                return;
            }
            C13088za.zzdz("Show interstitial ad from adapter.");
            MediationInterstitialAd mediationInterstitialAd = this.f49586f;
            if (mediationInterstitialAd != null) {
                mediationInterstitialAd.showAd((Context) BinderC12129d.m18980a(abstractC12126b));
                return;
            } else {
                C13088za.zzex("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.f49581a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        C13088za.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14349c(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        if (this.f49581a instanceof Adapter) {
            C13088za.zzdz("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.f49581a).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), "", m14443a(str, zzvqVar, (String) null), m14442b(zzvqVar), m14445a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14444a(str, zzvqVar), ""), m14452a(abstractC12752ms));
                return;
            } catch (Exception e) {
                C13088za.zzc("", e);
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.f49581a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        C13088za.zzez(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: d */
    public final void mo14348d() throws RemoteException {
        Object obj = this.f49581a;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onPause();
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: e */
    public final void mo14347e() throws RemoteException {
        Object obj = this.f49581a;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onResume();
        } catch (Throwable th) {
            C13088za.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: f */
    public final void mo14346f() throws RemoteException {
        Object obj = this.f49581a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            C13088za.zzdz("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.f49581a).showVideo();
            } catch (Throwable th) {
                C13088za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.f49588h;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) BinderC12129d.m18980a(this.f49584d));
            } else {
                C13088za.zzex("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: g */
    public final boolean mo14345g() throws RemoteException {
        Object obj = this.f49581a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            C13088za.zzdz("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.f49581a).isInitialized();
            } catch (Throwable th) {
                C13088za.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return this.f49583c != null;
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            C13088za.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: h */
    public final AbstractC12763nb mo14344h() {
        C12783nv c12783nv = this.f49582b;
        if (c12783nv != null) {
            NativeAdMapper nativeAdMapper = c12783nv.f49603a;
            if (!(nativeAdMapper instanceof NativeAppInstallAdMapper)) {
                return null;
            }
            return new BinderC12785nx((NativeAppInstallAdMapper) nativeAdMapper);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: i */
    public final AbstractC12764nc mo14343i() {
        C12783nv c12783nv = this.f49582b;
        if (c12783nv != null) {
            NativeAdMapper nativeAdMapper = c12783nv.f49603a;
            if (!(nativeAdMapper instanceof NativeContentAdMapper)) {
                return null;
            }
            return new BinderC12784nw((NativeContentAdMapper) nativeAdMapper);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: j */
    public final Bundle mo14342j() {
        Object obj = this.f49581a;
        if (!(obj instanceof zzbhe)) {
            String canonicalName = zzbhe.class.getCanonicalName();
            String canonicalName2 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            C13088za.zzez(sb.toString());
            return new Bundle();
        }
        return ((zzbhe) obj).zzvh();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: k */
    public final Bundle mo14341k() {
        Object obj = this.f49581a;
        if (!(obj instanceof zzbhf)) {
            String canonicalName = zzbhf.class.getCanonicalName();
            String canonicalName2 = this.f49581a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            C13088za.zzez(sb.toString());
            return new Bundle();
        }
        return ((zzbhf) obj).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: l */
    public final Bundle mo14340l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: m */
    public final boolean mo14339m() {
        return this.f49581a instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: n */
    public final AbstractC12532eo mo14338n() {
        C12783nv c12783nv = this.f49582b;
        if (c12783nv != null) {
            NativeCustomTemplateAd nativeCustomTemplateAd = c12783nv.f49605c;
            if (!(nativeCustomTemplateAd instanceof C12537et)) {
                return null;
            }
            return ((C12537et) nativeCustomTemplateAd).f49275a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: o */
    public final emk mo14337o() {
        Object obj = this.f49581a;
        if (!(obj instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) obj).getVideoController();
        } catch (Throwable th) {
            C13088za.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: p */
    public final AbstractC12769nh mo14336p() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        Object obj = this.f49581a;
        if (!(obj instanceof MediationNativeAdapter)) {
            if ((obj instanceof Adapter) && this.f49587g != null) {
                return new BinderC12795og(this.f49587g);
            }
            return null;
        }
        C12783nv c12783nv = this.f49582b;
        if (c12783nv != null && (unifiedNativeAdMapper = c12783nv.f49604b) != null) {
            return new BinderC12795og(unifiedNativeAdMapper);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: q */
    public final zzaqr mo14335q() {
        Object obj = this.f49581a;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzaqr.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: r */
    public final zzaqr mo14334r() {
        Object obj = this.f49581a;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzaqr.zza(((Adapter) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: s */
    public final AbstractC12753mt mo14333s() {
        if (this.f49589i != null) {
            return new BinderC12780ns(this.f49589i);
        }
        return null;
    }
}
