package com.privacystar.core.data.model.helper;

import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/PlayStoreReceiptRealm$$Lambda$1.class */
public final /* synthetic */ class PlayStoreReceiptRealm$$Lambda$1 implements Realm.Transaction {
    static final Realm.Transaction $instance = new PlayStoreReceiptRealm$$Lambda$1();

    private PlayStoreReceiptRealm$$Lambda$1() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        PlayStoreReceiptRealm.lambda$clearPurchaseHistory$1$PlayStoreReceiptRealm(realm);
    }
}
