package com.privacystar.core.data.model.helper;

import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/RegistrationDataRealm$$Lambda$1.class */
public final /* synthetic */ class RegistrationDataRealm$$Lambda$1 implements Realm.Transaction {
    static final Realm.Transaction $instance = new RegistrationDataRealm$$Lambda$1();

    private RegistrationDataRealm$$Lambda$1() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        RegistrationDataRealm.lambda$activatePendingData$1$RegistrationDataRealm(realm);
    }
}
