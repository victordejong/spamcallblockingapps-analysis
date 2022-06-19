package com.google.ads.mediation.adcolony;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.p012v4.media.AbstractC0081a;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.jirbo.adcolony.C1975a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import p068d2.C2168b;
import p068d2.C2227e4;
import p068d2.C2230f1;
import p068d2.C2278h;
import p068d2.C2357l;
import p068d2.C2408t;
import p068d2.RunnableC2185c;
import p165m2.C3634a;
import p165m2.C3635b;
import p165m2.C3636c;
import p165m2.C3637d;
import p165m2.C3638e;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/adcolony/AdColonyMediationAdapter.class */
public class AdColonyMediationAdapter extends RtbAdapter {
    public static final int ERROR_ADCOLONY_NOT_INITIALIZED = 103;
    public static final int ERROR_ADCOLONY_SDK = 100;
    public static final int ERROR_AD_ALREADY_REQUESTED = 102;
    public static final int ERROR_BANNER_SIZE_MISMATCH = 104;
    public static final int ERROR_CONTEXT_NOT_ACTIVITY = 106;
    public static final int ERROR_INVALID_SERVER_PARAMETERS = 101;
    public static final int ERROR_PRESENTATION_AD_NOT_LOADED = 105;
    public static final String TAG = "AdColonyMediationAdapter";

    /* renamed from: a */
    public static C2357l f6146a = new C2357l();

    /* renamed from: com.google.ads.mediation.adcolony.AdColonyMediationAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/adcolony/AdColonyMediationAdapter$a.class */
    public class C1638a implements C1975a.AbstractC1976a {

        /* renamed from: a */
        public final /* synthetic */ InitializationCompleteCallback f6147a;

        public C1638a(InitializationCompleteCallback initializationCompleteCallback) {
            this.f6147a = initializationCompleteCallback;
        }

        @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
        /* renamed from: a */
        public void mo1945a() {
            this.f6147a.onInitializationSucceeded();
        }

        @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
        /* renamed from: b */
        public void mo1944b(AdError adError) {
            this.f6147a.onInitializationFailed(adError.toString());
        }
    }

    /* renamed from: com.google.ads.mediation.adcolony.AdColonyMediationAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/adcolony/AdColonyMediationAdapter$b.class */
    public class C1639b extends AbstractC0081a {

        /* renamed from: a */
        public final /* synthetic */ SignalCallbacks f6148a;

        public C1639b(SignalCallbacks signalCallbacks) {
            this.f6148a = signalCallbacks;
        }

        @Override // android.support.p012v4.media.AbstractC0081a
        /* renamed from: H */
        public void mo4830H(String str) {
            this.f6148a.onSuccess(str);
        }

        @Override // android.support.p012v4.media.AbstractC0081a
        /* renamed from: z */
        public void mo4829z() {
            AdError createSdkError = AdColonyMediationAdapter.createSdkError(100, "Failed to get signals from AdColony.");
            String str = AdColonyMediationAdapter.TAG;
            createSdkError.getMessage();
            this.f6148a.onFailure(createSdkError);
        }
    }

    public static AdError createAdapterError(int i, String str) {
        return new AdError(i, str, "com.google.ads.mediation.adcolony");
    }

    public static AdError createSdkError() {
        return createSdkError(100, "AdColony SDK returned a failure callback.");
    }

    public static AdError createSdkError(int i, String str) {
        return new AdError(i, str, "com.jirbo.adcolony");
    }

