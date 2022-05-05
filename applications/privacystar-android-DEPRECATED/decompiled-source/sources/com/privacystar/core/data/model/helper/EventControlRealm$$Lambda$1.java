package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.Operation;
import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/EventControlRealm$$Lambda$1.class */
public final /* synthetic */ class EventControlRealm$$Lambda$1 implements Realm.Transaction {
    static final Realm.Transaction $instance = new EventControlRealm$$Lambda$1();

    private EventControlRealm$$Lambda$1() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.delete(Operation.class);
    }
}
