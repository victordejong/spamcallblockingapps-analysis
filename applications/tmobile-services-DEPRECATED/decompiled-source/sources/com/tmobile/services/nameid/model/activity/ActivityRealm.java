package com.tmobile.services.nameid.model.activity;

import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/ActivityRealm.class */
public class ActivityRealm {
    private static final String LOG_TAG = "ActivityRealm#";

    private ActivityRealm() {
        throw new IllegalAccessError("This is a utility class, it doesn't need to be created");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m6466b(RealmResults realmResults, Realm realm) {
        Iterator<E> it = realmResults.iterator();
        while (it.hasNext()) {
            ((ActivityItem) it.next()).setUnread(false);
        }
    }

    public static RealmResults<ActivityItem> getAllActivity(Realm realm) {
        return realm.m3053Q0(ActivityItem.class).m2917F().m3089s("date", Sort.DESCENDING);
    }

    public static RealmResults<ActivityItem> getAllForNumber(Realm realm, String str) {
        RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
        Q0.m2882t("e164Number", PhoneNumberHelper.m5414e(str, ""));
        return Q0.m2917F().m3089s("date", Sort.DESCENDING);
    }

    public static void removeAll() {
        LogUtil.m5643d("ActivityRealm#removeAll", "removing all items");
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(C1828a.f13617a);
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

    public static void setAllRead() {
        try {
            Realm G0 = Realm.m3064G0();
            final RealmResults E = G0.m3053Q0(ActivityItem.class).m2918E();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.model.activity.c
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ActivityRealm.m6466b(RealmResults.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            LogUtil.m5641f(LOG_TAG, "Error during setAllRead: ", th);
        }
    }

    public static void setItemUnread(final ActivityItem activityItem, final boolean z) {
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.model.activity.b
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    ActivityItem.this.setUnread(z);
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
}
