package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.d;
import androidx.work.impl.j;
import androidx.work.m;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.loaders.AdLoaderFactory;
import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.callapp.framework.phone.Phone;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker.class */
public final class MissedNotAnsweredPreloadAdWorker extends Worker {

    /* renamed from: b  reason: collision with root package name */
    private static BaseMultiSizeAdLoader f17053b;

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17052a = new Companion(null);

    /* renamed from: c  reason: collision with root package name */
    private static final ReentrantLock f17054c = new ReentrantLock();

    /* renamed from: d  reason: collision with root package name */
    private static final String f17055d = "job_missed_not_answered_preload_ad_tag";
    private static final String e = Constants.EXTRA_PHONE_NUMBER;
    private static final String f = "deviceId";
    private static final String g = "time";
    private static final String h = "numberOfMissedCalls";
    private static final String i = "missedCallType";

    @Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "deviceId_param", "loadingAdLock", "Ljava/util/concurrent/locks/ReentrantLock;", "getLoadingAdLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "missedCallType_param", "multiSizeAdLoader", "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "numberOfMissedCalls_param", "phone_param", "time_param", "scheduleJob", "", Constants.EXTRA_PHONE_NUMBER, "Lcom/callapp/framework/phone/Phone;", "deviceId", "", "time", "numberOfMissedCalls", "", "missedCallType", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Phone phone, long j, long j2, int i, int i2) {
            p.d(phone, "phone");
            d.a aVar = new d.a();
            aVar.a(MissedNotAnsweredPreloadAdWorker.e, phone.a());
            aVar.a(MissedNotAnsweredPreloadAdWorker.f, j);
            aVar.a(MissedNotAnsweredPreloadAdWorker.g, j2);
            aVar.a(MissedNotAnsweredPreloadAdWorker.h, i);
            aVar.a(MissedNotAnsweredPreloadAdWorker.i, i2);
            m c2 = new m.a(MissedNotAnsweredPreloadAdWorker.class).a(getTAG()).a(aVar.a()).c();
            p.b(c2, "OneTimeWorkRequestBuilde…ata(data.build()).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final String getTAG() {
            return MissedNotAnsweredPreloadAdWorker.f17055d;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissedNotAnsweredPreloadAdWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        final Phone a2 = PhoneManager.get().a(getInputData().a(e));
        p.b(a2, "PhoneManager.get().from(…a.getString(phone_param))");
        final long a3 = getInputData().a(f, 0L);
        final long a4 = getInputData().a(g, System.currentTimeMillis());
        final int a5 = getInputData().a(h, 0);
        final int a6 = getInputData().a(i, 0);
        CLog.a(MissedNotAnsweredPreloadAdWorker.class, "MissedNotAnsweredPreloadAdWorker doWork");
        String str = a6 == 3 ? "MissedCallPreferences" : "NotAnsweredPreferences";
        String str2 = a6 == 3 ? CallAppRemoteConfigManager.n : CallAppRemoteConfigManager.o;
        String str3 = a6 == 3 ? CallAppRemoteConfigManager.f14817d : CallAppRemoteConfigManager.e;
        final String str4 = a6 == 3 ? "MissedCallExperiments" : "NotAnsweredExperiments";
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        JSONAdPreferences a7 = AdUtils.a(str);
        int refreshInterval = a7 != null ? a7.getRefreshInterval() : 0;
        boolean z = a7 != null && a7.isRetryAfterFail();
        float b2 = Activities.b(Activities.getScreenWidth(1));
        final ab.a aVar = new ab.a();
        aVar.f36776a = false;
        ReentrantLock reentrantLock = f17054c;
        boolean isLocked = reentrantLock.isLocked();
        reentrantLock.lock();
        try {
            if (!isLocked) {
                BaseMultiSizeAdLoader a8 = AdLoaderFactory.a(CallAppApplication.get(), new AdUtils.AdEvents() { // from class: com.callapp.contacts.workers.MissedNotAnsweredPreloadAdWorker$doWork$1
                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onAdClick() {
                        AdUtils.AdEvents._CC.$default$onAdClick(this);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode errorCode) {
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader;
                        p.d(errorCode, "errorCode");
                        if (!ab.a.this.f36776a) {
                            ab.a.this.f36776a = true;
                            Phone phone = a2;
                            long j = a3;
                            long j2 = a4;
                            int i2 = a5;
                            int i3 = a6;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f17053b;
                            if (baseMultiSizeAdLoader == null) {
                                p.a("multiSizeAdLoader");
                            }
                            MissedCallManager.a(phone, j, j2, i2, i3, baseMultiSizeAdLoader, null, null, false);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader;
                        if (!ab.a.this.f36776a) {
                            ab.a.this.f36776a = true;
                            Phone phone = a2;
                            long j = a3;
                            long j2 = a4;
                            int i2 = a5;
                            int i3 = a6;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f17053b;
                            if (baseMultiSizeAdLoader == null) {
                                p.a("multiSizeAdLoader");
                            }
                            MissedCallManager.a(phone, j, j2, i2, i3, baseMultiSizeAdLoader, moPubView, null, z2);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialDismissed(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                        AdUtils.AdEvents._CC.$default$onInterstitialFailed(this, moPubInterstitial, moPubErrorCode);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialLoaded(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                        AdUtils.AdEvents._CC.$default$onInterstitialShown(this, moPubInterstitial);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader;
                        p.d(nativeErrorCode, "nativeErrorCode");
                        if (!ab.a.this.f36776a) {
                            ab.a.this.f36776a = true;
                            Phone phone = a2;
                            long j = a3;
                            long j2 = a4;
                            int i2 = a5;
                            int i3 = a6;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f17053b;
                            if (baseMultiSizeAdLoader == null) {
                                p.a("multiSizeAdLoader");
                            }
                            MissedCallManager.a(phone, j, j2, i2, i3, baseMultiSizeAdLoader, null, null, false);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader;
                        if (!ab.a.this.f36776a) {
                            ab.a.this.f36776a = true;
                            Phone phone = a2;
                            long j = a3;
                            long j2 = a4;
                            int i2 = a5;
                            int i3 = a6;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f17053b;
                            if (baseMultiSizeAdLoader == null) {
                                p.a("multiSizeAdLoader");
                            }
                            MissedCallManager.a(phone, j, j2, i2, i3, baseMultiSizeAdLoader, null, nativeAd, z2);
                        }
                        countDownLatch.countDown();
                    }
                }, AdUtils.b(str2, str3), refreshInterval, z, new NativeAdParamGetter() { // from class: com.callapp.contacts.workers.MissedNotAnsweredPreloadAdWorker$doWork$2
                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    public final AdSettings a(String adUnitId) {
                        p.d(adUnitId, "adUnitId");
                        AdSettings a9 = AdUtils.a(adUnitId, str4, MissedNotAnsweredPreloadAdWorker$doWork$2$getAdSettings$1.f17061a);
                        p.b(a9, "AdUtils.getAdSettingsFor…dLayoutResourceId(type) }");
                        return a9;
                    }

                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    public final ViewBinder a(AdSettings adSettings) {
                        p.d(adSettings, "adSettings");
                        ViewBinder b3 = AdUtils.b(adSettings);
                        p.b(b3, "AdUtils.getSmallCardViewBinder(adSettings)");
                        return b3;
                    }

                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    public final EnumSet<RequestParameters.NativeAdAsset> b(AdSettings adSettings) {
                        p.d(adSettings, "adSettings");
                        EnumSet<RequestParameters.NativeAdAsset> a9 = AdUtils.a(adSettings);
                        p.b(a9, "AdUtils.getSmallCardDesiredAssets(adSettings)");
                        return a9;
                    }
                }, b2);
                p.b(a8, "AdLoaderFactory.createMu…              }, adWidth)");
                f17053b = a8;
                a8.a();
                try {
                    countDownLatch.await(CallAppRemoteConfigManager.get().b("MissedNotAnsweredPreloadTimeoutSec"), TimeUnit.SECONDS);
                } catch (InterruptedException e2) {
                    if (!aVar.f36776a) {
                        aVar.f36776a = true;
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader = f17053b;
                        if (baseMultiSizeAdLoader == null) {
                            p.a("multiSizeAdLoader");
                        }
                        MissedCallManager.a(a2, a3, a4, a5, a6, baseMultiSizeAdLoader, null, null, false);
                    }
                }
            } else {
                BaseMultiSizeAdLoader baseMultiSizeAdLoader2 = f17053b;
                if (baseMultiSizeAdLoader2 == null) {
                    p.a("multiSizeAdLoader");
                }
                MissedCallManager.a(a2, a3, a4, a5, a6, baseMultiSizeAdLoader2, null, null, false);
            }
            f17054c.unlock();
            ListenableWorker.a.c cVar = new ListenableWorker.a.c();
            p.b(cVar, "Result.success()");
            return cVar;
        } catch (Throwable th) {
            f17054c.unlock();
            throw th;
        }
    }
}
