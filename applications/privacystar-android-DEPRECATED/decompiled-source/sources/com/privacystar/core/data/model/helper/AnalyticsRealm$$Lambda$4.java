package com.privacystar.core.data.model.helper;

import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/AnalyticsRealm$$Lambda$4.class */
public final /* synthetic */ class AnalyticsRealm$$Lambda$4 implements Realm.Transaction {
    static final Realm.Transaction $instance = new AnalyticsRealm$$Lambda$4();

    private AnalyticsRealm$$Lambda$4() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        AnalyticsRealm.lambda$resetAnalyticsQueue$4$AnalyticsRealm(realm);
    }
}
