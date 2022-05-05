package gogolook.callgogolook2.realm.obj.whitelist;

import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
import io.realm.AbstractC10947x13ba8479;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u001b\b\u0016\u0018�� !2\u00020\u0001:\u0001!BM\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007¢\u0006\u0002\u0010\fR\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u000e\"\u0004\b \u0010\u0010¨\u0006\""}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/whitelist/WhiteListRealmObject;", "Lio/realm/RealmObject;", "id", "", "_e164", "", "_deleted", "", "_createtime", "_updatetime", "_status", "_transaction", "(JLjava/lang/String;IJJII)V", "get_createtime", "()J", "set_createtime", "(J)V", "get_deleted", "()I", "set_deleted", "(I)V", "get_e164", "()Ljava/lang/String;", "set_e164", "(Ljava/lang/String;)V", "get_status", "set_status", "get_transaction", "set_transaction", "get_updatetime", "set_updatetime", "getId", "setId", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/whitelist/WhiteListRealmObject.class */
public class WhiteListRealmObject extends RealmObject implements AbstractC10947x13ba8479 {
    public static final String CREATETIME = "_createtime";
    public static final C5088a Companion = new C5088a(null);
    public static final String DELETED = "_deleted";
    public static final int DELETED_STATUS_DELETE = 1;
    public static final int DELETED_STATUS_NOT_DELETE = 0;
    public static final String E164 = "_e164";

    /* renamed from: ID */
    public static final String f12559ID = "id";
    public static final String STATUS = "_status";
    public static final String TRANSACTION = "_transaction";
    public static final String UPDATETIME = "_updatetime";
    public long _createtime;
    public int _deleted;
    public String _e164;
    public int _status;
    public int _transaction;
    public long _updatetime;
    @PrimaryKey

    /* renamed from: id */
    public long f12560id;

    /* renamed from: gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/whitelist/WhiteListRealmObject$a.class */
    public static final class C5088a {
        public C5088a() {
        }

        public /* synthetic */ C5088a(C15145g gVar) {
            this();
        }
    }

    public WhiteListRealmObject() {
        this(0L, null, 0, 0L, 0L, 0, 0, 127, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public WhiteListRealmObject(long j) {
        this(j, null, 0, 0L, 0L, 0, 0, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public WhiteListRealmObject(long j, String str) {
        this(j, str, 0, 0L, 0L, 0, 0, 124, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public WhiteListRealmObject(long j, String str, int i) {
        this(j, str, i, 0L, 0L, 0, 0, 120, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public WhiteListRealmObject(long j, String str, int i, long j2) {
        this(j, str, i, j2, 0L, 0, 0, 112, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public WhiteListRealmObject(long j, String str, int i, long j2, long j3) {
        this(j, str, i, j2, j3, 0, 0, 96, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public WhiteListRealmObject(long j, String str, int i, long j2, long j3, int i2) {
        this(j, str, i, j2, j3, i2, 0, 64, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public WhiteListRealmObject(long j, String str, int i, long j2, long j3, int i2, int i3) {
        C15149k.m377b(str, "_e164");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$_e164(str);
        realmSet$_deleted(i);
        realmSet$_createtime(j2);
        realmSet$_updatetime(j3);
        realmSet$_status(i2);
        realmSet$_transaction(i3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ WhiteListRealmObject(long r13, java.lang.String r15, int r16, long r17, long r19, int r21, int r22, int r23, p626l.p641z.p643d.C15145g r24) {
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
            r0 = r23
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0019
            java.lang.String r0 = ""
            r15 = r0
            goto L_0x0019
        L_0x0019:
            r0 = r23
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = 0
            r16 = r0
            goto L_0x0026
        L_0x0026:
            r0 = -1
            r25 = r0
            r0 = r23
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003b
            r0 = -1
            r17 = r0
            goto L_0x003b
        L_0x003b:
            r0 = r23
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004a
            r0 = r25
            r19 = r0
            goto L_0x004a
        L_0x004a:
            r0 = r23
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0058
            r0 = 1
            r21 = r0
            goto L_0x0058
        L_0x0058:
            r0 = r23
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0066
            r0 = -1
            r22 = r0
            goto L_0x0066
        L_0x0066:
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
            if (r0 == 0) goto L_0x0086
            r0 = r12
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r0.realm$injectObjectContext()
        L_0x0086:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject.<init>(long, java.lang.String, int, long, long, int, int, int, l.z.d.g):void");
    }

    public final long getId() {
        return realmGet$id();
    }

    public final long get_createtime() {
        return realmGet$_createtime();
    }

    public final int get_deleted() {
        return realmGet$_deleted();
    }

    public final String get_e164() {
        return realmGet$_e164();
    }

    public final int get_status() {
        return realmGet$_status();
    }

    public final int get_transaction() {
        return realmGet$_transaction();
    }

    public final long get_updatetime() {
        return realmGet$_updatetime();
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public long realmGet$_createtime() {
        return this._createtime;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public int realmGet$_deleted() {
        return this._deleted;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public String realmGet$_e164() {
        return this._e164;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public int realmGet$_status() {
        return this._status;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public int realmGet$_transaction() {
        return this._transaction;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public long realmGet$_updatetime() {
        return this._updatetime;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public long realmGet$id() {
        return this.f12560id;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public void realmSet$_createtime(long j) {
        this._createtime = j;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public void realmSet$_deleted(int i) {
        this._deleted = i;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public void realmSet$_e164(String str) {
        this._e164 = str;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public void realmSet$_status(int i) {
        this._status = i;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public void realmSet$_transaction(int i) {
        this._transaction = i;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public void realmSet$_updatetime(long j) {
        this._updatetime = j;
    }

    @Override // io.realm.AbstractC10947x13ba8479
    public void realmSet$id(long j) {
        this.f12560id = j;
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void set_createtime(long j) {
        realmSet$_createtime(j);
    }

    public final void set_deleted(int i) {
        realmSet$_deleted(i);
    }

    public final void set_e164(String str) {
        C15149k.m377b(str, "<set-?>");
        realmSet$_e164(str);
    }

    public final void set_status(int i) {
        realmSet$_status(i);
    }

    public final void set_transaction(int i) {
        realmSet$_transaction(i);
    }

    public final void set_updatetime(long j) {
        realmSet$_updatetime(j);
    }
}
