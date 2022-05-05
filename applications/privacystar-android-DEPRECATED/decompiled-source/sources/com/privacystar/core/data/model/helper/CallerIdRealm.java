package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.CallerId;
import io.reactivex.Observable;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmModel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/CallerIdRealm.class */
public class CallerIdRealm {
    public static void extendExpiration(Realm realm, final String str) {
        realm.executeTransaction(new Realm.Transaction(str) { // from class: com.privacystar.core.data.model.helper.CallerIdRealm$$Lambda$0
            private final String arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                ((CallerId) realm2.where(CallerId.class).equalTo("number", this.arg$1).findFirst()).setExpiration(new Date(System.currentTimeMillis() + 7776000000L));
            }
        });
    }

    public static List<String> filterUncachedNumbers(Realm realm, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!hasEntry(realm, str)) {
                arrayList.add(str);
            } else {
                extendExpiration(realm, str);
            }
        }
        return arrayList;
    }

    public static CallerId getActiveEntry(Realm realm, String str) {
        return (CallerId) realm.where(CallerId.class).equalTo("number", str).greaterThanOrEqualTo("expiration", new Date()).findFirst();
    }

    public static List<CallerId> getEntries(Realm realm) {
        return realm.where(CallerId.class).findAll();
    }

    public static CallerId getEntry(Realm realm, String str) {
        return (CallerId) realm.where(CallerId.class).equalTo("number", str).findFirst();
    }

    public static boolean hasEntry(Realm realm, String str) {
        return getEntry(realm, str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$storeCallerId$1$CallerIdRealm(CallerId callerId, Realm realm) {
        CallerId callerId2 = (CallerId) realm.copyToRealmOrUpdate((Realm) callerId, new ImportFlag[0]);
    }

    public static void storeCallerId(Realm realm, final CallerId callerId) {
        realm.executeTransaction(new Realm.Transaction(callerId) { // from class: com.privacystar.core.data.model.helper.CallerIdRealm$$Lambda$1
            private final CallerId arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = callerId;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                CallerIdRealm.lambda$storeCallerId$1$CallerIdRealm(this.arg$1, realm2);
            }
        });
    }

    public static Observable<CallerId> subscribeToCid(Realm realm, String str) {
        return Observable.just(realm.copyFromRealm((Realm) ((RealmModel) realm.where(CallerId.class).equalTo("number", str).greaterThanOrEqualTo("expiration", new Date()).findFirst())));
    }
}
