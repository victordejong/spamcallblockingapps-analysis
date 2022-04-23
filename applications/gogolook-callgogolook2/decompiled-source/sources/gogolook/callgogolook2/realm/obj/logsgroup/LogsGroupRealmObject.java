package gogolook.callgogolook2.realm.obj.logsgroup;

import com.fasterxml.jackson.core.JsonParser;
import io.realm.AbstractC10936x2b53014b;
import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b:\b\u0016\u0018�� @2\u00020\u0001:\u0001@B±\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003¢\u0006\u0002\u0010\u0014J\b\u0010>\u001a\u0004\u0018\u00010\u0005J\b\u0010?\u001a\u00020\u0005H\u0016R\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0010\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\u001c\"\u0004\b)\u0010\u001eR\u001e\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b*\u0010$\"\u0004\b+\u0010&R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010\u001c\"\u0004\b-\u0010\u001eR\u001e\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010\u0016\"\u0004\b/\u0010\u0018R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u0010 \"\u0004\b1\u0010\"R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b\r\u00102\"\u0004\b3\u00104R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u0010\u001c\"\u0004\b7\u0010\u001eR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b8\u00102\"\u0004\b9\u00104R\u001e\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b:\u00102\"\u0004\b;\u00104R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b<\u0010$\"\u0004\b=\u0010&¨\u0006A"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "Lio/realm/RealmObject;", "id", "", "e164", "", "ref_id", "", "number", "date", "duration", "content", "type", LogsGroupRealmObject.NEW, LogsGroupRealmObject.DISPLAY_NAME, LogsGroupRealmObject.UPDATETIME, "contact_id", LogsGroupRealmObject.BLOCKED, LogsGroupRealmObject.GROUP_ID_1, LogsGroupRealmObject.CREATETIME, "(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;IIIJ)V", "getBlocked", "()I", "setBlocked", "(I)V", "getContact_id", "setContact_id", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getCreate_time", "()J", "setCreate_time", "(J)V", "getDate", "()Ljava/lang/Long;", "setDate", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getDisplayName", "setDisplayName", "getDuration", "setDuration", "getE164", "setE164", "getGroup_id_1", "setGroup_id_1", "getId", "setId", "()Ljava/lang/Integer;", "setNew", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getNumber", "setNumber", "getRef_id", "setRef_id", "getType", "setType", "getUpdate_time", "setUpdate_time", "getContactName", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject.class */
public class LogsGroupRealmObject extends RealmObject implements AbstractC10936x2b53014b {
    public static final String BLOCKED = "blocked";
    public static final String CONTACT_ID = "contact_id";
    public static final String CONTENT = "content";
    public static final String CREATETIME = "create_time";
    public static final C5082a Companion = new C5082a(null);
    public static final String DATE = "date";
    public static final String DISPLAY_NAME = "displayName";
    public static final String DURATION = "duration";
    public static final String E164 = "e164";
    public static final String GROUP_ID_1 = "group_id_1";
    public static final int HIDE_BY_NATIVE = -1;
    public static final int HIDE_BY_WHOSCALL = 0;

    /* renamed from: ID */
    public static final String f12547ID = "id";
    public static final int IS_BLOCK = 1;
    public static final int IS_NEW = 1;
    public static final String NEW = "isNew";
    public static final int NON_NEW = 0;
    public static final String NUMBER = "number";
    public static final String REF_ID = "ref_id";
    public static final String TYPE = "type";
    public static final int TYPE_CALL_BASE = 16;
    public static final int TYPE_CALL_INCOMING = 17;
    public static final int TYPE_CALL_MISSED = 19;
    public static final int TYPE_CALL_OUTGOING = 18;
    public static final int TYPE_MMS_BASE = 64;
    public static final int TYPE_MMS_INCOMING = 65;
    public static final int TYPE_MMS_OUTGOING = 66;
    public static final int TYPE_SMS_BASE = 32;
    public static final int TYPE_SMS_INCOMING = 33;
    public static final int TYPE_SMS_OUTGOING = 34;
    public static final int TYPE_UNKNOWN = 240;
    public static final int UNBLOCK = 0;
    public static final String UPDATETIME = "update_time";
    public static final int VALID_BEGINNING_ID = 0;
    public int blocked;
    public int contact_id;
    public String content;
    public long create_time;
    public Long date;
    public String displayName;
    public Long duration;
    @Index
    public String e164;
    @Index
    public int group_id_1;
    @PrimaryKey

