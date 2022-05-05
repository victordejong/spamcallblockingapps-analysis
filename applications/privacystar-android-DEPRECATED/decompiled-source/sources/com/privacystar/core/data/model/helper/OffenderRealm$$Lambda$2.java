package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.OffenderCategory;
import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/OffenderRealm$$Lambda$2.class */
public final /* synthetic */ class OffenderRealm$$Lambda$2 implements Realm.Transaction {
    static final Realm.Transaction $instance = new OffenderRealm$$Lambda$2();

    private OffenderRealm$$Lambda$2() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.delete(OffenderCategory.class);
    }
}
