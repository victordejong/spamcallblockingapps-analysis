package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.AnalyticsEvent;
import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/AnalyticsRealm$$Lambda$3.class */
public final /* synthetic */ class AnalyticsRealm$$Lambda$3 implements Realm.Transaction {
    static final Realm.Transaction $instance = new AnalyticsRealm$$Lambda$3();

    private AnalyticsRealm$$Lambda$3() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.where(AnalyticsEvent.class).equalTo("status", AnalyticsEvent.Status.PROCESSING.getSimpleName()).findAll().deleteAllFromRealm();
    }
}
