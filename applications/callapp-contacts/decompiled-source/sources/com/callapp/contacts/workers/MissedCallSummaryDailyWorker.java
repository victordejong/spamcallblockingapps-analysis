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
import com.callapp.contacts.activity.missedcall.daySummary.MissedCallDaySummaryActivity;
import com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItem;
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
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.workers.MissedCallSummaryDailyWorker;
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
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedCallSummaryDailyWorker.class */
public final class MissedCallSummaryDailyWorker extends Worker {

    /* renamed from: d  reason: collision with root package name */
    private static BaseMultiSizeAdLoader f17044d;

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17041a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17042b = "YESTERDAY_MISSED_CALL_LIST";

    /* renamed from: c  reason: collision with root package name */
    private static final String f17043c = "YESTERDAY_MISSED_CALL_TOTAL_NUMBER";
    private static final String e = "job_missed_call_daily_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J@\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0006\u0010\u001b\u001a\u00020\u000eJ\u0006\u0010\u001c\u001a\u00020\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "YESTERDAY_MISSED_CALL_LIST", "getYESTERDAY_MISSED_CALL_LIST", "YESTERDAY_MISSED_CALL_TOTAL_NUMBER", "getYESTERDAY_MISSED_CALL_TOTAL_NUMBER", "multiSizeAdLoader", "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "openMissedCallDaySummeryActivity", "", "callList", "", "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;", "numberOfCalls", "", "moPubView", "Lcom/mopub/mobileads/MoPubView;", "nativeAd", "Lcom/mopub/nativeads/NativeAd;", "disableRefresh", "", "openMissedCallSummary", "scheduleJob", "showPendingMissedCallSummary", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(Companion companion, List list, int i, MoPubView moPubView, NativeAd nativeAd, boolean z, int i2) {
            if ((i2 & 4) != 0) {
                moPubView = null;
            }
            if ((i2 & 8) != 0) {
                nativeAd = null;
            }
            if ((i2 & 16) != 0) {
                z = false;
            }
            companion.a(list, i, moPubView, nativeAd, z);
        }

