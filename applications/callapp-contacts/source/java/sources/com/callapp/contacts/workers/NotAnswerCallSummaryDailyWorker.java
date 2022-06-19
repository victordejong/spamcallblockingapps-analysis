package com.callapp.contacts.workers;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
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
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker.class */
public final class NotAnswerCallSummaryDailyWorker extends Worker {

    /* renamed from: c */
    private static BaseMultiSizeAdLoader f29621c;

    /* renamed from: a */
    public static final Companion f29619a = new Companion(null);

    /* renamed from: b */
    private static final int f29620b = 16;

    /* renamed from: d */
    private static final String f29622d = "job_not_answer_daily_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ>\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0006\u0010\u001b\u001a\u00020\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, m4298d2 = {"Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;", "", "()V", "NOT_ANSWERED_HOUR_OF_DAY", "", "getNOT_ANSWERED_HOUR_OF_DAY", "()I", "TAG", "", "getTAG", "()Ljava/lang/String;", "multiSizeAdLoader", "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "openNotAnsweredSummary", "", "openNotAnsweredSummaryActivity", "callList", "", "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;", "numberOfCalls", "moPubView", "Lcom/mopub/mobileads/MoPubView;", "nativeAd", "Lcom/mopub/nativeads/NativeAd;", "disableRefresh", "", "scheduleJob", "showPendingNotAnsweredSummary", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private static void m26134a(List<? extends MissedCallSummaryItem> callList, int i, MoPubView moPubView, NativeAd nativeAd, boolean z) {
            C18524p.m3840d(callList, "callList");
            Boolean bool = Prefs.f26246aW.get();
            C18524p.m3843b(bool, "Prefs.setupCompleted.get()");
            if (bool.booleanValue()) {
                Intent intent = new Intent(CallAppApplication.get(), NotAnswerDaySummaryActivity.class);
                intent.setFlags(268435456);
                intent.putParcelableArrayListExtra(MissedCallSummaryDailyWorker.f29589a.getYESTERDAY_MISSED_CALL_LIST(), (ArrayList) callList);
                intent.putExtra(MissedCallSummaryDailyWorker.f29589a.getYESTERDAY_MISSED_CALL_TOTAL_NUMBER(), i);
                if (NotAnswerCallSummaryDailyWorker.f29621c == null || (moPubView == null && nativeAd == null)) {
                    BaseMultiSizeAdLoader baseMultiSizeAdLoader = NotAnswerCallSummaryDailyWorker.f29621c;
                    if (baseMultiSizeAdLoader != null) {
                        baseMultiSizeAdLoader.mo27194b();
                    }
                } else {
                    BaseMultiSizeAdLoader baseMultiSizeAdLoader2 = NotAnswerCallSummaryDailyWorker.f29621c;
                    C18524p.m3851a(baseMultiSizeAdLoader2);
                    MultiSizeAdLoaderCache.AdData adData = new MultiSizeAdLoaderCache.AdData(baseMultiSizeAdLoader2, moPubView, nativeAd, z);
                    MultiSizeAdLoaderCache.Companion companion = MultiSizeAdLoaderCache.f28029a;
                    MultiSizeAdLoaderCache.Companion.m27218a(NotAnswerDaySummaryActivity.class, adData);
                    intent.putExtra(BaseAdTransparentActivity.EXTRA_AD_LOADED, true);
                }
                NotAnswerCallSummaryDailyWorker.f29621c = null;
                Activities.m27685a(CallAppApplication.get(), intent);
            }
        }

        /* renamed from: a */
        public static /* synthetic */ void m26133a(List list, int i, MoPubView moPubView, NativeAd nativeAd, boolean z, int i2) {
            if ((i2 & 4) != 0) {
                moPubView = null;
            }
            if ((i2 & 8) != 0) {
                nativeAd = null;
            }
            if ((i2 & 16) != 0) {
                z = false;
            }
            m26134a(list, i, moPubView, nativeAd, z);
        }