    public static C2357l getAppOptions() {
        return f6146a;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void collectSignals(RtbSignalData rtbSignalData, SignalCallbacks signalCallbacks) {
        C1639b c1639b = new C1639b(signalCallbacks);
        ExecutorService executorService = C2168b.f7919a;
        if (!C2408t.f8533c) {
            C2408t.m3591d().m3718p().m3686e(0, 1, "Ignoring call to AdColony.collectSignals() as AdColony has not yet been configured.", false);
            c1639b.mo4829z();
            return;
        }
        C2230f1 m3591d = C2408t.m3591d();
        if (C2168b.m3792f(new RunnableC2185c(m3591d, m3591d.m3733a(), c1639b))) {
            return;
        }
        c1639b.mo4829z();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String str;
        ExecutorService executorService = C2168b.f7919a;
        if (!C2408t.f8533c) {
            str = "";
        } else {
            Objects.requireNonNull(C2408t.m3591d().m3721m());
            str = "4.6.5";
        }
        String[] split = str.split("\\.");
        if (split.length >= 3) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        }
        Log.w(TAG, String.format("Unexpected SDK version format: %s. Returning 0.0.0 for SDK version.", str));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] split = "4.6.5.0".split("\\.");
        if (split.length >= 4) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[3]) + (Integer.parseInt(split[2]) * 100));
        }
        Log.w(TAG, String.format("Unexpected adapter version format: %s. Returning 0.0.0 for adapter version.", "4.6.5.0"));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        if (!(context instanceof Activity) && !(context instanceof Application)) {
            initializationCompleteCallback.onInitializationFailed(createAdapterError(106, "AdColony SDK requires an Activity or Application context to initialize.").toString());
            return;
        }
        HashSet hashSet = new HashSet();
        ArrayList<String> arrayList = new ArrayList<>();
        for (MediationConfiguration mediationConfiguration : list) {
            Bundle serverParameters = mediationConfiguration.getServerParameters();
            String string = serverParameters.getString("app_id");
            if (!TextUtils.isEmpty(string)) {
                hashSet.add(string);
            }
            ArrayList<String> m3984f = C1975a.m3986d().m3984f(serverParameters);
            if (m3984f != null && m3984f.size() > 0) {
                arrayList.addAll(m3984f);
            }
        }
        int size = hashSet.size();
        if (size <= 0) {
            initializationCompleteCallback.onInitializationFailed(createAdapterError(101, "Missing or invalid AdColony app ID.").toString());
            return;
        }
        String str = (String) hashSet.iterator().next();
        if (size > 1) {
            Log.w(TAG, String.format("Multiple '%s' entries found: %s. Using '%s' to initialize the AdColony SDK.", "app_id", hashSet.toString(), str));
        }
        C2357l c2357l = f6146a;
        C2227e4.m3744i(c2357l.f8370d, "mediation_network", "AdMob");
        C2227e4.m3744i(c2357l.f8370d, "mediation_network_version", "4.6.5.0");
        C1975a.m3986d().m3988b(context, f6146a, str, arrayList, new C1638a(initializationCompleteCallback));
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        C3638e c3638e = new C3638e(mediationRewardedAdConfiguration, mediationAdLoadCallback);
        String m3985e = C1975a.m3986d().m3985e(C1975a.m3986d().m3984f(mediationRewardedAdConfiguration.getServerParameters()), mediationRewardedAdConfiguration.getMediationExtras());
        if ((C3636c.m1950M().m1949N(m3985e) != null) && mediationRewardedAdConfiguration.getBidResponse().isEmpty()) {
            AdError createAdapterError = createAdapterError(102, "Failed to load ad from AdColony: Only a maximum of one ad can be loaded per Zone ID.");
            createAdapterError.getMessage();
            mediationAdLoadCallback.onFailure(createAdapterError);
            return;
        }
        C1975a m3986d = C1975a.m3986d();
        C3637d c3637d = new C3637d(c3638e, m3985e);
        Objects.requireNonNull(m3986d);
        Context context = mediationRewardedAdConfiguration.getContext();
        Bundle serverParameters = mediationRewardedAdConfiguration.getServerParameters();
        String string = serverParameters.getString("app_id");
        ArrayList<String> m3984f = m3986d.m3984f(serverParameters);
        C2357l appOptions = getAppOptions();
        if (mediationRewardedAdConfiguration.isTestRequest()) {
            C2227e4.m3739n(appOptions.f8370d, "test_mode", true);
        }
        m3986d.m3988b(context, appOptions, string, m3984f, c3637d);
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void loadRtbBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        C3634a c3634a = new C3634a(mediationBannerAdConfiguration, mediationAdLoadCallback);
        if (mediationBannerAdConfiguration.getAdSize() == null) {
            AdError createAdapterError = createAdapterError(101, "Failed to request banner with unsupported size: null");
            createAdapterError.getMessage();
            mediationAdLoadCallback.onFailure(createAdapterError);
            return;
        }
        C2168b.m3788j(C1975a.m3986d().m3985e(C1975a.m3986d().m3984f(mediationBannerAdConfiguration.getServerParameters()), mediationBannerAdConfiguration.getMediationExtras()), c3634a, new C2278h((int) (mediationBannerAdConfiguration.getAdSize().getWidthInPixels(mediationBannerAdConfiguration.getContext()) / Resources.getSystem().getDisplayMetrics().density), (int) (mediationBannerAdConfiguration.getAdSize().getHeightInPixels(mediationBannerAdConfiguration.getContext()) / Resources.getSystem().getDisplayMetrics().density)), C1975a.m3986d().m3987c(mediationBannerAdConfiguration));
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void loadRtbInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        C2168b.m3786l(C1975a.m3986d().m3985e(C1975a.m3986d().m3984f(mediationInterstitialAdConfiguration.getServerParameters()), mediationInterstitialAdConfiguration.getMediationExtras()), new C3635b(mediationInterstitialAdConfiguration, mediationAdLoadCallback), C1975a.m3986d().m3987c(mediationInterstitialAdConfiguration));
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void loadRtbRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        loadRewardedAd(mediationRewardedAdConfiguration, mediationAdLoadCallback);
    }
}
