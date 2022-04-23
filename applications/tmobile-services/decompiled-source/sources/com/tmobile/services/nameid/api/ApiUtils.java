package com.tmobile.services.nameid.api;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.CallLog;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.CategorySettingList;
import com.tmobile.services.nameid.model.CheckName;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.LookupResponse;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceItem;
import com.tmobile.services.nameid.model.UserPreferenceItemPostRequest;
import com.tmobile.services.nameid.model.UserPreferencePutItem;
import com.tmobile.services.nameid.model.UserPreferencePutRequest;
import com.tmobile.services.nameid.model.UserPreferenceResponse;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.CallLogHelperFacade;
import com.tmobile.services.nameid.utility.Command;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.StringParsingUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import retrofit2.HttpException;
import retrofit2.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils.class */
public class ApiUtils {

    /* renamed from: a */
    static Observer<UserPreferenceStatus> f13218a = new Observer<UserPreferenceStatus>() { // from class: com.tmobile.services.nameid.api.ApiUtils.1
        /* renamed from: a */
        public void onNext(@Nonnull UserPreferenceStatus userPreferenceStatus) {
            ApiUtils.m6823y0(userPreferenceStatus);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@Nonnull Throwable th) {
            LogUtil.m5641f("ApiUtils#", "error updating caller setting", th);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@Nonnull Disposable disposable) {
        }
    };

