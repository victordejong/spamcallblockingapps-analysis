package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.call.caller.CallerHelper;
import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/OffenderRealm$$Lambda$4.class */
public final /* synthetic */ class OffenderRealm$$Lambda$4 implements Realm.Transaction {
    static final Realm.Transaction $instance = new OffenderRealm$$Lambda$4();

    private OffenderRealm$$Lambda$4() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        CallerHelper.updateAllCallerOffenderCache(realm);
    }
}
