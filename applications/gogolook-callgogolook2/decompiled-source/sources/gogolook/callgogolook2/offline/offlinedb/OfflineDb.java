package gogolook.callgogolook2.offline.offlinedb;

import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import com.google.gson.Gson;
import io.realm.AbstractC10895x85b13b7d;
import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p515i0.p516a.AbstractC12422e;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR0\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00120\u0011j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0012`\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R \u0010\u0016\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR \u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR\u001a\u0010\u001c\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\t¨\u0006\u001f"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/OfflineDb;", "Lio/realm/RealmObject;", "Lgogolook/callgogolook2/offline/offlinedb/IOfflineDb;", "()V", "categ", "", "getCateg", "()I", "setCateg", "(I)V", "data", "", "getData", "()Ljava/lang/String;", "setData", "(Ljava/lang/String;)V", "hit", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getHit", "()Ljava/util/HashMap;", "name", "getName", "setName", "number", "getNumber", "setNumber", "type", "getType", "setType", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDb.class */
public class OfflineDb extends RealmObject implements AbstractC12422e, AbstractC10895x85b13b7d {
    public int categ;
    @Required
    public String data;
    @Required
    public String name;
    @Required
    public String number;
    public int type;

    public OfflineDb() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public int getCateg() {
        return realmGet$categ();
    }

    public final String getData() {
        return realmGet$data();
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public HashMap<String, Object> getHit() {
        return ((NumInfo) new Gson().m30982a(realmGet$data(), (Class<Object>) NumInfo.class)).hit;
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public String getName() {
        return realmGet$name();
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public String getNumber() {
        return realmGet$number();
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public int getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public int realmGet$categ() {
        return this.categ;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public String realmGet$data() {
        return this.data;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public void realmSet$categ(int i) {
        this.categ = i;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public void realmSet$data(String str) {
        this.data = str;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.AbstractC10895x85b13b7d
    public void realmSet$type(int i) {
        this.type = i;
    }

    public void setCateg(int i) {
        realmSet$categ(i);
    }

    public final void setData(String str) {
        realmSet$data(str);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }

    public void setType(int i) {
        realmSet$type(i);
    }
}
