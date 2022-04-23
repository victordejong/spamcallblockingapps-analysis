package com.callapp.contacts.workers;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.n;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItem;
import com.callapp.contacts.activity.missedcall.daySummary.NotAnswerDaySummaryActivity;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.receiver.ScreenUnlockReceiver;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.BaseAdTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.callapp.contacts.util.ads.MultiSizeAdLoaderCache;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.loaders.AdLoaderFactory;
import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker;
import com.callapp.framework.util.CollectionUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker.class */
public final class NotAnswerCallSummaryDailyWorker extends Worker {

    /* renamed from: c  reason: collision with root package name */
    private static BaseMultiSizeAdLoader f17064c;

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17062a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final int f17063b = 16;

    /* renamed from: d  reason: collision with root package name */
    private static final String f17065d = "job_not_answer_daily_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ>\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0006\u0010\u001b\u001a\u00020\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;", "", "()V", "NOT_ANSWERED_HOUR_OF_DAY", "", "getNOT_ANSWERED_HOUR_OF_DAY", "()I", "TAG", "", "getTAG", "()Ljava/lang/String;", "multiSizeAdLoader", "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "openNotAnsweredSummary", "", "openNotAnsweredSummaryActivity", "callList", "", "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;", "numberOfCalls", "moPubView", "Lcom/mopub/mobileads/MoPubView;", "nativeAd", "Lcom/mopub/nativeads/NativeAd;", "disableRefresh", "", "scheduleJob", "showPendingNotAnsweredSummary", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(List<? extends MissedCallSummaryItem> callList, int i, MoPubView moPubView, NativeAd nativeAd, boolean z) {
            p.d(callList, "callList");
            Boolean bool = Prefs.aW.get();
            p.b(bool, "Prefs.setupCompleted.get()");
            if (bool.booleanValue()) {
                Intent intent = new Intent(CallAppApplication.get(), NotAnswerDaySummaryActivity.class);
                intent.setFlags(268435456);
                intent.putParcelableArrayListExtra(MissedCallSummaryDailyWorker.f17041a.getYESTERDAY_MISSED_CALL_LIST(), (ArrayList) callList);
                intent.putExtra(MissedCallSummaryDailyWorker.f17041a.getYESTERDAY_MISSED_CALL_TOTAL_NUMBER(), i);
                if (NotAnswerCallSummaryDailyWorker.f17064c == null || (moPubView == null && nativeAd == null)) {
                    BaseMultiSizeAdLoader baseMultiSizeAdLoader = NotAnswerCallSummaryDailyWorker.f17064c;
                    if (baseMultiSizeAdLoader != null) {
                        baseMultiSizeAdLoader.b();
                    }
                } else {
                    BaseMultiSizeAdLoader baseMultiSizeAdLoader2 = NotAnswerCallSummaryDailyWorker.f17064c;
                    p.a(baseMultiSizeAdLoader2);
                    MultiSizeAdLoaderCache.AdData adData = new MultiSizeAdLoaderCache.AdData(baseMultiSizeAdLoader2, moPubView, nativeAd, z);
                    MultiSizeAdLoaderCache.Companion companion = MultiSizeAdLoaderCache.f16077a;
                    MultiSizeAdLoaderCache.Companion.a(NotAnswerDaySummaryActivity.class, adData);
                    intent.putExtra(BaseAdTransparentActivity.EXTRA_AD_LOADED, true);
                }
                NotAnswerCallSummaryDailyWorker.f17064c = null;
                Activities.a(CallAppApplication.get(), intent);
            }
        }

        public static /* synthetic */ void a(List list, int i, MoPubView moPubView, NativeAd nativeAd, boolean z, int i2) {
            if ((i2 & 4) != 0) {
                moPubView = null;
            }
            if ((i2 & 8) != 0) {
                nativeAd = null;
            }
            if ((i2 & 16) != 0) {
                z = false;
            }
            a(list, i, moPubView, nativeAd, z);
        }

        public final void a() {
            final ab.a aVar = new ab.a();
            aVar.f36776a = false;
            if (MissedCallManager.isNotAnswerDailySummaryEnabled()) {
                PermissionManager.get();
                if (PermissionManager.a("android.permission.READ_CALL_LOG")) {
                    final Pair<List<MissedCallSummaryItem>, Integer> a2 = MissedCallManager.a(40, getNOT_ANSWERED_HOUR_OF_DAY(), Calendar.getInstance());
                    final List callList = (List) a2.first;
                    if (!CollectionUtils.b(callList)) {
                        return;
                    }
                    if (!AdUtils.a()) {
                        JSONAdPreferences a3 = AdUtils.a("NotAnsweredSummaryPreferences");
                        int refreshInterval = a3 != null ? a3.getRefreshInterval() : 0;
                        boolean z = a3 != null && a3.isRetryAfterFail();
                        float b2 = Activities.b(Activities.getScreenWidth(1));
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        NotAnswerCallSummaryDailyWorker.f17064c = AdLoaderFactory.a(CallAppApplication.get(), new AdUtils.AdEvents() { // from class: com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1
                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public /* synthetic */ void onAdClick() {
                                AdUtils.AdEvents._CC.$default$onAdClick(this);
                            }

                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public final void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode errorCode) {
                                p.d(errorCode, "errorCode");
                                if (!ab.a.this.f36776a) {
                                    ab.a.this.f36776a = true;
                                    NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f17062a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    NotAnswerCallSummaryDailyWorker.Companion.a(callList2, ((Number) obj).intValue(), null, null, false, 28);
                                }
                                countDownLatch.countDown();
                            }

                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public final void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                                if (!ab.a.this.f36776a) {
                                    ab.a.this.f36776a = true;
                                    NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f17062a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    NotAnswerCallSummaryDailyWorker.Companion.a(callList2, ((Number) obj).intValue(), moPubView, null, z2, 8);
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
                                p.d(nativeErrorCode, "nativeErrorCode");
                                if (!ab.a.this.f36776a) {
                                    ab.a.this.f36776a = true;
                                    NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f17062a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    NotAnswerCallSummaryDailyWorker.Companion.a(callList2, ((Number) obj).intValue(), null, null, false, 28);
                                }
                                countDownLatch.countDown();
                            }

                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public final void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                                if (!ab.a.this.f36776a) {
                                    ab.a.this.f36776a = true;
                                    NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f17062a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    NotAnswerCallSummaryDailyWorker.Companion.a(callList2, ((Number) obj).intValue(), null, nativeAd, z2, 4);
                                }
                                countDownLatch.countDown();
                            }
                        }, AdUtils.b(CallAppRemoteConfigManager.o, CallAppRemoteConfigManager.e), refreshInterval, z, new NativeAdParamGetter() { // from class: com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2
                            @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                            public final AdSettings a(String adUnitId) {
                                p.d(adUnitId, "adUnitId");
                                AdSettings a4 = AdUtils.a(adUnitId, "NotAnsweredSummaryExperiments", NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1.f17070a);
                                p.b(a4, "AdUtils.getAdSettingsFor…dLayoutResourceId(type) }");
                                return a4;
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
                                EnumSet<RequestParameters.NativeAdAsset> a4 = AdUtils.a(adSettings);
                                p.b(a4, "AdUtils.getSmallCardDesiredAssets(adSettings)");
                                return a4;
                            }
                        }, b2);
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader = NotAnswerCallSummaryDailyWorker.f17064c;
                        if (baseMultiSizeAdLoader != null) {
                            baseMultiSizeAdLoader.a();
                        }
                        try {
                            countDownLatch.await(CallAppRemoteConfigManager.get().b("MissedNotAnsweredPreloadTimeoutSec"), TimeUnit.SECONDS);
                        } catch (InterruptedException e) {
                            if (!aVar.f36776a) {
                                aVar.f36776a = true;
                                p.b(callList, "callList");
                                Object obj = a2.second;
                                p.b(obj, "yesterdayCalls.second");
                                a(callList, ((Number) obj).intValue(), null, null, false, 28);
                            }
                        }
                    } else {
                        p.b(callList, "callList");
                        Object obj2 = a2.second;
                        p.b(obj2, "yesterdayCalls.second");
                        a(callList, ((Number) obj2).intValue(), null, null, false, 28);
                    }
                }
            }
        }

        public final void b() {
            Calendar calendar = Calendar.getInstance();
            Companion companion = this;
            calendar.set(11, companion.getNOT_ANSWERED_HOUR_OF_DAY());
            Calendar now = Calendar.getInstance();
            if (!now.before(calendar)) {
                calendar.add(5, 1);
            }
            p.b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            p.b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            try {
                n a2 = j.b(CallAppApplication.get()).a(getTAG());
                p.b(a2, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                a2.a().get();
            } catch (Exception e) {
                CLog.a(NotAnswerCallSummaryDailyWorker.class, e);
            }
            m c2 = new m.a(NotAnswerCallSummaryDailyWorker.class).a(companion.getTAG()).a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final int getNOT_ANSWERED_HOUR_OF_DAY() {
            return NotAnswerCallSummaryDailyWorker.f17063b;
        }

        public final String getTAG() {
            return NotAnswerCallSummaryDailyWorker.f17065d;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotAnswerCallSummaryDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        try {
            CLog.a(NotAnswerCallSummaryDailyWorker.class, "NotAnswerCallSummaryDailyWorker onRunDailyJob");
            Object a2 = CallAppApplication.get().a("keyguard");
            if (a2 != null) {
                if (((KeyguardManager) a2).isKeyguardLocked()) {
                    Prefs.K.set(Boolean.TRUE);
                    ScreenUnlockReceiver.a();
                    CLog.a(NotAnswerCallSummaryDailyWorker.class, "Not showing NotAnswerCallSummaryDaily due to lockscreen");
                } else {
                    f17062a.a();
                }
                ListenableWorker.a.c cVar = new ListenableWorker.a.c();
                p.b(cVar, "Result.success()");
                f17062a.b();
                return cVar;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.app.KeyguardManager");
        } catch (Throwable th) {
            f17062a.b();
            throw th;
        }
    }
}
