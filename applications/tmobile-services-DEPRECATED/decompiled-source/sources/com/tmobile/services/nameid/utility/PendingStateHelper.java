package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.utility.PendingStateHelper;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.realm.Realm;
import io.realm.RealmQuery;
import java.util.ArrayList;
import java.util.Iterator;
import retrofit2.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/PendingStateHelper.class */
public class PendingStateHelper {

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/PendingStateHelper$CallerSettingObserver.class */
    static class CallerSettingObserver implements Observer<UserPreferenceStatus> {
        CallerSettingObserver() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public static /* synthetic */ void m5428a(Realm realm, Realm realm2) {
            Iterator<E> it = realm.m3053Q0(CallerSetting.class).m2918E().iterator();
            while (it.hasNext()) {
                ((CallerSetting) it.next()).setPending(false);
            }
        }

        /* renamed from: b */
        public void onNext(@NonNull UserPreferenceStatus userPreferenceStatus) {
            final Realm G0 = Realm.m3064G0();
            try {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.f1
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        PendingStateHelper.CallerSettingObserver.m5428a(Realm.this, realm);
                    }
                });
                if (G0 != null) {
                    G0.close();
                }
                ApiUtils.m6823y0(userPreferenceStatus);
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

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/PendingStateHelper$CategorySettingObserver.class */
    static class CategorySettingObserver implements Observer<Response<Void>> {
        CategorySettingObserver() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public static /* synthetic */ void m5426a(Realm realm, Realm realm2) {
            Iterator<E> it = realm.m3053Q0(CategorySetting.class).m2918E().iterator();
            while (it.hasNext()) {
                ((CategorySetting) it.next()).setPending(false);
            }
        }

        /* renamed from: b */
        public void onNext(@NonNull Response<Void> response) {
            final Realm G0 = Realm.m3064G0();
            try {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.g1
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        PendingStateHelper.CategorySettingObserver.m5426a(Realm.this, realm);
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

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
        }
    }

    private PendingStateHelper() {
        throw new IllegalAccessError("This is utility class, it shouldn't be created");
    }

    /* renamed from: a */
    public static void m5429a() {
        Observable<Response<Void>> g0;
        SubscriptionHelper.State c = SubscriptionHelper.m5325c();
        if (SubscriptionHelper.m5312p(c) || SubscriptionHelper.m5310r(c)) {
            LogUtil.m5631p("PendingStateHelperpushPendingItems", "Cannot push pending items - user is pending or in error state");
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            Realm G0 = Realm.m3064G0();
            RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
            Q0.m2888n("pending", Boolean.TRUE);
            Iterator<E> it = Q0.m2918E().iterator();
            while (it.hasNext()) {
                arrayList.add(((CallerSetting) it.next()).copy());
            }
            RealmQuery Q02 = G0.m3053Q0(CategorySetting.class);
            Q02.m2888n("pending", Boolean.TRUE);
            Iterator<E> it2 = Q02.m2918E().iterator();
            while (it2.hasNext()) {
                arrayList2.add(((CategorySetting) it2.next()).copy());
            }
            if (G0 != null) {
                G0.close();
            }
            LogUtil.m5632o("PendingStateHelper", "There are " + arrayList.size() + " caller settings to push and " + arrayList2.size() + " category settings to push");
            if (!arrayList.isEmpty()) {
                ApiWrapper.m6783d(arrayList, new CallerSettingObserver());
            }
            if (!arrayList2.isEmpty() && (g0 = ApiWrapper.m6776g0(arrayList2)) != null) {
                g0.subscribe(new CategorySettingObserver());
            }
        } catch (Exception e) {
            LogUtil.m5641f("PendingStateHelper", "Error retrieving pending items from Realm:", e);
        }
    }
}