        /* renamed from: a */
        public final void m26135a() {
            final C18490ab.C18491a c18491a = new C18490ab.C18491a();
            c18491a.f63585a = false;
            if (MissedCallManager.isNotAnswerDailySummaryEnabled()) {
                PermissionManager.get();
                if (!PermissionManager.m28253a("android.permission.READ_CALL_LOG")) {
                    return;
                }
                final Pair<List<MissedCallSummaryItem>, Integer> m29827a = MissedCallManager.m29827a(40, getNOT_ANSWERED_HOUR_OF_DAY(), Calendar.getInstance());
                final List callList = (List) m29827a.first;
                if (!CollectionUtils.m26068b(callList)) {
                    return;
                }
                if (AdUtils.m27285a()) {
                    C18524p.m3843b(callList, "callList");
                    Object obj = m29827a.second;
                    C18524p.m3843b(obj, "yesterdayCalls.second");
                    m26133a(callList, ((Number) obj).intValue(), null, null, false, 28);
                    return;
                }
                JSONAdPreferences m27270a = AdUtils.m27270a("NotAnsweredSummaryPreferences");
                int refreshInterval = m27270a != null ? m27270a.getRefreshInterval() : 0;
                boolean z = m27270a != null && m27270a.isRetryAfterFail();
                float m27660b = Activities.m27660b(Activities.getScreenWidth(1));
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                NotAnswerCallSummaryDailyWorker.f29621c = AdLoaderFactory.m27212a(CallAppApplication.get(), new AdUtils.AdEvents() { // from class: com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1
                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public /* synthetic */ void onAdClick() {
                        AdUtils.AdEvents._CC.$default$onAdClick(this);
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode errorCode) {
                        C18524p.m3840d(errorCode, "errorCode");
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f29619a;
                            List callList2 = callList;
                            C18524p.m3843b(callList2, "callList");
                            Object obj2 = m29827a.second;
                            C18524p.m3843b(obj2, "yesterdayCalls.second");
                            NotAnswerCallSummaryDailyWorker.Companion.m26133a(callList2, ((Number) obj2).intValue(), null, null, false, 28);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f29619a;
                            List callList2 = callList;
                            C18524p.m3843b(callList2, "callList");
                            Object obj2 = m29827a.second;
                            C18524p.m3843b(obj2, "yesterdayCalls.second");
                            NotAnswerCallSummaryDailyWorker.Companion.m26133a(callList2, ((Number) obj2).intValue(), moPubView, null, z2, 8);
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
                        C18524p.m3840d(nativeErrorCode, "nativeErrorCode");
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f29619a;
                            List callList2 = callList;
                            C18524p.m3843b(callList2, "callList");
                            Object obj2 = m29827a.second;
                            C18524p.m3843b(obj2, "yesterdayCalls.second");
                            NotAnswerCallSummaryDailyWorker.Companion.m26133a(callList2, ((Number) obj2).intValue(), null, null, false, 28);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                    public final void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                        if (!C18490ab.C18491a.this.f63585a) {
                            C18490ab.C18491a.this.f63585a = true;
                            NotAnswerCallSummaryDailyWorker.Companion companion = NotAnswerCallSummaryDailyWorker.f29619a;
                            List callList2 = callList;
                            C18524p.m3843b(callList2, "callList");
                            Object obj2 = m29827a.second;
                            C18524p.m3843b(obj2, "yesterdayCalls.second");
                            NotAnswerCallSummaryDailyWorker.Companion.m26133a(callList2, ((Number) obj2).intValue(), null, nativeAd, z2, 4);
                        }
                        countDownLatch.countDown();
                    }
                }, AdUtils.m27261b(CallAppRemoteConfigManager.f25627o, CallAppRemoteConfigManager.f25617e), refreshInterval, z, new NativeAdParamGetter() { // from class: com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2
                    @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                    /* renamed from: a */
                    public final AdSettings mo26137a(String adUnitId) {
                        C18524p.m3840d(adUnitId, "adUnitId");
                        AdSettings m27268a = AdUtils.m27268a(adUnitId, "NotAnsweredSummaryExperiments", C8213x75e5052f.f29627a);
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
                BaseMultiSizeAdLoader baseMultiSizeAdLoader = NotAnswerCallSummaryDailyWorker.f29621c;
                if (baseMultiSizeAdLoader != null) {
                    baseMultiSizeAdLoader.m27211a();
                }
                try {
                    countDownLatch.await(CallAppRemoteConfigManager.get().m28699b("MissedNotAnsweredPreloadTimeoutSec"), TimeUnit.SECONDS);
                } catch (InterruptedException e) {
                    if (c18491a.f63585a) {
                        return;
                    }
                    c18491a.f63585a = true;
                    C18524p.m3843b(callList, "callList");
                    Object obj2 = m29827a.second;
                    C18524p.m3843b(obj2, "yesterdayCalls.second");
                    m26133a(callList, ((Number) obj2).intValue(), null, null, false, 28);
                }
            }
        }

        /* renamed from: b */
        public final void m26132b() {
            Calendar calendar = Calendar.getInstance();
            Companion companion = this;
            calendar.set(11, companion.getNOT_ANSWERED_HOUR_OF_DAY());
            Calendar now = Calendar.getInstance();
            if (!now.before(calendar)) {
                calendar.add(5, 1);
            }
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            C18524p.m3843b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27609a(NotAnswerCallSummaryDailyWorker.class, e);
            }
            C3148m c = new C3148m.C3149a(NotAnswerCallSummaryDailyWorker.class).m39256a(companion.getTAG()).m39259a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        public final int getNOT_ANSWERED_HOUR_OF_DAY() {
            return NotAnswerCallSummaryDailyWorker.f29620b;
        }

        public final String getTAG() {
            return NotAnswerCallSummaryDailyWorker.f29622d;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotAnswerCallSummaryDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        try {
            CLog.m27611a(NotAnswerCallSummaryDailyWorker.class, "NotAnswerCallSummaryDailyWorker onRunDailyJob");
            Object m31868a = CallAppApplication.get().m31868a("keyguard");
            if (m31868a == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.app.KeyguardManager");
            }
            if (((KeyguardManager) m31868a).isKeyguardLocked()) {
                Prefs.f26207K.set(Boolean.TRUE);
                ScreenUnlockReceiver.m27888a();
                CLog.m27611a(NotAnswerCallSummaryDailyWorker.class, "Not showing NotAnswerCallSummaryDaily due to lockscreen");
            } else {
                f29619a.m26135a();
            }
            ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
            C18524p.m3843b(c2983c, "Result.success()");
            f29619a.m26132b();
            return c2983c;
        } catch (Throwable th) {
            f29619a.m26132b();
            throw th;
        }
    }
}
