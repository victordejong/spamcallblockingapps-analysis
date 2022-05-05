package io.realm.internal;

import io.realm.RealmList;
import io.realm.internal.OsResults;
import io.realm.internal.objectstore.OsObjectBuilder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$$Lambda$1.class */
public final /* synthetic */ class OsResults$$Lambda$1 implements OsResults.AddListTypeDelegate {
    static final OsResults.AddListTypeDelegate $instance = new OsResults$$Lambda$1();

    private OsResults$$Lambda$1() {
    }

    @Override // io.realm.internal.OsResults.AddListTypeDelegate
    public void addList(OsObjectBuilder osObjectBuilder, RealmList realmList) {
        osObjectBuilder.addByteList(0L, realmList);
    }
}
