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
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3341a3;
import p131c.p161d.p170b.p224d.p252g.p253a.C3378b3;
import p131c.p161d.p170b.p224d.p252g.p253a.C3420c3;
import p131c.p161d.p170b.p224d.p252g.p253a.C3457d3;
import p131c.p161d.p170b.p224d.p252g.p253a.C4275z2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapq.class */
public final class zzapq extends zzapk {

    /* renamed from: a */
    public final RtbAdapter f24239a;

    /* renamed from: b */
    public MediationInterstitialAd f24240b;

    /* renamed from: c */
    public MediationRewardedAd f24241c;

    /* renamed from: d */
    public String f24242d = "";

    public zzapq(RtbAdapter rtbAdapter) {
        this.f24239a = rtbAdapter;
    }

    /* renamed from: C */
    public static Bundle m16484C(String str) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzbbq.m15852d(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            zzbbq.m15855b("", e);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    public static String m16477a(String str, zzvg zzvgVar) {
        String str2 = zzvgVar.f29021u;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
        }
        return str2;
    }

    /* renamed from: d */
    public static boolean m16469d(zzvg zzvgVar) {
        if (zzvgVar.f29006f) {
            return true;
        }
        zzwm.m11170a();
        return zzbbg.m15912a();
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: L */
    public final boolean mo16483L(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.f24241c;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.m17021Q(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: V */
    public final zzapv mo16482V() throws RemoteException {
        return zzapv.m16464a(this.f24239a.getSDKVersionInfo());
    }

    /* renamed from: a */
    public final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> m16480a(zzapg zzapgVar, zzanh zzanhVar) {
        return new C3420c3(this, zzapgVar, zzanhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16481a(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzvn zzvnVar, zzapm zzapmVar) throws RemoteException {
        AdFormat adFormat;
        try {
            C3457d3 d3Var = new C3457d3(this, zzapmVar);
            RtbAdapter rtbAdapter = this.f24239a;
            char c = 65535;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c = 3;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        c = 2;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals(AdType.INTERSTITIAL)) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                adFormat = AdFormat.BANNER;
            } else if (c == 1) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (c == 2) {
                adFormat = AdFormat.REWARDED;
            } else if (c == 3) {
                adFormat = AdFormat.NATIVE;
            } else {
                throw new IllegalArgumentException("Internal Error");
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.m17021Q(iObjectWrapper), arrayList, bundle, zzb.m17890a(zzvnVar.f29039e, zzvnVar.f29036b, zzvnVar.f29035a)), d3Var);
        } catch (Throwable th) {
            zzbbq.m15855b("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16476a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzaov zzaovVar, zzanh zzanhVar, zzvn zzvnVar) throws RemoteException {
        try {
            this.f24239a.loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.m17021Q(iObjectWrapper), str, m16484C(str2), m16470c(zzvgVar), m16469d(zzvgVar), zzvgVar.f29011k, zzvgVar.f29007g, zzvgVar.f29020t, m16477a(str2, zzvgVar), zzb.m17890a(zzvnVar.f29039e, zzvnVar.f29036b, zzvnVar.f29035a), this.f24242d), new C4275z2(this, zzaovVar, zzanhVar));
        } catch (Throwable th) {
            zzbbq.m15855b("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16475a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapa zzapaVar, zzanh zzanhVar) throws RemoteException {
        try {
            this.f24239a.loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.m17021Q(iObjectWrapper), str, m16484C(str2), m16470c(zzvgVar), m16469d(zzvgVar), zzvgVar.f29011k, zzvgVar.f29007g, zzvgVar.f29020t, m16477a(str2, zzvgVar), this.f24242d), new C3378b3(this, zzapaVar, zzanhVar));
        } catch (Throwable th) {
            zzbbq.m15855b("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16474a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapb zzapbVar, zzanh zzanhVar) throws RemoteException {
        try {
            this.f24239a.loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.m17021Q(iObjectWrapper), str, m16484C(str2), m16470c(zzvgVar), m16469d(zzvgVar), zzvgVar.f29011k, zzvgVar.f29007g, zzvgVar.f29020t, m16477a(str2, zzvgVar), this.f24242d), new C3341a3(this, zzapbVar, zzanhVar));
        } catch (Throwable th) {
            zzbbq.m15855b("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16473a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapg zzapgVar, zzanh zzanhVar) throws RemoteException {
        try {
            this.f24239a.loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.m17021Q(iObjectWrapper), str, m16484C(str2), m16470c(zzvgVar), m16469d(zzvgVar), zzvgVar.f29011k, zzvgVar.f29007g, zzvgVar.f29020t, m16477a(str2, zzvgVar), this.f24242d), m16480a(zzapgVar, zzanhVar));
        } catch (Throwable th) {
            zzbbq.m15855b("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16472a(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: b */
    public final void mo16471b(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapg zzapgVar, zzanh zzanhVar) throws RemoteException {
        try {
            this.f24239a.loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.m17021Q(iObjectWrapper), str, m16484C(str2), m16470c(zzvgVar), m16469d(zzvgVar), zzvgVar.f29011k, zzvgVar.f29007g, zzvgVar.f29020t, m16477a(str2, zzvgVar), this.f24242d), m16480a(zzapgVar, zzanhVar));
        } catch (Throwable th) {
            zzbbq.m15855b("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    /* renamed from: c */
    public final Bundle m16470c(zzvg zzvgVar) {
        Bundle bundle;
        Bundle bundle2 = zzvgVar.f29013m;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f24239a.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: d0 */
    public final zzapv mo16468d0() throws RemoteException {
        return zzapv.m16464a(this.f24239a.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    public final zzyo getVideoController() {
        RtbAdapter rtbAdapter = this.f24239a;
        if (!(rtbAdapter instanceof zza)) {
            return null;
        }
        try {
            return ((zza) rtbAdapter).getVideoController();
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: n */
    public final void mo16467n(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: p */
    public final boolean mo16466p(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.f24240b;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.m17021Q(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: t */
    public final void mo16465t(String str) {
        this.f24242d = str;
    }
}
