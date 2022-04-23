package com.privacystar.core.data.model.helper;

import com.google.gson.Gson;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.data.model.PlayStoreReceipt;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/PlayStorePurchaseRealm.class */
public class PlayStorePurchaseRealm {
    public static void addPurchaseImpl(Realm realm, PlayStoreReceipt playStoreReceipt) {
        PlayStorePurchase playStorePurchase = (PlayStorePurchase) new Gson().fromJson(playStoreReceipt.getData(), (Class<Object>) PlayStorePurchase.class);
        playStorePurchase.setSignature(playStoreReceipt.getSignature());
        realm.copyToRealm((Realm) playStorePurchase, new ImportFlag[0]);
    }

    public static List<PlayStorePurchase> getSortedPurchases(Realm realm) {
        return realm.copyFromRealm(realm.where(PlayStorePurchase.class).findAll().sort("purchaseTime", Sort.DESCENDING));
    }

    public static void refreshPurchaseSet(Realm realm) {
        Timber.m28v("Refreshing PlayStore Purchases from archived receipts.", new Object[0]);
        refreshPurchaseSet(realm, PlayStoreReceiptRealm.getReceipts(realm));
    }

    public static void refreshPurchaseSet(Realm realm, final List<PlayStoreReceipt> list) {
        realm.executeTransaction(new Realm.Transaction(list) { // from class: com.privacystar.core.data.model.helper.PlayStorePurchaseRealm$$Lambda$0
            private final List arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = list;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                PlayStorePurchaseRealm.refreshPurchaseSetImpl(realm2, this.arg$1);
            }
        });
    }

    public static void refreshPurchaseSetImpl(Realm realm, List<PlayStoreReceipt> list) {
        realm.delete(PlayStorePurchase.class);
        ArrayList arrayList = new ArrayList();
        Timber.m28v("Iterating over a receipt list with size: %d", Integer.valueOf(list.size()));
        for (PlayStoreReceipt playStoreReceipt : list) {
            PlayStorePurchase playStorePurchase = (PlayStorePurchase) new Gson().fromJson(playStoreReceipt.getData(), (Class<Object>) PlayStorePurchase.class);
            playStorePurchase.setSignature(playStoreReceipt.getSignature());
            arrayList.add(playStorePurchase);
        }
        realm.copyToRealm(arrayList, new ImportFlag[0]);
    }
}
