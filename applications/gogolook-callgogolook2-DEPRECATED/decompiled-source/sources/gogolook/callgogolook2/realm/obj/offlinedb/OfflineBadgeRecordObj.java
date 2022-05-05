package gogolook.callgogolook2.realm.obj.offlinedb;

import io.realm.AbstractC10943xd57f174;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/offlinedb/OfflineBadgeRecordObj.class */
public class OfflineBadgeRecordObj extends RealmObject implements AbstractC10943xd57f174 {
    @PrimaryKey
    public long time;
    public int type;

    public OfflineBadgeRecordObj() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @Override // io.realm.AbstractC10943xd57f174
    public long realmGet$time() {
        return this.time;
    }

    @Override // io.realm.AbstractC10943xd57f174
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC10943xd57f174
    public void realmSet$time(long j) {
        this.time = j;
    }

    @Override // io.realm.AbstractC10943xd57f174
    public void realmSet$type(int i) {
        this.type = i;
    }
}
