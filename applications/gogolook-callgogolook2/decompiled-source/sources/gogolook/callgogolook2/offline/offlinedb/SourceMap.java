package gogolook.callgogolook2.offline.offlinedb;

import io.realm.AbstractC10898x7988e9fd;
import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/SourceMap.class */
public class SourceMap extends RealmObject implements AbstractC10898x7988e9fd {
    public static final String ID_COLUMN = "id";

    /* renamed from: id */
    public int f12103id;
    @Required
    public String name;

    public SourceMap() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @Override // io.realm.AbstractC10898x7988e9fd
    public int realmGet$id() {
        return this.f12103id;
    }

    @Override // io.realm.AbstractC10898x7988e9fd
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10898x7988e9fd
    public void realmSet$id(int i) {
        this.f12103id = i;
    }

    @Override // io.realm.AbstractC10898x7988e9fd
    public void realmSet$name(String str) {
        this.name = str;
    }
}
