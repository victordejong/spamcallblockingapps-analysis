package gogolook.callgogolook2.offline.offlinedb;

import io.realm.AbstractC10894xdfeaa852;
import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/CategMap.class */
public class CategMap extends RealmObject implements AbstractC10894xdfeaa852 {
    public static final String ID_COLUMN = "id";

    /* renamed from: id */
    public int f12076id;
    @Required
    public String name;

    public CategMap() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @Override // io.realm.AbstractC10894xdfeaa852
    public int realmGet$id() {
        return this.f12076id;
    }

    @Override // io.realm.AbstractC10894xdfeaa852
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10894xdfeaa852
    public void realmSet$id(int i) {
        this.f12076id = i;
    }

    @Override // io.realm.AbstractC10894xdfeaa852
    public void realmSet$name(String str) {
        this.name = str;
    }
}
