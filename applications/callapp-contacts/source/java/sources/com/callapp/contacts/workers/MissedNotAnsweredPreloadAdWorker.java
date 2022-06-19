package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.C2992d;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
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
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker.class */
public final class MissedNotAnsweredPreloadAdWorker extends Worker {

    /* renamed from: b */
    private static BaseMultiSizeAdLoader f29602b;

    /* renamed from: a */
    public static final Companion f29601a = new Companion(null);

    /* renamed from: c */
    private static final ReentrantLock f29603c = new ReentrantLock();

    /* renamed from: d */
    private static final String f29604d = "job_missed_not_answered_preload_ad_tag";

    /* renamed from: e */
    private static final String f29605e = Constants.EXTRA_PHONE_NUMBER;

    /* renamed from: f */
    private static final String f29606f = "deviceId";

    /* renamed from: g */
    private static final String f29607g = "time";

    /* renamed from: h */
    private static final String f29608h = "numberOfMissedCalls";

    /* renamed from: i */
    private static final String f29609i = "missedCallType";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u001c"}, m4298d2 = {"Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "deviceId_param", "loadingAdLock", "Ljava/util/concurrent/locks/ReentrantLock;", "getLoadingAdLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "missedCallType_param", "multiSizeAdLoader", "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "numberOfMissedCalls_param", "phone_param", "time_param", "scheduleJob", "", Constants.EXTRA_PHONE_NUMBER, "Lcom/callapp/framework/phone/Phone;", "deviceId", "", "time", "numberOfMissedCalls", "", "missedCallType", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m26143a(Phone phone, long j, long j2, int i, int i2) {
            C18524p.m3840d(phone, "phone");
            C2992d.C2993a c2993a = new C2992d.C2993a();
            c2993a.m39497a(MissedNotAnsweredPreloadAdWorker.f29605e, phone.m26101a());
            c2993a.m39499a(MissedNotAnsweredPreloadAdWorker.f29606f, j);
            c2993a.m39499a(MissedNotAnsweredPreloadAdWorker.f29607g, j2);
            c2993a.m39500a(MissedNotAnsweredPreloadAdWorker.f29608h, i);
            c2993a.m39500a(MissedNotAnsweredPreloadAdWorker.f29609i, i2);
            C3148m c = new C3148m.C3149a(MissedNotAnsweredPreloadAdWorker.class).m39256a(getTAG()).m39257a(c2993a.m39502a()).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…ata(data.build()).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        public final String getTAG() {
            return MissedNotAnsweredPreloadAdWorker.f29604d;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissedNotAnsweredPreloadAdWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        final Phone m28239a = PhoneManager.get().m28239a(getInputData().m39512a(f29605e));
        C18524p.m3843b(m28239a, "PhoneManager.get().from(…a.getString(phone_param))");
        final long m39510a = getInputData().m39510a(f29606f, 0L);
        final long m39510a2 = getInputData().m39510a(f29607g, System.currentTimeMillis());
        final int m39511a = getInputData().m39511a(f29608h, 0);
        final int m39511a2 = getInputData().m39511a(f29609i, 0);
        CLog.m27611a(MissedNotAnsweredPreloadAdWorker.class, "MissedNotAnsweredPreloadAdWorker doWork");
        String str = m39511a2 == 3 ? "MissedCallPreferences" : "NotAnsweredPreferences";
        String str2 = m39511a2 == 3 ? CallAppRemoteConfigManager.f25626n : CallAppRemoteConfigManager.f25627o;
        String str3 = m39511a2 == 3 ? CallAppRemoteConfigManager.f25616d : CallAppRemoteConfigManager.f25617e;
        String str4 = m39511a2 == 3 ? "MissedCallExperiments" : "NotAnsweredExperiments";
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        JSONAdPreferences m27270a = AdUtils.m27270a(str);
        int refreshInterval = m27270a != null ? m27270a.getRefreshInterval() : 0;
        boolean z = m27270a != null && m27270a.isRetryAfterFail();
        float m27660b = Activities.m27660b(Activities.getScreenWidth(1));
        final C18490ab.C18491a c18491a = new C18490ab.C18491a();
        c18491a.f63585a = false;
        ReentrantLock reentrantLock = f29603c;
        boolean isLocked = reentrantLock.isLocked();
        reentrantLock.lock();
        try {
            if (!isLocked) {
                final String str5 = str4;
                BaseMultiSizeAdLoader m27212a = AdLoaderFactory.m27212a(CallAppApplication.get(), new AdUtils.AdEvents() { // from class: com.callapp.contacts.workers.MissedNotAnsweredPreloadAdWorker$doWork$1
                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onAdClick() {
                        AdUtils.AdEvents._CC.$default$onAdClick(this);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode errorCode) {
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader;
                        C18524p.m3840d(errorCode, "errorCode");
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            Phone phone = m28239a;
                            long j = m39510a;
                            long j2 = m39510a2;
                            int i = m39511a;
                            int i2 = m39511a2;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f29602b;
                            if (baseMultiSizeAdLoader == null) {
                                C18524p.m3848a("multiSizeAdLoader");
                            }
                            MissedCallManager.m29825a(phone, j, j2, i, i2, baseMultiSizeAdLoader, null, null, false);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader;
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            Phone phone = m28239a;
                            long j = m39510a;
                            long j2 = m39510a2;
                            int i = m39511a;
                            int i2 = m39511a2;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f29602b;
                            if (baseMultiSizeAdLoader == null) {
                                C18524p.m3848a("multiSizeAdLoader");
                            }
                            MissedCallManager.m29825a(phone, j, j2, i, i2, baseMultiSizeAdLoader, moPubView, null, z2);
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
                        C18524p.m3840d(nativeErrorCode, "nativeErrorCode");
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            Phone phone = m28239a;
                            long j = m39510a;
                            long j2 = m39510a2;
                            int i = m39511a;
                            int i2 = m39511a2;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f29602b;
                            if (baseMultiSizeAdLoader == null) {
                                C18524p.m3848a("multiSizeAdLoader");
                            }
                            MissedCallManager.m29825a(phone, j, j2, i, i2, baseMultiSizeAdLoader, null, null, false);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader;
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            Phone phone = m28239a;
                            long j = m39510a;
                            long j2 = m39510a2;
                            int i = m39511a;
                            int i2 = m39511a2;
                            baseMultiSizeAdLoader = MissedNotAnsweredPreloadAdWorker.f29602b;
                            if (baseMultiSizeAdLoader == null) {
                                C18524p.m3848a("multiSizeAdLoader");
                            }
                            MissedCallManager.m29825a(phone, j, j2, i, i2, baseMultiSizeAdLoader, null, nativeAd, z2);
                        }
                        countDownLatch.countDown();
                    }
                }, AdUtils.m27261b(str2, str3), refreshInterval, z, new NativeAdParamGetter() { // from class: com.callapp.contacts.workers.MissedNotAnsweredPreloadAdWorker$doWork$2
                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    /* renamed from: a */
                    public final AdSettings mo26137a(String adUnitId) {
                        C18524p.m3840d(adUnitId, "adUnitId");
                        AdSettings m27268a = AdUtils.m27268a(adUnitId, str5, MissedNotAnsweredPreloadAdWorker$doWork$2$getAdSettings$1.f29618a);
                        C18524p.m3843b(m27268a, "AdUtils.getAdSettingsFor…dLayoutResourceId(type) }");
                        return m27268a;
                    }

                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    /* renamed from: a */
                    public final ViewBinder mo26138a(AdSettings adSettings) {
                        C18524p.m3840d(adSettings, "adSettings");
                        ViewBinder m27263b = AdUtils.m27263b(adSettings);
                        C18524p.m3843b(m27263b, "AdUtils.getSmallCardViewBinder(adSettings)");
                        return m27263b;
                    }

                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    /* renamed from: b */
                    public final EnumSet<RequestParameters.NativeAdAsset> mo26136b(AdSettings adSettings) {
                        C18524p.m3840d(adSettings, "adSettings");
                        EnumSet<RequestParameters.NativeAdAsset> m27278a = AdUtils.m27278a(adSettings);
                        C18524p.m3843b(m27278a, "AdUtils.getSmallCardDesiredAssets(adSettings)");
                        return m27278a;
                    }
                }, m27660b);
                C18524p.m3843b(m27212a, "AdLoaderFactory.createMu…              }, adWidth)");
                f29602b = m27212a;
                m27212a.m27211a();
                try {
                    countDownLatch.await(CallAppRemoteConfigManager.get().m28699b("MissedNotAnsweredPreloadTimeoutSec"), TimeUnit.SECONDS);
                } catch (InterruptedException e) {
                    if (!c18491a.f63585a) {
                        c18491a.f63585a = true;
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader = f29602b;
                        if (baseMultiSizeAdLoader == null) {
                            C18524p.m3848a("multiSizeAdLoader");
                        }
                        MissedCallManager.m29825a(m28239a, m39510a, m39510a2, m39511a, m39511a2, baseMultiSizeAdLoader, null, null, false);
                    }
                }
            } else {
                BaseMultiSizeAdLoader baseMultiSizeAdLoader2 = f29602b;
                if (baseMultiSizeAdLoader2 == null) {
                    C18524p.m3848a("multiSizeAdLoader");
                }
                MissedCallManager.m29825a(m28239a, m39510a, m39510a2, m39511a, m39511a2, baseMultiSizeAdLoader2, null, null, false);
            }
            f29603c.unlock();
            ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
            C18524p.m3843b(c2983c, "Result.success()");
            return c2983c;
        } catch (Throwable th) {
            f29603c.unlock();
            throw th;
        }
    }
}
