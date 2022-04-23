package gogolook.callgogolook2.realm.obj.index;

import io.realm.AbstractC10926x64f47292;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u000f\b\u0016\u0018�� \u00152\u00020\u0001:\u0001\u0015B%\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/index/DialerIndexRealmObject;", "Lio/realm/RealmObject;", "_id", "", "normalized_index", "", "cache_id", "", "(JLjava/lang/String;I)V", "get_id", "()J", "set_id", "(J)V", "getCache_id", "()I", "setCache_id", "(I)V", "getNormalized_index", "()Ljava/lang/String;", "setNormalized_index", "(Ljava/lang/String;)V", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/index/DialerIndexRealmObject.class */
public class DialerIndexRealmObject extends RealmObject implements AbstractC10926x64f47292 {
    public static final String CACHE_ID = "cache_id";
    public static final C5077a Companion = new C5077a(null);

    /* renamed from: ID */
    public static final String f12540ID = "_id";
    public static final String NORMALIZED_INDEX = "normalized_index";
    @PrimaryKey
    public long _id;
    public int cache_id;
    public String normalized_index;

    /* renamed from: gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/index/DialerIndexRealmObject$a.class */
    public static final class C5077a {
        public C5077a() {
        }

        public /* synthetic */ C5077a(C15145g gVar) {
            this();
        }
    }

    public DialerIndexRealmObject() {
        this(0L, null, 0, 7, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public DialerIndexRealmObject(long j) {
        this(j, null, 0, 6, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public DialerIndexRealmObject(long j, String str) {
        this(j, str, 0, 4, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public DialerIndexRealmObject(long j, String str, int i) {
        C15149k.m377b(str, "normalized_index");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$_id(j);
        realmSet$normalized_index(str);
        realmSet$cache_id(i);
    }

    public /* synthetic */ DialerIndexRealmObject(long j, String str, int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? -1 : i);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public final int getCache_id() {
        return realmGet$cache_id();
    }

    public final String getNormalized_index() {
        return realmGet$normalized_index();
    }

    public final long get_id() {
        return realmGet$_id();
    }

    @Override // io.realm.AbstractC10926x64f47292
    public long realmGet$_id() {
        return this._id;
    }

    @Override // io.realm.AbstractC10926x64f47292
    public int realmGet$cache_id() {
        return this.cache_id;
    }

    @Override // io.realm.AbstractC10926x64f47292
    public String realmGet$normalized_index() {
        return this.normalized_index;
    }

    @Override // io.realm.AbstractC10926x64f47292
    public void realmSet$_id(long j) {
        this._id = j;
    }

    @Override // io.realm.AbstractC10926x64f47292
    public void realmSet$cache_id(int i) {
        this.cache_id = i;
    }

    @Override // io.realm.AbstractC10926x64f47292
    public void realmSet$normalized_index(String str) {
        this.normalized_index = str;
    }

    public final void setCache_id(int i) {
        realmSet$cache_id(i);
    }

    public final void setNormalized_index(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$normalized_index(str);
    }

    public final void set_id(long j) {
        realmSet$_id(j);
    }
}
