package gogolook.callgogolook2.realm.obj.log;

import io.realm.AbstractC10932x4999dd52;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u000e\b\u0016\u0018�� \u00122\u00020\u0001:\u0001\u0012B%\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/log/PurchaseLogRealmObject;", "Lio/realm/RealmObject;", "log", "", "createTime", "", "id", "(Ljava/lang/String;JJ)V", "getCreateTime", "()J", "setCreateTime", "(J)V", "getId", "setId", "getLog", "()Ljava/lang/String;", "setLog", "(Ljava/lang/String;)V", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/log/PurchaseLogRealmObject.class */
public class PurchaseLogRealmObject extends RealmObject implements AbstractC10932x4999dd52 {
    public static final String CREATE_TIME = "createTime";
    public static final C5080a Companion = new C5080a(null);
    public static final long DEFAULT_PRIMARY_ID = -1;

    /* renamed from: ID */
    public static final String f12543ID = "id";
    public static final String LOG = "log";
    public long createTime;
    @PrimaryKey

    /* renamed from: id */
    public long f12544id;
    public String log;

    /* renamed from: gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/log/PurchaseLogRealmObject$a.class */
    public static final class C5080a {
        public C5080a() {
        }

        public /* synthetic */ C5080a(C15145g gVar) {
            this();
        }
    }

    public PurchaseLogRealmObject() {
        this(null, 0L, 0L, 7, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PurchaseLogRealmObject(String str) {
        this(str, 0L, 0L, 6, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PurchaseLogRealmObject(String str, long j) {
        this(str, j, 0L, 4, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public PurchaseLogRealmObject(String str, long j, long j2) {
        C15149k.m377b(str, "log");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$log(str);
        realmSet$createTime(j);
        realmSet$id(j2);
    }

    public /* synthetic */ PurchaseLogRealmObject(String str, long j, long j2, int i, C15145g gVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? -1L : j2);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public final long getCreateTime() {
        return realmGet$createTime();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final String getLog() {
        return realmGet$log();
    }

    @Override // io.realm.AbstractC10932x4999dd52
    public long realmGet$createTime() {
        return this.createTime;
    }

    @Override // io.realm.AbstractC10932x4999dd52
    public long realmGet$id() {
        return this.f12544id;
    }

    @Override // io.realm.AbstractC10932x4999dd52
    public String realmGet$log() {
        return this.log;
    }

    @Override // io.realm.AbstractC10932x4999dd52
    public void realmSet$createTime(long j) {
        this.createTime = j;
    }

    @Override // io.realm.AbstractC10932x4999dd52
    public void realmSet$id(long j) {
        this.f12544id = j;
    }

    @Override // io.realm.AbstractC10932x4999dd52
    public void realmSet$log(String str) {
        this.log = str;
    }

    public final void setCreateTime(long j) {
        realmSet$createTime(j);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void setLog(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$log(str);
    }
}
