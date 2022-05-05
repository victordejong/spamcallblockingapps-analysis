package gogolook.callgogolook2.realm.obj.log;

import io.realm.AbstractC10934xf2036c3f;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0012\b\u0016\u0018�� \u00182\u00020\u0001:\u0001\u0018B/\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/log/ReportLogRealmObject;", "Lio/realm/RealmObject;", "log", "", "type", "", "createTime", "", "id", "(Ljava/lang/String;IJJ)V", "getCreateTime", "()J", "setCreateTime", "(J)V", "getId", "setId", "getLog", "()Ljava/lang/String;", "setLog", "(Ljava/lang/String;)V", "getType", "()I", "setType", "(I)V", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/log/ReportLogRealmObject.class */
public class ReportLogRealmObject extends RealmObject implements AbstractC10934xf2036c3f {
    public static final String CREATE_TIME = "createTime";
    public static final C5081a Companion = new C5081a(null);
    public static final long DEFAULT_PRIMARY_ID = -1;

    /* renamed from: ID */
    public static final String f12545ID = "id";
    public static final String LOG = "log";
    public static final String TYPE = "type";
    public static final int TYPE_API = 1;
    public static final int TYPE_DEBUGMSG = 2;
    public static final int TYPE_EVENT = 0;
    public long createTime;
    @PrimaryKey

    /* renamed from: id */
    public long f12546id;
    public String log;
    public int type;

    /* renamed from: gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/log/ReportLogRealmObject$a.class */
    public static final class C5081a {
        public C5081a() {
        }

        public /* synthetic */ C5081a(C15145g gVar) {
            this();
        }
    }

    public ReportLogRealmObject() {
        this(null, 0, 0L, 0L, 15, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ReportLogRealmObject(String str) {
        this(str, 0, 0L, 0L, 14, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ReportLogRealmObject(String str, int i) {
        this(str, i, 0L, 0L, 12, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ReportLogRealmObject(String str, int i, long j) {
        this(str, i, j, 0L, 8, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ReportLogRealmObject(String str, int i, long j, long j2) {
        C15149k.m377b(str, "log");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$log(str);
        realmSet$type(i);
        realmSet$createTime(j);
        realmSet$id(j2);
    }

    public /* synthetic */ ReportLogRealmObject(String str, int i, long j, long j2, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? 0L : j, (i2 & 8) != 0 ? -1L : j2);
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

    public final int getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public long realmGet$createTime() {
        return this.createTime;
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public long realmGet$id() {
        return this.f12546id;
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public String realmGet$log() {
        return this.log;
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public void realmSet$createTime(long j) {
        this.createTime = j;
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public void realmSet$id(long j) {
        this.f12546id = j;
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public void realmSet$log(String str) {
        this.log = str;
    }

    @Override // io.realm.AbstractC10934xf2036c3f
    public void realmSet$type(int i) {
        this.type = i;
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

    public final void setType(int i) {
        realmSet$type(i);
    }
}