        private final void a(List<? extends MissedCallSummaryItem> list, int i, MoPubView moPubView, NativeAd nativeAd, boolean z) {
            Boolean bool = Prefs.aW.get();
            p.b(bool, "Prefs.setupCompleted.get()");
            if (bool.booleanValue()) {
                Intent intent = new Intent(CallAppApplication.get(), MissedCallDaySummaryActivity.class);
                intent.setFlags(268435456);
                Companion companion = this;
                String yesterday_missed_call_list = companion.getYESTERDAY_MISSED_CALL_LIST();
                Objects.requireNonNull(list, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>");
                intent.putParcelableArrayListExtra(yesterday_missed_call_list, (ArrayList) list);
                intent.putExtra(companion.getYESTERDAY_MISSED_CALL_TOTAL_NUMBER(), i);
                if (MissedCallSummaryDailyWorker.f17044d == null || (moPubView == null && nativeAd == null)) {
                    BaseMultiSizeAdLoader baseMultiSizeAdLoader = MissedCallSummaryDailyWorker.f17044d;
                    if (baseMultiSizeAdLoader != null) {
                        baseMultiSizeAdLoader.b();
                    }
                } else {
                    BaseMultiSizeAdLoader baseMultiSizeAdLoader2 = MissedCallSummaryDailyWorker.f17044d;
                    p.a(baseMultiSizeAdLoader2);
                    MultiSizeAdLoaderCache.AdData adData = new MultiSizeAdLoaderCache.AdData(baseMultiSizeAdLoader2, moPubView, nativeAd, z);
                    MultiSizeAdLoaderCache.Companion companion2 = MultiSizeAdLoaderCache.f16077a;
                    MultiSizeAdLoaderCache.Companion.a(MissedCallDaySummaryActivity.class, adData);
                    intent.putExtra(BaseAdTransparentActivity.EXTRA_AD_LOADED, true);
                }
                MissedCallSummaryDailyWorker.f17044d = null;
                Activities.a(CallAppApplication.get(), intent);
            }
        }

        public final void a() {
            final ab.a aVar = new ab.a();
            aVar.f36776a = false;
            if (MissedCallManager.isMissedCallDailySummaryEnabled()) {
                PermissionManager.get();
                if (PermissionManager.a("android.permission.READ_CALL_LOG")) {
                    Calendar instance = Calendar.getInstance();
                    instance.set(11, 0);
                    instance.set(12, 0);
                    final Pair<List<MissedCallSummaryItem>, Integer> a2 = MissedCallManager.a(3, 0, instance);
                    final List callList = (List) a2.first;
                    if (!CollectionUtils.b(callList)) {
                        return;
                    }
                    if (!AdUtils.a()) {
                        JSONAdPreferences a3 = AdUtils.a("MissedCallSummaryPreferences");
                        int refreshInterval = a3 != null ? a3.getRefreshInterval() : 0;
                        boolean z = a3 != null && a3.isRetryAfterFail();
                        float b2 = Activities.b(Activities.getScreenWidth(1));
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        MissedCallSummaryDailyWorker.f17044d = AdLoaderFactory.a(CallAppApplication.get(), new AdUtils.AdEvents() { // from class: com.callapp.contacts.workers.MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$1
                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public /* synthetic */ void onAdClick() {
                                AdUtils.AdEvents._CC.$default$onAdClick(this);
                            }

                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public final void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode errorCode) {
                                p.d(errorCode, "errorCode");
                                if (!ab.a.this.f36776a) {
                                    ab.a.this.f36776a = true;
                                    MissedCallSummaryDailyWorker.Companion companion = MissedCallSummaryDailyWorker.f17041a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    MissedCallSummaryDailyWorker.Companion.a(companion, callList2, ((Number) obj).intValue(), null, null, false, 28);
                                }
                                countDownLatch.countDown();
                            }

                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public final void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                                if (!ab.a.this.f36776a) {
                                    ab.a.this.f36776a = true;
                                    MissedCallSummaryDailyWorker.Companion companion = MissedCallSummaryDailyWorker.f17041a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    MissedCallSummaryDailyWorker.Companion.a(companion, callList2, ((Number) obj).intValue(), moPubView, null, z2, 8);
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
                                    MissedCallSummaryDailyWorker.Companion companion = MissedCallSummaryDailyWorker.f17041a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    MissedCallSummaryDailyWorker.Companion.a(companion, callList2, ((Number) obj).intValue(), null, null, false, 28);
                                }
                                countDownLatch.countDown();
                            }

                            @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                            public final void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                                if (!ab.a.this.f36776a) {
                                    ab.a.this.f36776a = true;
                                    MissedCallSummaryDailyWorker.Companion companion = MissedCallSummaryDailyWorker.f17041a;
                                    List callList2 = callList;
                                    p.b(callList2, "callList");
                                    Object obj = a2.second;
                                    p.b(obj, "yesterdayCalls.second");
                                    MissedCallSummaryDailyWorker.Companion.a(companion, callList2, ((Number) obj).intValue(), null, nativeAd, z2, 4);
                                }
                                countDownLatch.countDown();
                            }
                        }, AdUtils.b(CallAppRemoteConfigManager.n, CallAppRemoteConfigManager.f14817d), refreshInterval, z, new NativeAdParamGetter() { // from class: com.callapp.contacts.workers.MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$2
                            @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                            public final AdSettings a(String adUnitId) {
                                p.d(adUnitId, "adUnitId");
                                AdSettings a4 = AdUtils.a(adUnitId, "MissedCallSummaryExperiments", MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$2$getAdSettings$1.f17049a);
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
                        BaseMultiSizeAdLoader baseMultiSizeAdLoader = MissedCallSummaryDailyWorker.f17044d;
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
                                a(this, callList, ((Number) obj).intValue(), null, null, false, 28);
                            }
                        }
                    } else {
                        p.b(callList, "callList");
                        Object obj2 = a2.second;
                        p.b(obj2, "yesterdayCalls.second");
                        a(this, callList, ((Number) obj2).intValue(), null, null, false, 28);
                    }
                }
            }
        }

        public final void b() {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 9);
            calendar.set(12, 30);
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
                CLog.a(MissedCallSummaryDailyWorker.class, e);
            }
            m c2 = new m.a(MissedCallSummaryDailyWorker.class).a(getTAG()).a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final String getTAG() {
            return MissedCallSummaryDailyWorker.e;
        }

        public final String getYESTERDAY_MISSED_CALL_LIST() {
            return MissedCallSummaryDailyWorker.f17042b;
        }

        public final String getYESTERDAY_MISSED_CALL_TOTAL_NUMBER() {
            return MissedCallSummaryDailyWorker.f17043c;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissedCallSummaryDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        ListenableWorker.a.c cVar;
        try {
            CLog.a(MissedCallSummaryDailyWorker.class, "MissedCallSummaryDailyWorker onRunDailyJob");
            Date date = Prefs.M.get();
            if (date != null) {
                Calendar calendar = Calendar.getInstance();
                p.b(calendar, "calendar");
                if (DateUtils.a(date, calendar.getTime())) {
                    CLog.a(MissedCallSummaryDailyWorker.class, "Already ran missed call summary for today");
                    cVar = new ListenableWorker.a.c();
                    p.b(cVar, "Result.success()");
                    f17041a.b();
                    return cVar;
                }
            }
            Object a2 = CallAppApplication.get().a("keyguard");
            if (a2 != null) {
                if (((KeyguardManager) a2).isKeyguardLocked()) {
                    Prefs.J.set(Boolean.TRUE);
                    ScreenUnlockReceiver.a();
                    CLog.a(MissedCallSummaryDailyWorker.class, "Not showing MissedCallSummaryDaily due to lockscreen");
                } else {
                    f17041a.a();
                }
                cVar = new ListenableWorker.a.c();
                p.b(cVar, "Result.success()");
                f17041a.b();
                return cVar;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.app.KeyguardManager");
        } catch (Throwable th) {
            f17041a.b();
            throw th;
        }
    }
}
