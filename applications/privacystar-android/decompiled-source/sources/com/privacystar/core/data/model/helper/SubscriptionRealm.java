package com.privacystar.core.data.model.helper;

import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.data.realm.RealmResultsObservable;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import hugo.weaving.DebugLog;
import io.reactivex.Observable;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.Date;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/SubscriptionRealm.class */
public class SubscriptionRealm {
    public static boolean compareSubscriptionState(Subscription subscription, SubscriptionType... subscriptionTypeArr) {
        if (subscription == null || subscription.getSubscriptionType() == null) {
            Timber.m37d("Subscription passed is null, returning false.", new Object[0]);
            return false;
        }
        for (SubscriptionType subscriptionType : subscriptionTypeArr) {
            if (subscription.getSubscriptionType() == subscriptionType) {
                return true;
            }
        }
        return false;
    }

    public static boolean compareSubscriptionState(Realm realm, SubscriptionType... subscriptionTypeArr) {
        return compareSubscriptionState(getSubscription(realm), subscriptionTypeArr);
    }

    public static Subscription getSubscription() {
        Subscription subscription = null;
        try {
            Realm defaultInstance = Realm.getDefaultInstance();
            Subscription subscription2 = getSubscription(defaultInstance);
            subscription = subscription2 != null ? (Subscription) defaultInstance.copyFromRealm((Realm) subscription2) : null;
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (IllegalArgumentException e) {
            Timber.m23w(e, "Couldn't copy managed subscription.", new Object[0]);
        }
        return subscription;
    }

    public static Subscription getSubscription(Realm realm) {
        return (Subscription) realm.where(Subscription.class).findFirst();
    }

    public static void initializeDebugSubscription(Realm realm) {
        LicenseFeatureRealm.clearAndSetFeatures(realm, AppManagerImpl.INSTANCE.getOfflineLicenseFeatures());
        realm.executeTransaction(SubscriptionRealm$$Lambda$0.$instance);
    }

    public static void initializeOfflineSubscription(Realm realm) {
        LicenseFeatureRealm.clearAndSetFeatures(realm, AppManagerImpl.INSTANCE.getOfflineLicenseFeatures());
        realm.executeTransaction(SubscriptionRealm$$Lambda$1.$instance);
    }

    public static boolean isSubscriptionActive(Subscription subscription) {
        boolean z = false;
        if (subscription == null || subscription.getSubscriptionType() == null) {
            Timber.m37d("Subscription passed is null, returning false.", new Object[0]);
            return false;
        }
        if (subscription.getSubscriptionType() == SubscriptionType.ACTIVE || subscription.getSubscriptionType() == SubscriptionType.FREE || subscription.getSubscriptionType() == SubscriptionType.CONCLUDED || subscription.getSubscriptionType() == SubscriptionType.OFFLINE) {
            z = true;
        }
        return z;
    }

    public static boolean isSubscriptionActive(Realm realm) {
        return isSubscriptionActive(getSubscription(realm));
    }

    public static boolean isSubscriptionConcluded(Subscription subscription) {
        boolean z = false;
        if (subscription == null || subscription.getSubscriptionType() == null) {
            Timber.m37d("Subscription passed is null, returning false.", new Object[0]);
            return false;
        }
        if (subscription.getSubscriptionType() == SubscriptionType.CONCLUDED) {
            z = true;
        }
        return z;
    }

    public static boolean isSubscriptionConcluded(Realm realm) {
        return isSubscriptionConcluded(getSubscription(realm));
    }

    public static boolean isSubscriptionFreeUser(Subscription subscription) {
        if (subscription == null || subscription.getSubscriptionType() == null) {
            Timber.m37d("Subscription passed is null, returning true.", new Object[0]);
            return true;
        }
        SubscriptionType subscriptionType = subscription.getSubscriptionType();
        boolean z = true;
        if (subscriptionType != SubscriptionType.FREE) {
            z = subscriptionType == SubscriptionType.INACTIVE;
        }
        return z;
    }

    public static boolean isSubscriptionFreeUser(Realm realm) {
        return isSubscriptionFreeUser(getSubscription(realm));
    }

    public static boolean isSubscriptionOngoing(Subscription subscription) {
        boolean z = false;
        if (subscription == null || subscription.getSubscriptionType() == null) {
            Timber.m37d("Subscription passed is null, returning false.", new Object[0]);
            return false;
        }
        if (subscription.getSubscriptionType() == SubscriptionType.ACTIVE || subscription.getSubscriptionType() == SubscriptionType.OFFLINE || subscription.getSubscriptionType() == SubscriptionType.FREE || subscription.getSubscriptionType() == SubscriptionType.TRIAL || subscription.getSubscriptionType() == SubscriptionType.CONCLUDED) {
            z = true;
        }
        return z;
    }

    public static boolean isSubscriptionOngoing(Realm realm) {
        return isSubscriptionOngoing(getSubscription(realm));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$initializeDebugSubscription$0$SubscriptionRealm(Realm realm) {
        realm.delete(Subscription.class);
        Subscription subscription = (Subscription) realm.createObject(Subscription.class);
        subscription.setSubscriptionType(AppManagerImpl.INSTANCE.getDebugLicenseType());
        subscription.setExpiration(new Date(System.currentTimeMillis() + 604800000));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$initializeOfflineSubscription$1$SubscriptionRealm(Realm realm) {
        realm.delete(Subscription.class);
        Subscription subscription = (Subscription) realm.createObject(Subscription.class);
        subscription.setSubscriptionType(AppManagerImpl.INSTANCE.getOfflineLicenseType());
        subscription.setExpiration(new Date(System.currentTimeMillis() + 604800000));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setSubscriptionStatus$2$SubscriptionRealm(SubscriptionType subscriptionType, Date date, Realm realm) {
        Subscription subscription = (Subscription) realm.where(Subscription.class).findFirst();
        Subscription subscription2 = subscription;
        if (subscription == null) {
            subscription2 = (Subscription) realm.createObject(Subscription.class);
        }
        subscription2.setSubscriptionType(subscriptionType);
        subscription2.setExpiration(date);
    }

    public static boolean mightSubscriptionRenew(Subscription subscription) {
        boolean z = false;
        if (subscription == null || subscription.getSubscriptionType() == null) {
            Timber.m37d("Subscription passed is null, returning false.", new Object[0]);
            return false;
        }
        if (subscription.getSubscriptionType() == SubscriptionType.ACTIVE || subscription.getSubscriptionType() == SubscriptionType.OFFLINE) {
            z = true;
        }
        return z;
    }

    public static boolean mightSubscriptionRenew(Realm realm) {
        return mightSubscriptionRenew(getSubscription(realm));
    }

    public static Observable<RealmResults<Subscription>> observeSubscription(Realm realm) {
        return RealmResultsObservable.from(realm.where(Subscription.class).findAll());
    }

    @DebugLog
    public static void setSubscriptionStatus(Realm realm, final SubscriptionType subscriptionType, final Date date) {
        realm.executeTransaction(new Realm.Transaction(subscriptionType, date) { // from class: com.privacystar.core.data.model.helper.SubscriptionRealm$$Lambda$2
            private final SubscriptionType arg$1;
            private final Date arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = subscriptionType;
                this.arg$2 = date;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                SubscriptionRealm.lambda$setSubscriptionStatus$2$SubscriptionRealm(this.arg$1, this.arg$2, realm2);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long subscriptionDaysLeft(io.realm.Realm r5) {
        /*
            r0 = r5
            long r0 = subscriptionTimeRemaining(r0)
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x000f
            r0 = -1
            return r0
        L_0x000f:
            r0 = r6
            r1 = 86400000(0x5265c00, double:4.2687272E-316)
            long r0 = r0 / r1
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r6
            r1 = 86400000(0x5265c00, double:4.2687272E-316)
            long r0 = r0 % r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0027
            r0 = r8
            r1 = 1
            long r0 = r0 + r1
            r10 = r0
        L_0x0027:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.model.helper.SubscriptionRealm.subscriptionDaysLeft(io.realm.Realm):long");
    }

    public static long subscriptionTimeRemaining(Realm realm) {
        Subscription subscription = (Subscription) realm.where(Subscription.class).findFirst();
        if (subscription == null || subscription.getExpiration() == null) {
            return -1L;
        }
        Long valueOf = Long.valueOf(subscription.getExpiration().getTime() - System.currentTimeMillis());
        updateExpirationState(valueOf.longValue() <= 0);
        return valueOf.longValue();
    }

    private static void updateExpirationState(boolean z) {
        if (!PreferenceUtil.getSubscriptionExpired() && z) {
            AnalyticsManager.INSTANCE.fire(Event.ActiveToExpiredEvent.INSTANCE);
        }
        PreferenceUtil.putSubscriptionExpired(z);
    }
}
