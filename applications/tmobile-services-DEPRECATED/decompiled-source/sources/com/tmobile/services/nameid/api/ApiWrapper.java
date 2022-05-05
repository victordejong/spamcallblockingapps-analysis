package com.tmobile.services.nameid.api;

import android.content.Context;
import com.chuckerteam.chucker.api.ChuckerInterceptor;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.CallLog;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.CategorySettingList;
import com.tmobile.services.nameid.model.EventSummary;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.LookupResponse;
import com.tmobile.services.nameid.model.ReportItem;
import com.tmobile.services.nameid.model.ReportRequest;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceItemPostRequest;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.model.activity.RecentActivityDisplayable;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.HeaderInterceptor;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MockActivityLogApi;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.StringParsingUtils;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmQuery;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiWrapper.class */
public class ApiWrapper {
    @Nullable

    /* renamed from: a */
    private static MockActivityLogApi f13228a;

    private ApiWrapper() {
        throw new IllegalAccessError("This is a utility class, it shouldn't be created");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public static /* synthetic */ Response m6813C(UserPreference userPreference, final String str, Response response) throws Exception {
        if (userPreference instanceof CallerSetting) {
            Realm G0 = Realm.m3064G0();
            try {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.x
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        ApiWrapper.m6795U(str, realm);
                    }
                });
                if (G0 != null) {
                    G0.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        return response;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public static /* synthetic */ Caller m6812D(final Caller caller) throws Exception {
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.u
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    Caller.storeInRealm(Caller.this, G0);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("ApiWrapper#", "Error inserting Caller to Realm:", e);
        }
        return caller;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static /* synthetic */ List m6810F(CallLog callLog) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (CallLog.CallLogItem callLogItem : callLog.getItems()) {
            arrayList.add(ApiUtils.m6870b(callLogItem, "", false, StringParsingUtils.m5336d(callLogItem.getNumber())));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public static /* synthetic */ CategorySettingList m6806J(final CategorySettingList categorySettingList) throws Exception {
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.x0
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    realm.m3044w0(CategorySettingList.this.getSettings(), new ImportFlag[0]);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("ApiWrapper#", "Error inserting CategorySettings to Realm:", e);
        }
        return categorySettingList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public static /* synthetic */ FeatureState m6804L(FeatureState featureState) throws Exception {
        final String lowerCase = featureState.getActualNapFeatures().toLowerCase();
        Realm G0 = Realm.m3064G0();
        try {
            final TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus != null) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.z
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        TmoUserStatus.this.setBundled(lowerCase.contains("bndl"));
                    }
                });
            }
            if (G0 != null) {
                G0.close();
            }
            LogUtil.m5639h("ApiWrapper#", "Received feature state = " + lowerCase);
            return featureState;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M */
    public static /* synthetic */ void m6803M(int i, int i2, String str, EventSummary eventSummary) throws Exception {
        boolean hasMorePages = eventSummary.hasMorePages();
        LogUtil.m5643d("ApiWrapper#getNewerEventSummaryItems", "morePages = " + hasMorePages);
        if (hasMorePages && i < i2) {
            m6758s(i + 1, i2, str).subscribe();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Q */
    public static /* synthetic */ void m6799Q(int i, int i2, String str, EventSummary eventSummary) throws Exception {
        boolean hasMorePages = eventSummary.hasMorePages();
        LogUtil.m5643d("ApiWrapper#getOlderEventSummaryItems", "morePages = " + hasMorePages);
        if (!hasMorePages) {
            LogUtil.m5643d("ApiWrapper#getOlderEventSummaryItems", "All event summary items retrieved from backend. Setting flag.");
            PreferenceUtils.m5386k("PREF_EVENT_SUMMARY_RETRIEVED_ALL_ITEMS", true);
        } else if (i < i2) {
            m6756u(i + 1, i2, str).subscribe();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public static /* synthetic */ void m6795U(String str, Realm realm) {
        RealmQuery Q0 = realm.m3053Q0(CallerSetting.class);
        Q0.m2882t("e164Number", str);
        CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
        if (callerSetting != null) {
            callerSetting.setPreferenceId("");
        }
    }

    /* renamed from: a */
    public static Observable<UserPreferenceStatus> m6789a(UserPreference userPreference) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(userPreference);
        EventManager.m5721e(userPreference);
        return m6787b(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a0 */
    public static /* synthetic */ void m6788a0(boolean z, int i, Consumer consumer, Consumer consumer2, CallLog callLog) throws Exception {
        boolean hasMorePages = callLog.hasMorePages();
        boolean z2 = hasMorePages;
        if (!hasMorePages) {
            z2 = hasMorePages;
            if (callLog.getCount() != -1) {
                z2 = callLog.getCount() - (callLog.getPage() * callLog.getPageSize()) > 0;
            }
        }
        if (z2) {
            LogUtil.m5632o("ApiWrapper#", "Got items from control number. On page " + callLog.getPage() + " with page size of " + callLog.getPageSize() + " there are some itemsLeft, so going to get next page.");
            if (z) {
                m6772i0(null, null, callLog.getPage() + 1, i, true);
            } else {
                m6772i0(consumer, consumer2, callLog.getPage() + 1, i, false);
            }
        }
    }

    /* renamed from: b */
    public static Observable<UserPreferenceStatus> m6787b(List<UserPreference> list) {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (UserPreference userPreference : list) {
            arrayList.add(ApiUtils.m6862f(userPreference));
        }
        UserPreferenceItemPostRequest userPreferenceItemPostRequest = new UserPreferenceItemPostRequest();
        userPreferenceItemPostRequest.setItems(arrayList);
        return m6779f(v).mo5501d(1, ApiUtils.m6828w(), userPreferenceItemPostRequest).subscribeOn(Schedulers.m3239b()).concatMap(C1698d0.f13284f).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c()).share();
    }

    /* renamed from: c */
    public static void m6785c(UserPreference userPreference, @Nullable Observer<UserPreferenceStatus> observer) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(userPreference);
        EventManager.m5721e(userPreference);
        m6783d(arrayList, observer);
    }

    /* renamed from: d */
    public static void m6783d(List<UserPreference> list, @Nullable Observer<UserPreferenceStatus> observer) {
        Observable<UserPreferenceStatus> b = m6787b(list);
        if (b == null) {
            if (observer != null) {
                observer.onError(new ApiUtils.RetrofitBuildError());
            }
        } else if (observer != null) {
            b.subscribe(observer);
        } else {
            b.subscribe(ApiUtils.f13218a);
        }
    }

    @Nullable
    /* renamed from: e */
    public static Observable<String> m6781e() {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        String w = ApiUtils.m6828w();
        return m6779f(v).mo5499f(1, w, PhoneNumberHelper.m5401r(w)).subscribeOn(Schedulers.m3239b()).doOnNext(C1766q3.f13413f).map(C1776s3.f13423f).retryWhen(new RetrySitError()).retryWhen(new RetryError()).observeOn(AndroidSchedulers.m4448c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public static List<RecentActivityDisplayable> m6780e0(List<RecentActivityDisplayable> list) {
        ArrayList arrayList = new ArrayList();
        for (RecentActivityDisplayable recentActivityDisplayable : list) {
            if (recentActivityDisplayable.getCommEventType() == ApiUtils.CommEventType.TEXT.getValue()) {
                arrayList.add(recentActivityDisplayable);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    private static ActivityLogApi m6779f(Retrofit retrofit) {
        if (!BuildUtils.m5848f()) {
            return (ActivityLogApi) retrofit.create(ActivityLogApi.class);
        }
        if (f13228a == null) {
            f13228a = new MockActivityLogApi(retrofit);
        }
        return f13228a;
    }

    /* renamed from: f0 */
    public static Observable<Response<Void>> m6778f0(List<ReportItem> list) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        ReportRequest reportRequest = new ReportRequest();
        reportRequest.setReportItems(list);
        reportRequest.setClientIdentifier(MainApplication.m7528l().getPackageName());
        reportRequest.setReportTimestamp(simpleDateFormat.format(new Date()));
        reportRequest.setReportTimezone(DeviceInfoUtils.m5756h());
        reportRequest.setReportTimezoneDst(Boolean.valueOf(DeviceInfoUtils.m5761c()));
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5495j(1, ApiUtils.m6828w(), reportRequest).map(C1682a.f13259f).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    @Nonnull
    /* renamed from: g */
    public static Observable<Response<Void>> m6777g(final UserPreference userPreference) {
        LogUtil.m5632o("ApiWrapper#deleteCallerSetting", "deleting setting: " + userPreference.getE164Number() + "  action -> " + userPreference.getAction());
        if (userPreference.getPreferenceId() == null || userPreference.getPreferenceId().isEmpty()) {
            return Observable.error(new ApiUtils.ApiCallBuildError("Request could not be completed because preference id is missing"));
        }
        Retrofit v = m6755v();
        if (v == null) {
            return Observable.error(new ApiUtils.RetrofitBuildError());
        }
        final String e164Number = userPreference.getE164Number();
        return m6779f(v).mo5503b(1, ApiUtils.m6828w(), userPreference.getPreferenceId()).map(C1682a.f13259f).subscribeOn(Schedulers.m3239b()).map(new Function() { // from class: com.tmobile.services.nameid.api.e0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ApiWrapper.m6813C(UserPreference.this, e164Number, (Response) obj);
            }
        }).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: g0 */
    public static Observable<Response<Void>> m6776g0(List<CategorySetting> list) {
        CategorySettingList categorySettingList = new CategorySettingList();
        categorySettingList.setSettings(list);
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5491n(1, ApiUtils.m6828w(), categorySettingList).map(C1682a.f13259f).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: h */
    public static void m6775h(UserPreference userPreference, @Nullable Observer<Response<Void>> observer) {
        if (observer != null) {
            m6777g(userPreference).subscribe(observer);
        } else {
            m6777g(userPreference).subscribe(C1718h0.f13318f, C1786v.f13440f);
        }
    }

    @Nullable
    /* renamed from: h0 */
    public static Observable<Response<Void>> m6774h0(int i, boolean z, int i2) {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        CategorySetting categorySetting = new CategorySetting();
        categorySetting.setBlocked(z);
        categorySetting.setDisposition(i2);
        categorySetting.setBucketId(i);
        CategorySettingList categorySettingList = new CategorySettingList();
        ArrayList arrayList = new ArrayList();
        arrayList.add(categorySetting);
        categorySettingList.setSettings(arrayList);
        return m6779f(v).mo5491n(1, ApiUtils.m6828w(), categorySettingList).map(C1682a.f13259f).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    @Nullable
    /* renamed from: i */
    public static Observable<Caller> m6773i(final String str, final boolean z, final boolean z2) {
        LogUtil.m5643d("ApiWrapper#doLookup", "number:" + str + "    categorySuppressed?" + z + "   nameSuppressed?" + z2);
        String i = PhoneNumberHelper.m5410i(str);
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5498g(1, ApiUtils.m6828w(), i).subscribeOn(Schedulers.m3239b()).map(new Function() { // from class: com.tmobile.services.nameid.api.t0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Caller b0;
                b0 = ApiUtils.m6869b0((LookupResponse) obj, str, z, z2);
                return b0;
            }
        }).map(C1733k0.f13341f).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: i0 */
    private static void m6772i0(@Nullable final Consumer<List<ApiUtils.ActivityFromCaller>> consumer, @Nullable final Consumer<Throwable> consumer2, int i, final int i2, final boolean z) {
        Retrofit v = m6755v();
        if (v != null) {
            Consumer<Throwable> consumer3 = consumer2 != null ? consumer2 : C1803z0.f13466f;
            if (BuildUtils.m5848f()) {
                LogUtil.m5643d("ApiWrapper##updateCallLog", "is no backend build");
                CallLog callLog = new CallLog();
                callLog.setItems(new LinkedList());
                callLog.setMorePages(false);
                callLog.setPage(0);
                callLog.setPageSize(0);
                Observable.just(callLog);
                return;
            }
            ActivityLogApi f = m6779f(v);
            String w = ApiUtils.m6828w();
            Observable<CallLog> share = f.mo5494k(1, w, Integer.valueOf(i), null, "fromctrlnum:" + i2).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).share();
            Observable share2 = share.map(C1748n0.f13377f).map(C1713g0.f13308f).share();
            if (consumer != null) {
                share2.observeOn(AndroidSchedulers.m4448c()).subscribe(consumer, consumer3);
            }
            share.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.y0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ApiWrapper.m6788a0(z, i2, consumer, consumer2, (CallLog) obj);
                }
            }, consumer3);
        } else if (consumer2 != null) {
            Observable.just(new ApiUtils.RetrofitBuildError()).subscribe(consumer2);
        }
    }

    /* renamed from: j */
    public static Observable<List<RecentActivityDisplayable>> m6771j(String str, int i, int i2) {
        LogUtil.m5643d("ApiWrapper#getCallsFrom", "getting calls from " + str);
        String i3 = PhoneNumberHelper.m5410i(str);
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        ActivityLogApi f = m6779f(v);
        String w = ApiUtils.m6828w();
        return f.mo5494k(1, w, Integer.valueOf(i + 1), Integer.valueOf(i2), "cn:" + i3).subscribeOn(Schedulers.m3239b()).map(C1787v0.f13441f).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: j0 */
    public static void m6770j0(@Nullable Consumer<List<ApiUtils.ActivityFromCaller>> consumer, @Nullable Consumer<Throwable> consumer2, boolean z) {
        m6772i0(consumer, consumer2, 1, ApiUtils.m6848m(), z);
    }

    @Nullable
    /* renamed from: k */
    public static Observable<List<ApiUtils.ActivityFromCaller>> m6769k(int i, final boolean z, final boolean z2) {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5494k(1, ApiUtils.m6828w(), Integer.valueOf(i), 50, null).subscribeOn(Schedulers.m3239b()).map(new Function() { // from class: com.tmobile.services.nameid.api.a0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List c;
                c = ApiUtils.m6868c((CallLog) obj, z, z2, false);
                return c;
            }
        }).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    @Nonnull
    /* renamed from: k0 */
    public static Observable<Response<Void>> m6768k0(UserPreference userPreference) {
        LogUtil.m5632o("ApiWrapper#updateCallerSetting", "updating setting: " + userPreference.getE164Number() + "  action -> " + userPreference.getAction());
        Retrofit v = m6755v();
        if (v == null) {
            return Observable.error(new ApiUtils.RetrofitBuildError());
        }
        EventManager.m5721e(userPreference);
        return m6779f(v).mo5502c(1, ApiUtils.m6828w(), userPreference.getPreferenceId(), ApiUtils.m6864e(userPreference)).map(C1682a.f13259f).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    @Nullable
    /* renamed from: l */
    public static Observable<List<ApiUtils.ActivityFromCaller>> m6767l(Date date, int i, final boolean z, final boolean z2) {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5494k(1, ApiUtils.m6828w(), 1, Integer.valueOf(i), ApiUtils.m6854j(date)).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).map(new Function() { // from class: com.tmobile.services.nameid.api.q0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List c;
                c = ApiUtils.m6868c((CallLog) obj, z, z2, false);
                return c;
            }
        }).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: l0 */
    public static void m6766l0(UserPreference userPreference, @Nullable Observer<Response<Void>> observer) {
        Observable<Response<Void>> k0 = m6768k0(userPreference);
        if (observer != null) {
            k0.subscribe(observer);
        } else {
            k0.subscribe(C1768r0.f13415f, C1798y.f13457f);
        }
    }

    /* renamed from: m */
    public static Observable<List<ApiUtils.SettingForCaller>> m6765m(final boolean z) {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5496i(1, ApiUtils.m6828w(), null, null).subscribeOn(Schedulers.m3239b()).map(C1684a1.f13262f).map(new Function() { // from class: com.tmobile.services.nameid.api.w
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ApiUtils.m6849l0((List) obj, z);
            }
        }).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    @Nullable
    /* renamed from: m0 */
    public static void m6764m0(@Nullable Consumer<List<EventSummaryItem>> consumer, @Nullable Consumer<Throwable> consumer2) {
        if (consumer2 == null) {
            consumer2 = C1758p0.f13397f;
        }
        Observable<List<EventSummaryItem>> s = m6758s(1, 3, ApiUtils.m6896C(DateUtils.m5786i(ApiUtils.m6840q(30), ApiUtils.m6832u())));
        if (consumer != null && s != null) {
            s.observeOn(AndroidSchedulers.m4448c()).subscribe(consumer, consumer2);
        }
    }

    /* renamed from: n */
    public static Observable<CategorySettingList> m6763n() {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5504a(1, ApiUtils.m6828w()).subscribeOn(Schedulers.m3239b()).map(C1791w0.f13447f).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: o */
    public static Observable<List<RecentActivityDisplayable>> m6762o(String str, int i, int i2) {
        LogUtil.m5643d("ApiWrapper#getEventSummaryMessagesFrom", "getting calls from " + str);
        String i3 = PhoneNumberHelper.m5410i(str);
        String i4 = ApiUtils.m6856i("cn:" + i3, ApiUtils.m6895D());
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5492m(1, ApiUtils.m6828w(), 2, m6754w(), i, i2, i4, "date:desc").subscribeOn(Schedulers.m3239b()).map(C1781t3.f13430f).map(C1728j0.f13329f).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: p */
    public static Observable<FeatureState> m6761p() {
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5497h(1, ApiUtils.m6828w()).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c()).map(C1693c0.f13275f);
    }

    /* renamed from: q */
    public static void m6760q(Consumer<FeatureState> consumer, @Nullable Consumer<Throwable> consumer2) {
        Observable<FeatureState> p = m6761p();
        if (p == null) {
            if (consumer2 != null) {
                Observable.just(new ApiUtils.RetrofitBuildError()).subscribe(consumer2);
            }
        } else if (consumer2 != null) {
            p.subscribe(consumer, consumer2);
        } else {
            p.subscribe(consumer, C1743m0.f13363f);
        }
    }

    @Nullable
    /* renamed from: r */
    public static FeatureState m6759r() {
        if (MainApplication.m7528l() == null) {
            return null;
        }
        try {
            Retrofit v = m6755v();
            if (v == null) {
                return null;
            }
            return m6779f(v).mo5500e(1, ApiUtils.m6828w()).execute().body();
        } catch (Exception e) {
            LogUtil.m5641f("ApiWrapper#", "", e);
            return null;
        }
    }

    @Nullable
    /* renamed from: s */
    private static Observable<List<EventSummaryItem>> m6758s(final int i, final int i2, final String str) {
        Retrofit v;
        LogUtil.m5643d("ApiWrapper#getNewerEventSummaryItems", "page " + i + " of " + i2);
        if (i <= i2 && (v = m6755v()) != null) {
            return m6779f(v).mo5492m(1, ApiUtils.m6828w(), 2, m6754w(), i, 50, str, "date:desc").subscribeOn(Schedulers.m3239b()).doOnNext(new Consumer() { // from class: com.tmobile.services.nameid.api.l0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ApiWrapper.m6803M(i, i2, str, (EventSummary) obj);
                }
            }).map(C1771r3.f13418f).doOnNext(C1723i0.f13323f).retryWhen(new RetrySitError());
        }
        return null;
    }

    /* renamed from: t */
    public static boolean m6757t(@Nullable Consumer<List<EventSummaryItem>> consumer, @Nullable Consumer<Throwable> consumer2) {
        Observable<List<EventSummaryItem>> u = m6756u(1, 3, ApiUtils.m6856i(ApiUtils.m6895D(), ApiUtils.m6838r(ApiUtils.m6826x())));
        if (u == null) {
            return false;
        }
        C1708f0 f0Var = C1708f0.f13298f;
        if (consumer != null && consumer2 != null) {
            u.subscribe(consumer, consumer2);
        } else if (consumer != null) {
            u.subscribe(consumer, f0Var);
        } else {
            u.subscribe(C1783u0.f13433f, f0Var);
        }
        LogUtil.m5632o("ApiWrapper#getNextEventSummaryPage", "Getting next page");
        return true;
    }

    @Nullable
    /* renamed from: u */
    public static Observable<List<EventSummaryItem>> m6756u(final int i, final int i2, final String str) {
        Retrofit v;
        LogUtil.m5643d("ApiWrapper#getOlderEventSummaryItems", "page " + i + " of " + i2);
        if (i <= i2 && (v = m6755v()) != null) {
            return m6779f(v).mo5492m(1, ApiUtils.m6828w(), 2, m6754w(), i, 50, str, "date:desc").subscribeOn(Schedulers.m3239b()).doOnNext(new Consumer() { // from class: com.tmobile.services.nameid.api.o0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ApiWrapper.m6799Q(i, i2, str, (EventSummary) obj);
                }
            }).map(C1771r3.f13418f).doOnNext(C1773s0.f13420f).retryWhen(new RetrySitError());
        }
        return null;
    }

    @Nullable
    /* renamed from: v */
    private static Retrofit m6755v() {
        Context l = MainApplication.m7528l();
        String g = PreferenceUtils.m5390g("PREF_SIT");
        if (l == null) {
            LogUtil.m5632o("ApiWrapper#", "Tried to build retrofit but context is null.");
            return null;
        }
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(C1688b0.f13267a);
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        return new Retrofit.Builder().baseUrl(BuildUtils.m5845i() ? "https://tst-api.fosrvt.com" : BuildUtils.m5847g() ? "https://wsg.t-mobile.com/firstorion/" : "https://sandbox-api.fosrvt.com:8080").addConverterFactory(GsonConverterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(new HeaderInterceptor(g)).addInterceptor(new ChuckerInterceptor(l)).addInterceptor(httpLoggingInterceptor).build()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build();
    }

    /* renamed from: w */
    private static int m6754w() {
        return TimeZone.getDefault().getOffset(new Date().getTime()) / 60000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public static Observable<UserPreferenceStatus> m6753x(String str, String str2) {
        String i = PhoneNumberHelper.m5410i(str);
        Retrofit v = m6755v();
        if (v == null) {
            return null;
        }
        return m6779f(v).mo5493l(1, i, str2).subscribeOn(Schedulers.m3239b()).retryWhen(new RetrySitError()).observeOn(AndroidSchedulers.m4448c()).share();
    }
}
