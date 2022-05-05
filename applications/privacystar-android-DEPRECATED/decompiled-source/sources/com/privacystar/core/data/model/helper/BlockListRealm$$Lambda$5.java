package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.BlockList;
import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/BlockListRealm$$Lambda$5.class */
public final /* synthetic */ class BlockListRealm$$Lambda$5 implements Realm.Transaction {
    static final Realm.Transaction $instance = new BlockListRealm$$Lambda$5();

    private BlockListRealm$$Lambda$5() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.delete(BlockList.class);
    }
}
