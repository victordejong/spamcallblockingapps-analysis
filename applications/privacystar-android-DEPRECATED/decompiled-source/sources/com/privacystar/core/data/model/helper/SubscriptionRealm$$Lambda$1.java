package com.privacystar.core.data.model.helper;

import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/SubscriptionRealm$$Lambda$1.class */
public final /* synthetic */ class SubscriptionRealm$$Lambda$1 implements Realm.Transaction {
    static final Realm.Transaction $instance = new SubscriptionRealm$$Lambda$1();

    private SubscriptionRealm$$Lambda$1() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        SubscriptionRealm.lambda$initializeOfflineSubscription$1$SubscriptionRealm(realm);
    }
}
