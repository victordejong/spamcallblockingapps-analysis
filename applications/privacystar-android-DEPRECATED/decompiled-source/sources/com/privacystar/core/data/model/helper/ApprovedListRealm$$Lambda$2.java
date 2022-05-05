package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.ApprovedList;
import io.realm.Realm;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/ApprovedListRealm$$Lambda$2.class */
final /* synthetic */ class ApprovedListRealm$$Lambda$2 implements Realm.Transaction {
    static final Realm.Transaction $instance = new ApprovedListRealm$$Lambda$2();

    private ApprovedListRealm$$Lambda$2() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.delete(ApprovedList.class);
    }
}
