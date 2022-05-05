package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.SimpleOffender;
import io.realm.Realm;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/SimpleOffenderRealm$$Lambda$0.class */
final /* synthetic */ class SimpleOffenderRealm$$Lambda$0 implements Realm.Transaction {
    static final Realm.Transaction $instance = new SimpleOffenderRealm$$Lambda$0();

    private SimpleOffenderRealm$$Lambda$0() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.delete(SimpleOffender.class);
    }
}