    /* renamed from: id */
    public long f12548id;
    public Integer isNew;
    public String number;
    public Integer ref_id;
    public Integer type;
    public Long update_time;

    /* renamed from: gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject$a.class */
    public static final class C5082a {
        public C5082a() {
        }

        public /* synthetic */ C5082a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final boolean m26402a(int i) {
            return 16 == (i & 16);
        }

        /* renamed from: b */
        public final boolean m26401b(int i) {
            return 64 == (i & 64);
        }

        /* renamed from: c */
        public final boolean m26400c(int i) {
            return m26399d(i) || m26401b(i);
        }

        /* renamed from: d */
        public final boolean m26399d(int i) {
            return 32 == (i & 32);
        }
    }

    public LogsGroupRealmObject() {
        this(0L, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0L, JsonParser.MAX_SHORT_I, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j) {
        this(j, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0L, 32766, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str) {
        this(j, str, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0L, 32764, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num) {
        this(j, str, num, null, null, null, null, null, null, null, null, 0, 0, 0, 0L, 32760, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2) {
        this(j, str, num, str2, null, null, null, null, null, null, null, 0, 0, 0, 0L, 32752, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l) {
        this(j, str, num, str2, l, null, null, null, null, null, null, 0, 0, 0, 0L, 32736, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2) {
        this(j, str, num, str2, l, l2, null, null, null, null, null, 0, 0, 0, 0L, 32704, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3) {
        this(j, str, num, str2, l, l2, str3, null, null, null, null, 0, 0, 0, 0L, 32640, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2) {
        this(j, str, num, str2, l, l2, str3, num2, null, null, null, 0, 0, 0, 0L, 32512, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2, Integer num3) {
        this(j, str, num, str2, l, l2, str3, num2, num3, null, null, 0, 0, 0, 0L, 32256, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2, Integer num3, String str4) {
        this(j, str, num, str2, l, l2, str3, num2, num3, str4, null, 0, 0, 0, 0L, 31744, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2, Integer num3, String str4, Long l3) {
        this(j, str, num, str2, l, l2, str3, num2, num3, str4, l3, 0, 0, 0, 0L, 30720, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2, Integer num3, String str4, Long l3, int i) {
        this(j, str, num, str2, l, l2, str3, num2, num3, str4, l3, i, 0, 0, 0L, 28672, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2, Integer num3, String str4, Long l3, int i, int i2) {
        this(j, str, num, str2, l, l2, str3, num2, num3, str4, l3, i, i2, 0, 0L, 24576, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2, Integer num3, String str4, Long l3, int i, int i2, int i3) {
        this(j, str, num, str2, l, l2, str3, num2, num3, str4, l3, i, i2, i3, 0L, 16384, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogsGroupRealmObject(long j, String str, Integer num, String str2, Long l, Long l2, String str3, Integer num2, Integer num3, String str4, Long l3, int i, int i2, int i3, long j2) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$e164(str);
        realmSet$ref_id(num);
        realmSet$number(str2);
        realmSet$date(l);
        realmSet$duration(l2);
        realmSet$content(str3);
        realmSet$type(num2);
        realmSet$isNew(num3);
        realmSet$displayName(str4);
        realmSet$update_time(l3);
        realmSet$contact_id(i);
        realmSet$blocked(i2);
        realmSet$group_id_1(i3);
        realmSet$create_time(j2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ LogsGroupRealmObject(long r20, java.lang.String r22, java.lang.Integer r23, java.lang.String r24, java.lang.Long r25, java.lang.Long r26, java.lang.String r27, java.lang.Integer r28, java.lang.Integer r29, java.lang.String r30, java.lang.Long r31, int r32, int r33, int r34, long r35, int r37, p626l.p641z.p643d.C15145g r38) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject.<init>(long, java.lang.String, java.lang.Integer, java.lang.String, java.lang.Long, java.lang.Long, java.lang.String, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Long, int, int, int, long, int, l.z.d.g):void");
    }

    public static final boolean isCallType(int i) {
        return Companion.m26402a(i);
    }

    public static final boolean isMmsType(int i) {
        return Companion.m26401b(i);
    }

    public static final boolean isMsgType(int i) {
        return Companion.m26400c(i);
    }

    public static final boolean isSmsType(int i) {
        return Companion.m26399d(i);
    }

    public final int getBlocked() {
        return realmGet$blocked();
    }

    public final String getContactName() {
        return realmGet$contact_id() > 0 ? realmGet$displayName() : null;
    }

    public final int getContact_id() {
        return realmGet$contact_id();
    }

    public final String getContent() {
        return realmGet$content();
    }

    public final long getCreate_time() {
        return realmGet$create_time();
    }

    public final Long getDate() {
        return realmGet$date();
    }

    public final String getDisplayName() {
        return realmGet$displayName();
    }

    public final Long getDuration() {
        return realmGet$duration();
    }

    public final String getE164() {
        return realmGet$e164();
    }

    public final int getGroup_id_1() {
        return realmGet$group_id_1();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final String getNumber() {
        return realmGet$number();
    }

    public final Integer getRef_id() {
        return realmGet$ref_id();
    }

    public final Integer getType() {
        return realmGet$type();
    }

    public final Long getUpdate_time() {
        return realmGet$update_time();
    }

    public final Integer isNew() {
        return realmGet$isNew();
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public int realmGet$blocked() {
        return this.blocked;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public int realmGet$contact_id() {
        return this.contact_id;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public String realmGet$content() {
        return this.content;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public long realmGet$create_time() {
        return this.create_time;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public Long realmGet$date() {
        return this.date;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public String realmGet$displayName() {
        return this.displayName;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public Long realmGet$duration() {
        return this.duration;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public String realmGet$e164() {
        return this.e164;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public int realmGet$group_id_1() {
        return this.group_id_1;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public long realmGet$id() {
        return this.f12548id;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public Integer realmGet$isNew() {
        return this.isNew;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public Integer realmGet$ref_id() {
        return this.ref_id;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public Integer realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public Long realmGet$update_time() {
        return this.update_time;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$blocked(int i) {
        this.blocked = i;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$contact_id(int i) {
        this.contact_id = i;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$content(String str) {
        this.content = str;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$create_time(long j) {
        this.create_time = j;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$date(Long l) {
        this.date = l;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$displayName(String str) {
        this.displayName = str;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$duration(Long l) {
        this.duration = l;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$e164(String str) {
        this.e164 = str;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$group_id_1(int i) {
        this.group_id_1 = i;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$id(long j) {
        this.f12548id = j;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$isNew(Integer num) {
        this.isNew = num;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$ref_id(Integer num) {
        this.ref_id = num;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$type(Integer num) {
        this.type = num;
    }

    @Override // io.realm.AbstractC10936x2b53014b
    public void realmSet$update_time(Long l) {
        this.update_time = l;
    }

    public final void setBlocked(int i) {
        realmSet$blocked(i);
    }

    public final void setContact_id(int i) {
        realmSet$contact_id(i);
    }

    public final void setContent(String str) {
        realmSet$content(str);
    }

    public final void setCreate_time(long j) {
        realmSet$create_time(j);
    }

    public final void setDate(Long l) {
        realmSet$date(l);
    }

    public final void setDisplayName(String str) {
        realmSet$displayName(str);
    }

    public final void setDuration(Long l) {
        realmSet$duration(l);
    }

    public final void setE164(String str) {
        realmSet$e164(str);
    }

    public final void setGroup_id_1(int i) {
        realmSet$group_id_1(i);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void setNew(Integer num) {
        realmSet$isNew(num);
    }

    public final void setNumber(String str) {
        realmSet$number(str);
    }

    public final void setRef_id(Integer num) {
        realmSet$ref_id(num);
    }

    public final void setType(Integer num) {
        realmSet$type(num);
    }

    public final void setUpdate_time(Long l) {
        realmSet$update_time(l);
    }

    public String toString() {
        return "id=" + realmGet$id() + ", e164=" + realmGet$e164() + ", refId=" + realmGet$ref_id() + ", number=" + realmGet$number() + ", date=" + realmGet$date() + ", duration=" + realmGet$duration() + ", content=" + realmGet$content() + ", type=" + realmGet$type() + ", isNew=" + realmGet$isNew() + ", displayName=" + realmGet$displayName() + ", updateTime=" + realmGet$update_time() + ", contactId=" + realmGet$contact_id() + ", blocked=" + realmGet$blocked() + ", groupId1=" + realmGet$group_id_1() + ", createTime=" + realmGet$create_time();
    }
}
