package com.privacystar.core.data.model.helper;

import android.support.annotation.NonNull;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.data.model.PlayStoreReceipt;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/PlayStoreReceiptRealm.class */
public class PlayStoreReceiptRealm {
    private PlayStoreReceiptRealm() throws InstantiationException {
        throw new InstantiationException("This static helper class can't be instantiated.");
    }

    public static void addReceipt(Realm realm, final PlayStoreReceipt playStoreReceipt) {
        Timber.m37d("Adding IAB receipt to Realm synchronously.", new Object[0]);
        realm.executeTransaction(new Realm.Transaction(playStoreReceipt) { // from class: com.privacystar.core.data.model.helper.PlayStoreReceiptRealm$$Lambda$2
            private final PlayStoreReceipt arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = playStoreReceipt;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                PlayStorePurchaseRealm.addPurchaseImpl(realm2, (PlayStoreReceipt) realm2.copyToRealm((Realm) this.arg$1, new ImportFlag[0]));
            }
        });
    }

    public static void clearPurchaseHistory(Realm realm) {
        realm.executeTransaction(PlayStoreReceiptRealm$$Lambda$1.$instance);
    }

    public static PlayStoreReceipt getReceipt(Realm realm, String str) {
        return (PlayStoreReceipt) realm.where(PlayStoreReceipt.class).equalTo("productId", str).findFirst();
    }

    public static RealmResults<PlayStoreReceipt> getReceipts(Realm realm) {
        return realm.where(PlayStoreReceipt.class).findAll();
    }

    public static boolean isReceiptCacheCurrent(Realm realm, @NonNull List<PlayStoreReceipt> list) {
        RealmResults<PlayStoreReceipt> receipts = getReceipts(realm);
        boolean z = false;
        if (list.size() != receipts.size()) {
            Timber.m28v("New receipt list size [%d], cached list size [%d].", Integer.valueOf(list.size()), Integer.valueOf(receipts.size()));
        } else if (!realmListContainsAll(receipts, list)) {
            Timber.m28v("Cached receipts didn't contain all new receipts.", new Object[0]);
            Timber.m28v("Cached: %s%nNew: %s", receipts.toString(), list.toString());
        } else {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$clearPurchaseHistory$1$PlayStoreReceiptRealm(Realm realm) {
        realm.delete(PlayStoreReceipt.class);
        realm.delete(PlayStorePurchase.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setPurchaseHistory$0$PlayStoreReceiptRealm(List list, Realm realm) {
        realm.delete(PlayStoreReceipt.class);
        PlayStorePurchaseRealm.refreshPurchaseSetImpl(realm, realm.copyToRealm(list, new ImportFlag[0]));
    }

    private static boolean realmListContainsAll(List<PlayStoreReceipt> list, List<PlayStoreReceipt> list2) {
        boolean z = false;
        int i = 0;
        for (PlayStoreReceipt playStoreReceipt : list2) {
            Iterator<PlayStoreReceipt> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().realmEquals(playStoreReceipt)) {
                        i++;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (list2.size() == i) {
            z = true;
        }
        return z;
    }

    public static void setPurchaseHistory(Realm realm, final List<PlayStoreReceipt> list) {
        Timber.m37d("Clearing Realm cache of PlayStoreReceipts and setting updated values.", new Object[0]);
        PreferenceUtil.putArePurchasesDoubleChecked(true);
        if (!isReceiptCacheCurrent(realm, list) || PreferenceUtil.getIsReceiptUpdatePendingRegistration()) {
            realm.executeTransaction(new Realm.Transaction(list) { // from class: com.privacystar.core.data.model.helper.PlayStoreReceiptRealm$$Lambda$0
                private final List arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = list;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    PlayStoreReceiptRealm.lambda$setPurchaseHistory$0$PlayStoreReceiptRealm(this.arg$1, realm2);
                }
            });
            Timber.m37d("Forcing a new registration due to the updated receipts.", new Object[0]);
            PreferenceUtil.putIsReceiptUpdatePendingRegistration(true);
            RegistrationHandler.getInstance().checkRegistration(PSApplication.context(), true);
            return;
        }
        Timber.m37d("Previous cached receipts were already current.", new Object[0]);
    }
}