    /* renamed from: com.tmobile.services.nameid.api.ApiUtils$2 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$2.class */
    static /* synthetic */ class C16762 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13219a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[SubscriptionHelper.State.values().length];
            f13219a = iArr;
            try {
                iArr[SubscriptionHelper.State.TRIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13219a[SubscriptionHelper.State.PREMIUM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13219a[SubscriptionHelper.State.REDUCED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13219a[SubscriptionHelper.State.REDUCED_METRO.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$ActivityFromCaller.class */
    public static class ActivityFromCaller implements Comparable<ActivityFromCaller> {

        /* renamed from: f */
        private ActivityItem f13220f;

        public ActivityFromCaller(ActivityItem activityItem, Caller caller) {
            this.f13220f = activityItem;
        }

        /* renamed from: a */
        public int compareTo(ActivityFromCaller activityFromCaller) {
            return this.f13220f.compareTo(activityFromCaller.f13220f);
        }

        /* renamed from: b */
        public ActivityItem m6819b() {
            return this.f13220f;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof ActivityFromCaller) && this.f13220f.equals(obj);
        }

        public int hashCode() {
            return this.f13220f.getId().hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$ApiCallBuildError.class */
    static class ApiCallBuildError extends Exception {
        /* JADX INFO: Access modifiers changed from: package-private */
        public ApiCallBuildError(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$CommEventType.class */
    public enum CommEventType {
        ALL(0),
        CALL(1),
        TEXT(2),
        NONE(4);
        
        private final int value;

        CommEventType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$MaxRetriesError.class */
    public static class MaxRetriesError extends Exception {
        MaxRetriesError() {
            super("Retried too many times. Giving up.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$Mode.class */
    public enum Mode {
        ADD,
        UPDATE,
        DELETE
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$RealmAddRollback.class */
    private static class RealmAddRollback implements Command {

        /* renamed from: a */
        private UserPreference f13221a;

        RealmAddRollback(UserPreference userPreference) {
            this.f13221a = userPreference;
        }

        @Override // com.tmobile.services.nameid.utility.Command
        public void execute() {
            ApiUtils.m6850l(this.f13221a);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$RealmDeleteRollback.class */
    private static class RealmDeleteRollback implements Command {

        /* renamed from: a */
        private UserPreference f13222a;

        RealmDeleteRollback(UserPreference userPreference) {
            this.f13222a = userPreference;
        }

        @Override // com.tmobile.services.nameid.utility.Command
        public void execute() {
            ApiUtils.m6872a(this.f13222a);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$RealmUpdateRollback.class */
    private static class RealmUpdateRollback implements Command {

        /* renamed from: a */
        private UserPreference f13223a;

        RealmUpdateRollback(UserPreference userPreference) {
            this.f13223a = userPreference;
        }

        @Override // com.tmobile.services.nameid.utility.Command
        public void execute() {
            UserPreference userPreference = this.f13223a;
            if (userPreference != null) {
                ApiUtils.m6857h0(userPreference);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$RetrofitBuildError.class */
    static class RetrofitBuildError extends Exception {
        /* JADX INFO: Access modifiers changed from: package-private */
        public RetrofitBuildError() {
            super("Retrofit couldn't be built because either Context is null or SIT token is missing.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$RetryWithDelay.class */
    static class RetryWithDelay implements Function<Observable<? extends Throwable>, Observable<?>> {

        /* renamed from: f */
        private final int f13224f;

        /* renamed from: g */
        private final int f13225g;

        /* renamed from: h */
        private int f13226h;

        /* renamed from: a */
        public Observable<?> apply(Observable<? extends Throwable> observable) {
            return observable.flatMap(new Function() { // from class: com.tmobile.services.nameid.api.i
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return ApiUtils.RetryWithDelay.this.m6817b((Throwable) obj);
                }
            });
        }

        /* renamed from: b */
        public /* synthetic */ ObservableSource m6817b(Throwable th) throws Exception {
            LogUtil.m5632o("ApiUtils#", "got exception while getting bulk lookup status " + th.toString());
            boolean z = (th instanceof HttpException) && ((HttpException) th).code() == 404;
            if (z) {
                int i = this.f13226h + 1;
                this.f13226h = i;
                if (i < this.f13224f) {
                    LogUtil.m5632o("ApiUtils#", "bulk lookup status returned 404 retrying");
                    return Observable.timer(this.f13225g, TimeUnit.MILLISECONDS);
                }
            }
            if (z) {
                LogUtil.m5632o("ApiUtils#", "bulk lookup status returned 404 but we've retried too many times, giving up");
            }
            return Observable.error(new MaxRetriesError());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ApiUtils$SettingForCaller.class */
    public static class SettingForCaller {

        /* renamed from: a */
        private UserPreference f13227a;

        SettingForCaller(UserPreference userPreference, @Nullable Caller caller) {
            this.f13227a = userPreference;
        }

        /* renamed from: a */
        UserPreference m6816a() {
            return this.f13227a;
        }
    }

    private ApiUtils() {
        throw new IllegalAccessError("This class should not be created, it's a utility class.");
    }

    /* renamed from: A */
    public static Command m6898A(UserPreference userPreference) {
        return new RealmUpdateRollback(userPreference);
    }

    /* renamed from: B */
    public static boolean m6897B(FeatureState featureState) {
        return featureState.getActualNapFeatures().toLowerCase().contains("scamid-blk");
    }

    /* renamed from: C */
    public static String m6896C(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", DeviceInfoUtils.m5758f());
        return "from:" + simpleDateFormat.format(date);
    }

    /* renamed from: D */
    public static String m6895D() {
        return m6896C(m6840q(30));
    }

    /* renamed from: E */
    public static boolean m6894E(FeatureState featureState, SubscriptionHelper.State state) {
        boolean z = "active".equalsIgnoreCase(featureState.getState()) || "trial".equalsIgnoreCase(featureState.getState());
        String lowerCase = featureState.getActualNapFeatures().toLowerCase();
        LogUtil.m5632o("ApiUtils##isFeatureStateUpdated", "state: " + featureState.getState() + " napFeatures: " + lowerCase);
        int i = C16762.f13219a[state.ordinal()];
        boolean G = i != 1 ? i != 2 ? i != 3 ? i != 4 ? false : m6892G(lowerCase) : lowerCase.contains("screen") : m6893F(lowerCase) : m6890I(lowerCase);
        LogUtil.m5632o("ApiUtils##isFeatureStateUpdated", "active? " + z + " correctType? " + G + " store state: " + state.name());
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (G) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: F */
    private static boolean m6893F(String str) {
        return str.contains("cnambase") || str.contains("cnambndl") || str.contains("cmgr-spt");
    }

    /* renamed from: G */
    private static boolean m6892G(String str) {
        return str.matches(".*CNAMMPCS([^-].*)?") || str.matches(".*cnammpcs([^-].*)?");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        if (r0.isPending() != false) goto L_0x0048;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m6891H() {
        /*
            io.realm.Realm r0 = io.realm.Realm.m3064G0()
            r3 = r0
            boolean r0 = com.tmobile.services.nameid.utility.BuildUtils.m5851c()     // Catch: all -> 0x0052
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002e
            r0 = r3
            java.lang.Class<com.tmobile.services.nameid.model.TmoUserStatus> r1 = com.tmobile.services.nameid.model.TmoUserStatus.class
            io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x0052
            java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x0052
            com.tmobile.services.nameid.model.TmoUserStatus r0 = (com.tmobile.services.nameid.model.TmoUserStatus) r0     // Catch: all -> 0x0052
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0029
            r0 = r6
            boolean r0 = r0.isPending()     // Catch: all -> 0x0052
            if (r0 == 0) goto L_0x0029
            goto L_0x0048
        L_0x0029:
            r0 = 0
            r5 = r0
            goto L_0x0048
        L_0x002e:
            r0 = r3
            java.lang.Class<com.tmobile.services.nameid.model.LicenseResponseItem> r1 = com.tmobile.services.nameid.model.LicenseResponseItem.class
            io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x0052
            java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x0052
            com.tmobile.services.nameid.model.LicenseResponseItem r0 = (com.tmobile.services.nameid.model.LicenseResponseItem) r0     // Catch: all -> 0x0052
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0029
            r0 = r6
            boolean r0 = r0.isPending()     // Catch: all -> 0x0052
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0029
        L_0x0048:
            r0 = r3
            if (r0 == 0) goto L_0x0050
            r0 = r3
            r0.close()
        L_0x0050:
            r0 = r5
            return r0
        L_0x0052:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch: all -> 0x0057
        L_0x0057:
            r6 = move-exception
            r0 = r3
            if (r0 == 0) goto L_0x006a
            r0 = r3
            r0.close()     // Catch: all -> 0x0063
            goto L_0x006a
        L_0x0063:
            r3 = move-exception
            r0 = r7
            r1 = r3
            r0.addSuppressed(r1)
        L_0x006a:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.api.ApiUtils.m6891H():boolean");
    }

    /* renamed from: I */
    private static boolean m6890I(String str) {
        return str.contains("cnamfree") || str.contains("cmgrfree-spt");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public static /* synthetic */ void m6889J(UserPreference userPreference, Realm realm) {
        if (userPreference.getCommEventType() == MessageUserPreference.CommEventType.TEXT.getValue()) {
            realm.m3045v0((MessageUserPreference) userPreference, new ImportFlag[0]);
        } else {
            realm.m3045v0((CallerSetting) userPreference, new ImportFlag[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public static /* synthetic */ void m6888K(UserPreference userPreference, Realm realm) {
        if (userPreference instanceof MessageUserPreference) {
            ((MessageUserPreference) userPreference).deleteFromRealm();
        } else {
            ((CallerSetting) userPreference).deleteFromRealm();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public static /* synthetic */ void m6887L(List list, Realm realm, List list2, Realm realm2) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ActivityFromCaller activityFromCaller = (ActivityFromCaller) it.next();
            ActivityItem b = activityFromCaller.m6819b();
            RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
            Q0.m2885q("controlNumber", Integer.valueOf(b.getControlNumber()));
            if (((ActivityItem) Q0.m2916G()) == null) {
                realm.m3045v0(b, new ImportFlag[0]);
                list2.add(activityFromCaller);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public static /* synthetic */ void m6885N(List list, Realm realm, List list2, Realm realm2) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EventSummaryItem eventSummaryItem = (EventSummaryItem) it.next();
            if (eventSummaryItem.getName().trim().isEmpty()) {
                String i = WidgetUtils.m5230i(eventSummaryItem.getOriginatingNumber());
                eventSummaryItem.setName(i);
                LogUtil.m5643d("ApiUtils#putEventSummaryItemsInRealm", "Name was blank. Looked up in Realm: " + i);
            }
            RealmQuery Q0 = realm.m3053Q0(EventSummaryItem.class);
            Q0.m2882t("originatingNumber", eventSummaryItem.getOriginatingNumber());
            Q0.m2880v("date", eventSummaryItem.getDate());
            Q0.m2885q("disposition", Integer.valueOf(eventSummaryItem.getDisposition()));
            EventSummaryItem eventSummaryItem2 = (EventSummaryItem) Q0.m2916G();
            if (eventSummaryItem2 != null) {
                eventSummaryItem.setId(eventSummaryItem2.getId());
            }
            realm.m3045v0(eventSummaryItem, new ImportFlag[0]);
            list2.add(eventSummaryItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O */
    public static /* synthetic */ void m6884O(UserPreference userPreference, Realm realm) {
        if (userPreference.getCommEventType() == MessageUserPreference.CommEventType.TEXT.getValue()) {
            realm.m3045v0((MessageUserPreference) userPreference, new ImportFlag[0]);
        } else {
            realm.m3045v0((CallerSetting) userPreference, new ImportFlag[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: P */
    public static /* synthetic */ void m6883P(boolean z, List list, Realm realm) {
        if (z) {
            realm.m3068C0(CallerSetting.class);
            realm.m3068C0(MessageUserPreference.class);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UserPreference a = ((SettingForCaller) it.next()).m6816a();
            if (a instanceof MessageUserPreference) {
                m6851k0(realm, (MessageUserPreference) a);
            } else if (a instanceof CallerSetting) {
                m6853j0(realm, (CallerSetting) a);
            }
        }
        if (z) {
            m6855i0(realm);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Q */
    public static /* synthetic */ void m6882Q(CategorySettingList categorySettingList) throws Exception {
        LogUtil.m5632o("ApiUtils#tryGetCategories", "Successfully got categories. Set PREF_CATEGORIES_SYNCED to true.");
        PreferenceUtils.m5386k("PREF_CATEGORIES_SYNCED", true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: R */
    public static /* synthetic */ void m6881R(Throwable th) throws Exception {
        LogUtil.m5641f("ApiUtils#tryGetCategories", "Error getting categories. Set PREF_CATEGORIES_SYNCED to false.", th);
        PreferenceUtils.m5386k("PREF_CATEGORIES_SYNCED", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public static /* synthetic */ void m6879T(Throwable th) throws Exception {
        PreferenceUtils.m5386k("PREF_USER_PREFERENCES_SYNCED", false);
        LogUtil.m5641f("ApiUtils#tryGetUserPreferences", "Error getting settings for caller", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public static /* synthetic */ void m6878U(CheckName checkName, Realm realm) {
        realm.m3068C0(CheckName.class);
        realm.m3057M0(checkName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public static /* synthetic */ void m6877V(Realm realm, boolean z, Realm realm2) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) realm.m3053Q0(TmoUserStatus.class).m2916G();
        if (tmoUserStatus != null) {
            tmoUserStatus.setCNAMON(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public static /* synthetic */ void m6876W(UserPreference userPreference, int i, boolean z, String str, Realm realm) {
        userPreference.setAction(i);
        userPreference.setPending(z);
        userPreference.setCallerId(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public static /* synthetic */ void m6875X(UserPreferenceItem userPreferenceItem, MessageUserPreference messageUserPreference, String str, Realm realm) {
        String id = userPreferenceItem.getId();
        if (!messageUserPreference.getPreferenceId().equals(id)) {
            LogUtil.m5643d("ApiUtils#userPrefStatusToMessageUserPref", "Replacing entry for+ " + str);
            realm.m3056N0(messageUserPreference.copy(id));
            messageUserPreference.deleteFromRealm();
            return;
        }
        LogUtil.m5643d("ApiUtils#userPrefStatusToMessageUserPref", "Won't replace existing entry for+ " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z */
    public static /* synthetic */ void m6873Z(CallerSetting callerSetting, UserPreferenceItem userPreferenceItem, Realm realm) {
        callerSetting.setPreferenceId(userPreferenceItem.getId());
        callerSetting.setUpdateFailed(false);
    }

    /* renamed from: a */
    public static void m6872a(final UserPreference userPreference) {
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.s
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6889J(UserPreference.this, realm);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a0 */
    public static /* synthetic */ void m6871a0(CallerSetting callerSetting, Realm realm) {
        if (callerSetting.isFromMigration()) {
            callerSetting.setUpdateFailed(true);
        } else {
            callerSetting.deleteFromRealm();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ActivityItem m6870b(CallLog.CallLogItem callLogItem, String str, boolean z, boolean z2) {
        ActivityItem activityItem = new ActivityItem();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        Date date = new Date();
        try {
            date = simpleDateFormat.parse(callLogItem.getDts());
        } catch (Exception e) {
            LogUtil.m5641f("ApiUtils#", "error getting date", e);
        }
        activityItem.setDate(date);
        activityItem.setId(callLogItem.getId());
        activityItem.setControlNumber(callLogItem.getControlNumber());
        activityItem.setUnread(z);
        activityItem.setName(callLogItem.getName());
        activityItem.setBucketId(callLogItem.getBucketId());
        activityItem.setCallerType(callLogItem.getType());
        if (callLogItem.isApproved()) {
            activityItem.setType(ActivityItem.Type.APPROVED.getValue());
        } else {
            activityItem.setType(callLogItem.getDisposition());
        }
        if (z2) {
            activityItem.setIsEmail(true);
            activityItem.setE164Number(callLogItem.getNumber());
        } else {
            activityItem.setE164Number(PhoneNumberHelper.m5414e(callLogItem.getNumber(), ""));
        }
        return activityItem;
    }

    /* renamed from: b0 */
    public static Caller m6869b0(LookupResponse lookupResponse, String str, boolean z, boolean z2) {
        Caller caller = new Caller();
        if (!lookupResponse.getName().equalsIgnoreCase("not found")) {
            caller.setName(lookupResponse.getName());
        } else {
            caller.setName("");
        }
        caller.setE164Number(PhoneNumberHelper.m5415d(lookupResponse.getNumber()));
        caller.setDate(new Date());
        caller.setBucketId(lookupResponse.getBucketId());
        caller.setNumberAsInput(str);
        caller.setCategorySuppressed(z);
        caller.setNameSuppressed(z2);
        return caller;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static List<ActivityFromCaller> m6868c(CallLog callLog, boolean z, boolean z2, boolean z3) {
        return m6866d(callLog, z, z2, z3, CallLogHelperFacade.m5829a());
    }

    /* renamed from: c0 */
    public static void m6867c0() {
        try {
            Realm G0 = Realm.m3064G0();
            Number Q = G0.m3053Q0(ActivityItem.class).m2906Q("controlNumber");
            if (Q != null) {
                PreferenceUtils.m5385l("PREF_MINIMUM_CONTROL_NUMBER", Q.intValue());
            }
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("ApiUtils#", "Error getting top control number for ActivityItems:", e);
        }
    }

    /* renamed from: d */
    public static List<ActivityFromCaller> m6866d(CallLog callLog, boolean z, boolean z2, boolean z3, CallLogHelperFacade callLogHelperFacade) {
        ArrayList arrayList = new ArrayList();
        for (CallLog.CallLogItem callLogItem : callLog.getItems()) {
            Caller caller = new Caller();
            Context l = MainApplication.m7528l();
            if (callLogItem.getNumber().equals("0000000000") && callLogItem.getBucketId() == CategorySetting.BucketId.NONE.getValue() && l != null) {
                callLogItem.setName(l.getString(C1517R.string.private_caller_name));
            } else if ("not found".equalsIgnoreCase(callLogItem.getName())) {
                callLogItem.setName("");
            }
            caller.setName(callLogItem.getName());
            caller.setNumberAsInput(callLogItem.getNumber());
            if (StringParsingUtils.m5336d(callLogItem.getNumber())) {
                caller.setIsEmail(true);
                caller.setE164Number(callLogItem.getNumber());
            } else {
                caller.setE164Number(PhoneNumberHelper.m5414e(callLogItem.getNumber(), ""));
            }
            caller.setBucketId(callLogItem.getBucketId());
            if (!caller.isScammer() || Caller.shouldSuppressScam()) {
                caller.setCategorySuppressed(z);
            } else {
                caller.setCategorySuppressed(false);
            }
            caller.setNameSuppressed(z2);
            ActivityItem b = m6870b(callLogItem, caller.getId(), z3, caller.isEmail());
            caller.setDate(b.getDate());
            arrayList.add(new ActivityFromCaller(b, caller));
        }
        return arrayList;
    }

    /* renamed from: d0 */
    public static void m6865d0() {
        LogUtil.m5643d("ApiUtils#", "Attempting to purge/resync user preferences.");
        PreferenceUtils.m5386k("PREF_USER_PREFERENCES_SYNCED", false);
        m6843o0(true);
    }

    /* renamed from: e */
    public static UserPreferencePutRequest m6864e(UserPreference userPreference) {
        LogUtil.m5632o("ApiUtils#callerSettingToPutRequest", "setting: " + userPreference.getE164Number() + "  action -> " + userPreference.getAction());
        UserPreferencePutItem userPreferencePutItem = new UserPreferencePutItem();
        userPreferencePutItem.setDisposition(userPreference.getAction());
        UserPreferencePutRequest userPreferencePutRequest = new UserPreferencePutRequest();
        userPreferencePutRequest.setItem(userPreferencePutItem);
        return userPreferencePutRequest;
    }

    /* renamed from: e0 */
    public static List<ActivityFromCaller> m6863e0(final List<ActivityFromCaller> list, boolean z, boolean z2, int i, boolean z3) {
        final ArrayList<ActivityFromCaller> arrayList = new ArrayList();
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.n
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6887L(list, G0, arrayList, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("ApiUtils#", "Error putting ActivityItems in Realm: ", e);
        }
        if (!z) {
            for (ActivityFromCaller activityFromCaller : arrayList) {
                m6860g(activityFromCaller.m6819b());
            }
        }
        if (z2) {
            m6837r0(list, i, z3);
        }
        if (z && list.size() < i) {
            PreferenceUtils.m5386k("PREF_CALL_LOG_RETRIEVED_ALL_ITEMS", true);
        }
        return arrayList;
    }

    /* renamed from: f */
    public static UserPreferenceItemPostRequest.PostedUserPreferenceItem m6862f(UserPreference userPreference) {
        UserPreferenceItemPostRequest.PostedUserPreferenceItem postedUserPreferenceItem = new UserPreferenceItemPostRequest.PostedUserPreferenceItem();
        postedUserPreferenceItem.setNumber(PhoneNumberHelper.m5410i(userPreference.getE164Number()));
        postedUserPreferenceItem.setDisposition(userPreference.getAction());
        postedUserPreferenceItem.setCommEvent(userPreference.getCommEventType());
        return postedUserPreferenceItem;
    }

    /* renamed from: f0 */
    public static void m6861f0(@NonNull final Caller caller) {
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.d
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    Realm.this.m3045v0(caller, new ImportFlag[0]);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("ApiUtils#", "Error putting Caller in Realm: ", e);
        }
    }

    /* renamed from: g */
    private static void m6860g(ActivityItem activityItem) {
        String e164Number = activityItem.getE164Number();
        String w = m6828w();
        int bucketId = activityItem.getBucketId();
        String callerType = activityItem.getCallerType();
        int type = activityItem.getType();
        Date date = activityItem.getDate();
        if (bucketId == 0 || bucketId == 15) {
            AnalyticsWrapper.m5870j(e164Number, w, bucketId, callerType, type, date);
        }
    }

    /* renamed from: g0 */
    public static List<EventSummaryItem> m6859g0(final List<EventSummaryItem> list, boolean z, int i) {
        final ArrayList arrayList = new ArrayList();
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.p
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6885N(list, G0, arrayList, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("ApiUtils#", "Error inserting EventSummaryItems to Realm:", e);
        }
        return arrayList;
    }

    /* renamed from: h */
    public static Response<Void> m6858h(Response<Void> response) {
        if (response.isSuccessful()) {
            return response;
        }
        throw new HttpException(response);
    }

    /* renamed from: h0 */
    public static void m6857h0(final UserPreference userPreference) {
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.r
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6884O(UserPreference.this, realm);
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

    @NonNull
    /* renamed from: i */
    public static String m6856i(String... strArr) {
        if (strArr.length == 0) {
            return "";
        }
        boolean z = true;
        if (strArr.length == 1) {
            return strArr[0] == null ? "" : strArr[0];
        }
        StringBuilder sb = new StringBuilder(100);
        for (String str : strArr) {
            if (z) {
                z = false;
            } else {
                sb.append("|");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: i0 */
    private static void m6855i0(Realm realm) {
        LogUtil.m5643d("ApiUtils#restoreCallerIds", "");
        if (!realm.m3159X()) {
            LogUtil.m5631p("ApiUtils#", "Realm must be in a transaction. Do nothing.");
            return;
        }
        Iterator<E> it = realm.m3053Q0(CallerSetting.class).m2918E().iterator();
        while (it.hasNext()) {
            CallerSetting callerSetting = (CallerSetting) it.next();
            String e164Number = callerSetting.getE164Number();
            RealmQuery Q0 = realm.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", e164Number);
            Caller caller = (Caller) Q0.m2916G();
            if (caller != null) {
                callerSetting.setCallerId(caller.getId());
            }
        }
    }

    /* renamed from: j */
    public static String m6854j(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", DeviceInfoUtils.m5758f());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return "to:" + simpleDateFormat.format(date);
    }

    /* renamed from: j0 */
    private static void m6853j0(Realm realm, CallerSetting callerSetting) {
        LogUtil.m5643d("ApiUtils#saveCallerSetting", "");
        if (!realm.m3159X()) {
            LogUtil.m5631p("ApiUtils#", "Realm must be in a transaction. Do nothing.");
            return;
        }
        RealmQuery Q0 = realm.m3053Q0(CallerSetting.class);
        Q0.m2882t("e164Number", callerSetting.getE164Number());
        RealmResults E = Q0.m2918E();
        if (E.isEmpty()) {
            realm.m3046u0(callerSetting, new ImportFlag[0]);
            return;
        }
        LogUtil.m5643d("ApiUtils#saveCallerSetting", "replacing entry for+ " + callerSetting.getE164Number());
        ((CallerSetting) E.get(0)).setPreferenceId(callerSetting.getPreferenceId());
    }

    /* renamed from: k */
    private static void m6852k(final UserPreference userPreference) {
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.g
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6888K(UserPreference.this, realm);
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

    /* renamed from: k0 */
    private static void m6851k0(Realm realm, MessageUserPreference messageUserPreference) {
        LogUtil.m5643d("ApiUtils#saveMessageUserPreference", "");
        if (!realm.m3159X()) {
            LogUtil.m5631p("ApiUtils#", "Realm must be in a transaction. Do nothing.");
            return;
        }
        RealmQuery Q0 = realm.m3053Q0(MessageUserPreference.class);
        Q0.m2882t("e164Number", messageUserPreference.getE164Number());
        RealmResults E = Q0.m2918E();
        if (E.isEmpty()) {
            realm.m3046u0(messageUserPreference, new ImportFlag[0]);
            return;
        }
        LogUtil.m5643d("ApiUtils#saveMessageUserPreference", "replacing entry for+ " + messageUserPreference.getE164Number());
        MessageUserPreference messageUserPreference2 = (MessageUserPreference) E.m3098e();
        if (messageUserPreference2 != null) {
            String preferenceId = messageUserPreference2.getPreferenceId();
            String preferenceId2 = messageUserPreference.getPreferenceId();
            if (!preferenceId.equals(preferenceId2)) {
                realm.m3046u0(messageUserPreference2.copy(preferenceId2), new ImportFlag[0]);
                messageUserPreference2.deleteFromRealm();
            }
        }
    }

    /* renamed from: l */
    public static void m6850l(UserPreference userPreference) {
        UserPreference t = m6834t(userPreference);
        if (t != null) {
            m6852k(t);
        } else {
            LogUtil.m5631p("ApiUtils#deleteUserPrefInRealm", "Did not find preference in Realm for deletion.");
        }
    }

    /* renamed from: l0 */
    public static List<SettingForCaller> m6849l0(final List<SettingForCaller> list, final boolean z) {
        LogUtil.m5643d("ApiUtils#saveSettingsForCaller", "");
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.j
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6883P(z, list, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("ApiUtils#", "Error saving UserPreferences to Realm:", e);
        }
        return list;
    }

    /* renamed from: m */
    public static int m6848m() {
        Realm G0 = Realm.m3064G0();
        try {
            int n = m6846n(G0.m3053Q0(ActivityItem.class).m2918E().m3090r("controlNumber"));
            if (G0 != null) {
                G0.close();
            }
            return n;
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

    /* renamed from: m0 */
    public static void m6847m0() {
        m6845n0(false);
    }

    /* renamed from: n */
    public static int m6846n(List<ActivityItem> list) {
        int i;
        int i2 = 0;
        if (list.isEmpty()) {
            return 0;
        }
        int c = PreferenceUtils.m5394c("PREF_MINIMUM_CONTROL_NUMBER", 0);
        int i3 = 0;
        while (true) {
            i = i3;
            if (i3 >= list.size()) {
                break;
            } else if (list.get(i3).getControlNumber() >= c) {
                i2 = list.get(i3).getControlNumber();
                i = i3;
                break;
            } else {
                i3++;
            }
        }
        while (i < list.size() && i2 == list.get(i).getControlNumber()) {
            i2++;
            i++;
        }
        int i4 = i2;
        if (i2 != 0) {
            i4 = i2 - 1;
        }
        return i4;
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: n0 */
    public static void m6845n0(boolean z) {
        if (!PreferenceUtils.m5395b("PREF_CATEGORIES_SYNCED", false) || z) {
            PreferenceUtils.m5386k("PREF_CATEGORIES_SYNCED", false);
            SubscriptionHelper.State c = SubscriptionHelper.m5325c();
            if (!SubscriptionHelper.m5315m(c) || SubscriptionHelper.m5310r(c) || SubscriptionHelper.m5312p(c)) {
                LogUtil.m5643d("ApiUtils#tryGetCategories", "User doesn't have the proper account to GET /categories ");
                return;
            }
            Observable<CategorySettingList> n = ApiWrapper.m6763n();
            if (n != null) {
                n.subscribe(C1732k.f13340f, C1717h.f13317f);
                return;
            }
            LogUtil.m5643d("ApiUtils#tryGetCategories", "getCategories returned null. Set PREF_CATEGORIES_SYNCED to false.");
            PreferenceUtils.m5386k("PREF_CATEGORIES_SYNCED", false);
            return;
        }
        LogUtil.m5643d("ApiUtils#tryGetCategories", "Categories already synced and forceRefresh = false. Do nothing.");
    }

    @Nullable
    /* renamed from: o */
    public static CallerSetting m6844o(String str) {
        RealmQuery Q0 = Realm.m3064G0().m3053Q0(CallerSetting.class);
        Q0.m2882t("e164Number", str);
        return (CallerSetting) Q0.m2916G();
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: o0 */
    public static void m6843o0(boolean z) {
        if (!PreferenceUtils.m5395b("PREF_USER_PREFERENCES_SYNCED", false)) {
            LogUtil.m5643d("ApiUtils#tryGetUserPreferences", "User preferences have not been synced - trying now");
            PreferenceUtils.m5386k("PREF_USER_PREFERENCES_SYNCED", true);
            Observable<List<SettingForCaller>> m = ApiWrapper.m6765m(z);
            if (m != null) {
                m.subscribe(C1692c.f13274f, C1777t.f13424f);
                return;
            }
            LogUtil.m5643d("ApiUtils#tryGetUserPreferences", "SettingsObservable was null, will try to get UserPreferences later");
            PreferenceUtils.m5386k("PREF_USER_PREFERENCES_SYNCED", false);
            return;
        }
        LogUtil.m5643d("ApiUtils#tryGetUserPreferences", "User Preferences have already been synced to device");
    }

    /* renamed from: p */
    public static CategorySetting m6842p(int i) {
        RealmQuery Q0 = Realm.m3064G0().m3053Q0(CategorySetting.class);
        Q0.m2885q("bucketId", Integer.valueOf(i));
        return (CategorySetting) Q0.m2916G();
    }

    /* renamed from: p0 */
    public static void m6841p0() {
        m6843o0(false);
        m6847m0();
    }

    /* renamed from: q */
    public static Date m6840q(int i) {
        Long l = 86400000L;
        return new Date(System.currentTimeMillis() - (i * l.longValue()));
    }

    /* renamed from: q0 */
    public static void m6839q0(List<ActivityFromCaller> list, int i, CallLogHelperFacade callLogHelperFacade, boolean z) {
        if (!list.isEmpty()) {
            Collections.sort(list);
            Date date = list.get(0).m6819b().getDate();
            long d = PreferenceUtils.m5393d("PREF_CALL_LOG_LAST_RETRIEVED_DATE");
            Date date2 = new Date(d);
            if (d == 0 || date2.after(date) || z) {
                PreferenceUtils.m5384m("PREF_CALL_LOG_LAST_RETRIEVED_DATE", date.getTime());
                if (list.size() >= i) {
                    callLogHelperFacade.m5828b(date, z);
                } else {
                    m6867c0();
                }
                LogUtil.m5632o("ApiUtils#", "prefetching page upto:" + date + " because " + d + " == 0? || " + date2 + " after " + date);
                StringBuilder sb = new StringBuilder();
                sb.append("trace saved ");
                sb.append(date);
                sb.append(" to preferences");
                LogUtil.m5643d("ApiUtils#getNext", sb.toString());
                return;
            }
            return;
        }
        m6867c0();
    }

    /* renamed from: r */
    public static String m6838r(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", DeviceInfoUtils.m5758f());
        return "to:" + simpleDateFormat.format(date);
    }

    /* renamed from: r0 */
    public static void m6837r0(List<ActivityFromCaller> list, int i, boolean z) {
        m6839q0(list, i, CallLogHelperFacade.m5829a(), z);
    }

    /* renamed from: s */
    public static CallerSetting.Action m6836s(UserPreference userPreference) {
        UserPreference t = m6834t(userPreference);
        return t != null ? CallerSetting.Action.fromValue(t.getAction()) : CallerSetting.Action.NONE;
    }

    /* renamed from: s0 */
    public static void m6835s0(LookupResponse lookupResponse) {
        String name = lookupResponse.getName();
        Date date = new Date();
        final CheckName checkName = new CheckName();
        checkName.setName(name);
        checkName.setUpdated(date);
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.o
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6878U(CheckName.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            LogUtil.m5631p("ApiUtils#", "Error updating Outbound Caller ID name in Realm");
        }
    }

    @Nullable
    /* renamed from: t */
    private static UserPreference m6834t(UserPreference userPreference) {
        String e164Number = userPreference.getE164Number();
        return userPreference instanceof MessageUserPreference ? m6830v(e164Number) : m6844o(e164Number);
    }

    /* renamed from: t0 */
    public static void m6833t0(final boolean z) {
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.f
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6877V(Realm.this, z, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            LogUtil.m5631p("ApiUtils#", "Error updating TmoUserStatus::CNAMON in Realm");
        }
    }

    @NonNull
    /* renamed from: u */
    public static Date m6832u() {
        Date date;
        try {
            EventSummaryItem eventSummaryItem = (EventSummaryItem) Realm.m3064G0().m3053Q0(EventSummaryItem.class).m2918E().m3089s("date", Sort.DESCENDING).m3098e();
            date = eventSummaryItem != null ? eventSummaryItem.getDate() : new Date(0L);
        } catch (Exception e) {
            date = new Date(0L);
        }
        return date;
    }

    /* renamed from: u0 */
    private static void m6831u0(final UserPreference userPreference, UserPreference userPreference2) {
        final int action = userPreference2.getAction();
        final boolean H = m6891H();
        final String callerId = userPreference2.getCallerId();
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.q
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ApiUtils.m6876W(UserPreference.this, action, H, callerId, realm);
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

    /* renamed from: v */
    public static MessageUserPreference m6830v(String str) {
        RealmQuery Q0 = Realm.m3064G0().m3053Q0(MessageUserPreference.class);
        Q0.m2882t("e164Number", str);
        return (MessageUserPreference) Q0.m2916G();
    }

    /* renamed from: v0 */
    public static void m6829v0(UserPreference userPreference) {
        UserPreference t = m6834t(userPreference);
        if (t != null) {
            m6831u0(t, userPreference);
        } else {
            LogUtil.m5631p("ApiUtils#updateUserPrefInRealm", "Did not find preference in Realm for update.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nonnull
    /* renamed from: w */
    public static String m6828w() {
        return BuildUtils.m5848f() ? "15011112222" : PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
    }

    /* renamed from: w0 */
    public static void m6827w0(UserPreferenceStatus userPreferenceStatus) {
        PreferenceUtils.m5386k("PREF_SHOW_MIGRATION_MANAGE_NUMBERS", true);
        Realm G0 = Realm.m3064G0();
        try {
            for (final UserPreferenceItem userPreferenceItem : userPreferenceStatus.getSuccessfulItems()) {
                final String d = PhoneNumberHelper.m5415d(userPreferenceItem.getNumber());
                LogUtil.m5632o("ApiUtils#userPrefStatusToMessageUserPref", "Successful set preference for " + d + " to " + userPreferenceItem.getDisposition());
                RealmQuery Q0 = G0.m3053Q0(MessageUserPreference.class);
                Q0.m2882t("e164Number", d);
                final MessageUserPreference messageUserPreference = (MessageUserPreference) Q0.m2916G();
                if (messageUserPreference != null) {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.l
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            ApiUtils.m6875X(UserPreferenceItem.this, messageUserPreference, d, realm);
                        }
                    });
                }
            }
            for (UserPreferenceStatus.FailPreference failPreference : userPreferenceStatus.getFailItems()) {
                String d2 = PhoneNumberHelper.m5415d(failPreference.getNumber());
                LogUtil.m5632o("ApiUtils#userPrefStatusToMessageUserPref", "FAILURE set preference for " + d2 + " description: " + failPreference.getDescription());
                RealmQuery Q02 = G0.m3053Q0(MessageUserPreference.class);
                Q02.m2882t("e164Number", d2);
                final MessageUserPreference messageUserPreference2 = (MessageUserPreference) Q02.m2916G();
                if (messageUserPreference2 != null) {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.e
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            MessageUserPreference.this.deleteFromRealm();
                        }
                    });
                } else if (G0 != null) {
                    G0.close();
                    return;
                } else {
                    return;
                }
            }
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

    @NonNull
    /* renamed from: x */
    public static Date m6826x() {
        Date date;
        try {
            EventSummaryItem eventSummaryItem = (EventSummaryItem) Realm.m3064G0().m3053Q0(EventSummaryItem.class).m2918E().m3089s("date", Sort.DESCENDING).m3092n();
            date = eventSummaryItem != null ? eventSummaryItem.getDate() : new Date(0L);
        } catch (Exception e) {
            date = new Date(0L);
        }
        return date;
    }

    /* renamed from: x0 */
    public static List<SettingForCaller> m6825x0(UserPreferenceResponse userPreferenceResponse) {
        UserPreference userPreference;
        ArrayList arrayList = new ArrayList();
        for (UserPreferenceItem userPreferenceItem : userPreferenceResponse.getPreferenceItems()) {
            if (userPreferenceItem.getCommEvent() == MessageUserPreference.CommEventType.TEXT.getValue()) {
                userPreference = new MessageUserPreference(userPreferenceItem.getId());
            } else {
                userPreference = new CallerSetting();
                userPreference.setPreferenceId(userPreferenceItem.getId());
            }
            String e = PhoneNumberHelper.m5414e(userPreferenceItem.getNumber(), "");
            userPreference.setE164Number(e);
            userPreference.setCommEventType(userPreferenceItem.getCommEvent());
            userPreference.setAction(userPreferenceItem.getDisposition());
            userPreference.addCallerForSetting(e, null);
            arrayList.add(new SettingForCaller(userPreference, null));
        }
        return arrayList;
    }

    /* renamed from: y */
    public static Command m6824y(UserPreference userPreference) {
        return new RealmAddRollback(userPreference);
    }

    /* renamed from: y0 */
    public static void m6823y0(UserPreferenceStatus userPreferenceStatus) {
        PreferenceUtils.m5386k("PREF_SHOW_MIGRATION_MANAGE_NUMBERS", true);
        Realm G0 = Realm.m3064G0();
        try {
            for (final UserPreferenceItem userPreferenceItem : userPreferenceStatus.getSuccessfulItems()) {
                String d = PhoneNumberHelper.m5415d(userPreferenceItem.getNumber());
                LogUtil.m5632o("ApiUtils#userPreferenceStatusToCallSetting", "Successful set preference for " + d + " to " + userPreferenceItem.getDisposition());
                RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
                Q0.m2882t("e164Number", d);
                final CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
                if (callerSetting != null) {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.b
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            ApiUtils.m6873Z(CallerSetting.this, userPreferenceItem, realm);
                        }
                    });
                }
            }
            for (UserPreferenceStatus.FailPreference failPreference : userPreferenceStatus.getFailItems()) {
                String d2 = PhoneNumberHelper.m5415d(failPreference.getNumber());
                LogUtil.m5632o("ApiUtils#userPreferenceStatusToCallSetting", "FAILURE set preference for " + d2 + " description: " + failPreference.getDescription());
                RealmQuery Q02 = G0.m3053Q0(CallerSetting.class);
                Q02.m2882t("e164Number", d2);
                final CallerSetting callerSetting2 = (CallerSetting) Q02.m2916G();
                if (callerSetting2 != null) {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.m
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            ApiUtils.m6871a0(CallerSetting.this, realm);
                        }
                    });
                } else if (G0 != null) {
                    G0.close();
                    return;
                } else {
                    return;
                }
            }
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

    /* renamed from: z */
    public static Command m6822z(UserPreference userPreference) {
        return new RealmDeleteRollback(userPreference);
    }
}
