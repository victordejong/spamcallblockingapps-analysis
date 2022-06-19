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
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.pb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pb.class */
public final class BinderC12817pb extends AbstractBinderC12810ov {

    /* renamed from: a */
    private final RtbAdapter f49637a;

    /* renamed from: b */
    private MediationInterstitialAd f49638b;

    /* renamed from: c */
    private MediationRewardedAd f49639c;

    /* renamed from: d */
    private String f49640d = "";

    public BinderC12817pb(RtbAdapter rtbAdapter) {
        this.f49637a = rtbAdapter;
    }

    /* renamed from: a */
    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> m14281a(AbstractC12805oq abstractC12805oq, AbstractC12752ms abstractC12752ms) {
        return new C12823ph(this, abstractC12805oq, abstractC12752ms);
    }

    /* renamed from: a */
    private static String m14276a(String str, zzvq zzvqVar) {
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
    private static boolean m14278a(zzvq zzvqVar) {
        if (!zzvqVar.zzcid) {
            ekb.m14835a();
            return C13077yq.m13952a();
        }
        return true;
    }

    /* renamed from: b */
    private final Bundle m14267b(zzvq zzvqVar) {
        Bundle bundle;
        return (zzvqVar.zzcih == null || (bundle = zzvqVar.zzcih.getBundle(this.f49637a.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    /* renamed from: b */
    private static Bundle m14266b(String str) throws RemoteException {
        String valueOf = String.valueOf(str);
        C13088za.zzez(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            C13088za.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final zzaqr mo14284a() throws RemoteException {
        return zzaqr.zza(this.f49637a.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14283a(AbstractC12126b abstractC12126b) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14282a(AbstractC12126b abstractC12126b, String str, Bundle bundle, Bundle bundle2, zzvt zzvtVar, AbstractC12812ox abstractC12812ox) throws RemoteException {
        AdFormat adFormat;
        try {
            C12820pe c12820pe = new C12820pe(this, abstractC12812ox);
            RtbAdapter rtbAdapter = this.f49637a;
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
            rtbAdapter.collectSignals(new RtbSignalData((Context) BinderC12129d.m18980a(abstractC12126b), arrayList, bundle, zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd)), c12820pe);
        } catch (Throwable th) {
            C13088za.zzc("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14277a(String str) {
        this.f49640d = str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14275a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12794of abstractC12794of, AbstractC12752ms abstractC12752ms, zzvt zzvtVar) throws RemoteException {
        try {
            this.f49637a.loadRtbBannerAd(new MediationBannerAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), str, m14266b(str2), m14267b(zzvqVar), m14278a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14276a(str2, zzvqVar), zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd), this.f49640d), new C12816pa(this, abstractC12794of, abstractC12752ms));
        } catch (Throwable th) {
            C13088za.zzc("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14274a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12799ok abstractC12799ok, AbstractC12752ms abstractC12752ms) throws RemoteException {
        try {
            this.f49637a.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), str, m14266b(str2), m14267b(zzvqVar), m14278a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14276a(str2, zzvqVar), this.f49640d), new C12818pc(this, abstractC12799ok, abstractC12752ms));
        } catch (Throwable th) {
            C13088za.zzc("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14273a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12800ol abstractC12800ol, AbstractC12752ms abstractC12752ms) throws RemoteException {
        mo14272a(str, str2, zzvqVar, abstractC12126b, abstractC12800ol, abstractC12752ms, (zzaei) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14272a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12800ol abstractC12800ol, AbstractC12752ms abstractC12752ms, zzaei zzaeiVar) throws RemoteException {
        try {
            this.f49637a.loadRtbNativeAd(new MediationNativeAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), str, m14266b(str2), m14267b(zzvqVar), m14278a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14276a(str2, zzvqVar), this.f49640d, zzaeiVar), new C12821pf(this, abstractC12800ol, abstractC12752ms));
        } catch (Throwable th) {
            C13088za.zzc("Adapter failed to render native ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14271a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12805oq abstractC12805oq, AbstractC12752ms abstractC12752ms) throws RemoteException {
        try {
            this.f49637a.loadRtbRewardedAd(new MediationRewardedAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), str, m14266b(str2), m14267b(zzvqVar), m14278a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14276a(str2, zzvqVar), this.f49640d), m14281a(abstractC12805oq, abstractC12752ms));
        } catch (Throwable th) {
            C13088za.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14270a(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final zzaqr mo14269b() throws RemoteException {
        return zzaqr.zza(this.f49637a.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final void mo14265b(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12794of abstractC12794of, AbstractC12752ms abstractC12752ms, zzvt zzvtVar) throws RemoteException {
        try {
            this.f49637a.loadRtbInterscrollerAd(new MediationBannerAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), str, m14266b(str2), m14267b(zzvqVar), m14278a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14276a(str2, zzvqVar), zza.zza(zzvtVar.width, zzvtVar.height, zzvtVar.zzadd), this.f49640d), new C12819pd(this, abstractC12794of, abstractC12752ms));
        } catch (Throwable th) {
            C13088za.zzc("Adapter failed to render interscroller ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final void mo14264b(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12805oq abstractC12805oq, AbstractC12752ms abstractC12752ms) throws RemoteException {
        try {
            this.f49637a.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) BinderC12129d.m18980a(abstractC12126b), str, m14266b(str2), m14267b(zzvqVar), m14278a(zzvqVar), zzvqVar.zzng, zzvqVar.zzadv, zzvqVar.zzadw, m14276a(str2, zzvqVar), this.f49640d), m14281a(abstractC12805oq, abstractC12752ms));
        } catch (Throwable th) {
            C13088za.zzc("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final boolean mo14268b(AbstractC12126b abstractC12126b) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.f49638b;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) BinderC12129d.m18980a(abstractC12126b));
            return true;
        } catch (Throwable th) {
            C13088za.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: c */
    public final emk mo14263c() {
        RtbAdapter rtbAdapter = this.f49637a;
        if (!(rtbAdapter instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) rtbAdapter).getVideoController();
        } catch (Throwable th) {
            C13088za.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: c */
    public final boolean mo14262c(AbstractC12126b abstractC12126b) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.f49639c;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) BinderC12129d.m18980a(abstractC12126b));
            return true;
        } catch (Throwable th) {
            C13088za.zzc("", th);
            return true;
        }
    }
}
