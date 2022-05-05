package gogolook.callgogolook2.realm.obj.note;

import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
import io.realm.AbstractC10941x2f61b7e9;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0019\b\u0016\u0018�� \"2\u00020\u0001:\u0001\"BU\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u0012\"\u0004\b\u001f\u0010\u0014R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010\u0012\"\u0004\b!\u0010\u0014¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/note/NoteRealmObject;", "Lio/realm/RealmObject;", "id", "", "_e164", "", "_content", "_createtime", "_updatetime", "_status", "", "_transaction", "(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/Integer;Ljava/lang/Integer;)V", "get_content", "()Ljava/lang/String;", "set_content", "(Ljava/lang/String;)V", "get_createtime", "()J", "set_createtime", "(J)V", "get_e164", "set_e164", "get_status", "()Ljava/lang/Integer;", "set_status", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "get_transaction", "set_transaction", "get_updatetime", "set_updatetime", "getId", "setId", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/note/NoteRealmObject.class */
public class NoteRealmObject extends RealmObject implements AbstractC10941x2f61b7e9 {
    public static final String CONTENT = "_content";
    public static final String CREATETIME = "_createtime";
    public static final C5085a Companion = new C5085a(null);
    public static final String E164 = "_e164";

    /* renamed from: ID */
    public static final String f12553ID = "id";
    public static final String STATUS = "_status";
    public static final String TRANSACTION = "_transaction";
    public static final String UPDATETIME = "_updatetime";
    public String _content;
    public long _createtime;
    public String _e164;
    public Integer _status;
    public Integer _transaction;
    public long _updatetime;
    @PrimaryKey

    /* renamed from: id */
    public long f12554id;

    /* renamed from: gogolook.callgogolook2.realm.obj.note.NoteRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/note/NoteRealmObject$a.class */
    public static final class C5085a {
        public C5085a() {
        }

        public /* synthetic */ C5085a(C15145g gVar) {
            this();
        }
    }

    public NoteRealmObject() {
        this(0L, null, null, 0L, 0L, null, null, 127, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public NoteRealmObject(long j) {
        this(j, null, null, 0L, 0L, null, null, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public NoteRealmObject(long j, String str) {
        this(j, str, null, 0L, 0L, null, null, 124, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public NoteRealmObject(long j, String str, String str2) {
        this(j, str, str2, 0L, 0L, null, null, 120, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public NoteRealmObject(long j, String str, String str2, long j2) {
        this(j, str, str2, j2, 0L, null, null, 112, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public NoteRealmObject(long j, String str, String str2, long j2, long j3) {
        this(j, str, str2, j2, j3, null, null, 96, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public NoteRealmObject(long j, String str, String str2, long j2, long j3, Integer num) {
        this(j, str, str2, j2, j3, num, null, 64, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public NoteRealmObject(long j, String str, String str2, long j2, long j3, Integer num, Integer num2) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$_e164(str);
        realmSet$_content(str2);
        realmSet$_createtime(j2);
        realmSet$_updatetime(j3);
        realmSet$_status(num);
        realmSet$_transaction(num2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ NoteRealmObject(long r13, java.lang.String r15, java.lang.String r16, long r17, long r19, java.lang.Integer r21, java.lang.Integer r22, int r23, p626l.p641z.p643d.C15145g r24) {
        /*
            r12 = this;
            r0 = r23
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000c
            r0 = 0
            r13 = r0
            goto L_0x000c
        L_0x000c:
            java.lang.String r0 = ""
            r24 = r0
            r0 = r23
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = ""
            r15 = r0
            goto L_0x001d
        L_0x001d:
            r0 = r23
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002b
            r0 = r24
            r16 = r0
            goto L_0x002b
        L_0x002b:
            r0 = -1
            r25 = r0
            r0 = r23
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0040
            r0 = -1
            r17 = r0
            goto L_0x0040
        L_0x0040:
            r0 = r23
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004f
            r0 = r25
            r19 = r0
            goto L_0x004f
        L_0x004f:
            r0 = r23
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0060
            r0 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r21 = r0
            goto L_0x0060
        L_0x0060:
            r0 = r23
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0071
            r0 = -1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r22 = r0
            goto L_0x0071
        L_0x0071:
            r0 = r12
            r1 = r13
            r2 = r15
            r3 = r16
            r4 = r17
            r5 = r19
            r6 = r21
            r7 = r22
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r0 = r12
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x0091
            r0 = r12
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r0.realm$injectObjectContext()
        L_0x0091:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.note.NoteRealmObject.<init>(long, java.lang.String, java.lang.String, long, long, java.lang.Integer, java.lang.Integer, int, l.z.d.g):void");
    }

    public final long getId() {
        return realmGet$id();
    }

    public final String get_content() {
        return realmGet$_content();
    }

    public final long get_createtime() {
        return realmGet$_createtime();
    }

    public final String get_e164() {
        return realmGet$_e164();
    }

    public final Integer get_status() {
        return realmGet$_status();
    }

    public final Integer get_transaction() {
        return realmGet$_transaction();
    }

    public final long get_updatetime() {
        return realmGet$_updatetime();
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public String realmGet$_content() {
        return this._content;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public long realmGet$_createtime() {
        return this._createtime;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public String realmGet$_e164() {
        return this._e164;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public Integer realmGet$_status() {
        return this._status;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public Integer realmGet$_transaction() {
        return this._transaction;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public long realmGet$_updatetime() {
        return this._updatetime;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public long realmGet$id() {
        return this.f12554id;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_content(String str) {
        this._content = str;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_createtime(long j) {
        this._createtime = j;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_e164(String str) {
        this._e164 = str;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_status(Integer num) {
        this._status = num;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_transaction(Integer num) {
        this._transaction = num;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_updatetime(long j) {
        this._updatetime = j;
    }

    @Override // io.realm.AbstractC10941x2f61b7e9
    public void realmSet$id(long j) {
        this.f12554id = j;
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void set_content(String str) {
        realmSet$_content(str);
    }

    public final void set_createtime(long j) {
        realmSet$_createtime(j);
    }

    public final void set_e164(String str) {
        realmSet$_e164(str);
    }

    public final void set_status(Integer num) {
        realmSet$_status(num);
    }

    public final void set_transaction(Integer num) {
        realmSet$_transaction(num);
    }

    public final void set_updatetime(long j) {
        realmSet$_updatetime(j);
    }
}
