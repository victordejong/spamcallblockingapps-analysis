package gogolook.callgogolook2.realm.obj.favorite;

import androidx.core.view.PointerIconCompat;
import androidx.media.AudioAttributesCompat;
import androidx.media2.exoplayer.external.extractor.p007ts.AdtsReader;
import io.realm.AbstractC10908xfcfb846e;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b \b\u0016\u0018�� /2\u00020\u0001:\u0001/B\u007f\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f¢\u0006\u0002\u0010\u0011R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u001c\"\u0004\b \u0010\u001eR\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R\u001e\u0010\f\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b#\u0010\u0017\"\u0004\b$\u0010\u0019R\u001e\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b%\u0010\u0017\"\u0004\b&\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b'\u0010\u0013\"\u0004\b(\u0010\u0015R\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b-\u0010\u0013\"\u0004\b.\u0010\u0015¨\u00060"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/favorite/FavoriteGroupRealmObject;", "Lio/realm/RealmObject;", "id", "", "_name", "", "_parentid", FavoriteGroupRealmObject.LABELID, "", FavoriteGroupRealmObject.PINNED, "_createtime", "_updatetime", "_status", "_transaction", FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS, "Lio/realm/RealmList;", "Lgogolook/callgogolook2/realm/obj/favorite/FavoriteListRealmObject;", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJLjava/lang/Integer;Ljava/lang/Integer;Lio/realm/RealmList;)V", "get_createtime", "()J", "set_createtime", "(J)V", "get_label_id", "()Ljava/lang/Integer;", "set_label_id", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "get_name", "()Ljava/lang/String;", "set_name", "(Ljava/lang/String;)V", "get_parentid", "set_parentid", "get_pinned", "set_pinned", "get_status", "set_status", "get_transaction", "set_transaction", "get_updatetime", "set_updatetime", "getFavoriteListRealmObjects", "()Lio/realm/RealmList;", "setFavoriteListRealmObjects", "(Lio/realm/RealmList;)V", "getId", "setId", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/favorite/FavoriteGroupRealmObject.class */
public class FavoriteGroupRealmObject extends RealmObject implements AbstractC10908xfcfb846e {
    public static final String CREATETIME = "_createtime";
    public static final C5068a Companion = new C5068a(null);
    public static final String FAVORITELISTREALMOBJECTS = "favoriteListRealmObjects";

    /* renamed from: ID */
    public static final String f12535ID = "id";
    public static final String LABELID = "_label_id";
    public static final int LABEL_ID_DEFAULT = 0;
    public static final String NAME = "_name";
    public static final String PARENDID_DELETED = "-1";
    public static final String PARENDID_UNGROUP = "0";
    public static final String PARENTID = "_parentid";
    public static final String PINNED = "_pinned";
    public static final int PIN_STATUS_PINNED = 1;
    public static final int PIN_STATUS_UNPIN = 0;
    public static final String STATUS = "_status";
    public static final String TRANSACTION = "_transaction";
    public static final String UPDATETIME = "_updatetime";
    public long _createtime;
    public Integer _label_id;
    @Index
    public String _name;
    public String _parentid;
    public Integer _pinned;
    public Integer _status;
    public Integer _transaction;
    public long _updatetime;
    public RealmList<FavoriteListRealmObject> favoriteListRealmObjects;
    @PrimaryKey

    /* renamed from: id */
    public long f12536id;

    /* renamed from: gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/favorite/FavoriteGroupRealmObject$a.class */
    public static final class C5068a {
        public C5068a() {
        }

        public /* synthetic */ C5068a(C15145g gVar) {
            this();
        }
    }

    public FavoriteGroupRealmObject() {
        this(0L, null, null, null, null, 0L, 0L, null, null, null, AudioAttributesCompat.FLAG_ALL, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j) {
        this(j, null, null, null, null, 0L, 0L, null, null, null, 1022, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str) {
        this(j, str, null, null, null, 0L, 0L, null, null, null, PointerIconCompat.TYPE_GRAB, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2) {
        this(j, str, str2, null, null, 0L, 0L, null, null, null, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2, Integer num) {
        this(j, str, str2, num, null, 0L, 0L, null, null, null, PointerIconCompat.TYPE_TEXT, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2, Integer num, Integer num2) {
        this(j, str, str2, num, num2, 0L, 0L, null, null, null, 992, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2, Integer num, Integer num2, long j2) {
        this(j, str, str2, num, num2, j2, 0L, null, null, null, 960, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2, Integer num, Integer num2, long j2, long j3) {
        this(j, str, str2, num, num2, j2, j3, null, null, null, 896, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2, Integer num, Integer num2, long j2, long j3, Integer num3) {
        this(j, str, str2, num, num2, j2, j3, num3, null, null, AdtsReader.MATCH_STATE_I, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2, Integer num, Integer num2, long j2, long j3, Integer num3, Integer num4) {
        this(j, str, str2, num, num2, j2, j3, num3, num4, null, 512, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public FavoriteGroupRealmObject(long j, String str, String str2, Integer num, Integer num2, long j2, long j3, Integer num3, Integer num4, RealmList<FavoriteListRealmObject> realmList) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$_name(str);
        realmSet$_parentid(str2);
        realmSet$_label_id(num);
        realmSet$_pinned(num2);
        realmSet$_createtime(j2);
        realmSet$_updatetime(j3);
        realmSet$_status(num3);
        realmSet$_transaction(num4);
        realmSet$favoriteListRealmObjects(realmList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ FavoriteGroupRealmObject(long r16, java.lang.String r18, java.lang.String r19, java.lang.Integer r20, java.lang.Integer r21, long r22, long r24, java.lang.Integer r26, java.lang.Integer r27, io.realm.RealmList r28, int r29, p626l.p641z.p643d.C15145g r30) {
        /*
            r15 = this;
            r0 = r29
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000c
            r0 = 0
            r16 = r0
            goto L_0x000c
        L_0x000c:
            java.lang.String r0 = ""
            r30 = r0
            r0 = r29
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = ""
            r18 = r0
            goto L_0x001d
        L_0x001d:
            r0 = r29
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002b
            r0 = r30
            r19 = r0
            goto L_0x002b
        L_0x002b:
            r0 = r29
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003c
            r0 = 0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r20 = r0
            goto L_0x003c
        L_0x003c:
            r0 = r29
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004d
            r0 = 0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r21 = r0
            goto L_0x004d
        L_0x004d:
            r0 = -1
            r31 = r0
            r0 = r29
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0062
            r0 = -1
            r22 = r0
            goto L_0x0062
        L_0x0062:
            r0 = r29
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0071
            r0 = r31
            r24 = r0
            goto L_0x0071
        L_0x0071:
            r0 = r29
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0083
            r0 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r26 = r0
            goto L_0x0083
        L_0x0083:
            r0 = r29
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0095
            r0 = -1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r27 = r0
            goto L_0x0095
        L_0x0095:
            r0 = r29
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x00a4
            r0 = 0
            r28 = r0
            goto L_0x00a4
        L_0x00a4:
            r0 = r15
            r1 = r16
            r2 = r18
            r3 = r19
            r4 = r20
            r5 = r21
            r6 = r22
            r7 = r24
            r8 = r26
            r9 = r27
            r10 = r28
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r0 = r15
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x00ca
            r0 = r15
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r0.realm$injectObjectContext()
        L_0x00ca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject.<init>(long, java.lang.String, java.lang.String, java.lang.Integer, java.lang.Integer, long, long, java.lang.Integer, java.lang.Integer, io.realm.RealmList, int, l.z.d.g):void");
    }

    public final RealmList<FavoriteListRealmObject> getFavoriteListRealmObjects() {
        return realmGet$favoriteListRealmObjects();
    }

    public final long getId() {
        return realmGet$id();
    }

    public final long get_createtime() {
        return realmGet$_createtime();
    }

    public final Integer get_label_id() {
        return realmGet$_label_id();
    }

    public final String get_name() {
        return realmGet$_name();
    }

    public final String get_parentid() {
        return realmGet$_parentid();
    }

    public final Integer get_pinned() {
        return realmGet$_pinned();
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

    @Override // io.realm.AbstractC10908xfcfb846e
    public long realmGet$_createtime() {
        return this._createtime;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_label_id() {
        return this._label_id;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public String realmGet$_name() {
        return this._name;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public String realmGet$_parentid() {
        return this._parentid;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_pinned() {
        return this._pinned;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_status() {
        return this._status;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_transaction() {
        return this._transaction;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public long realmGet$_updatetime() {
        return this._updatetime;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public RealmList realmGet$favoriteListRealmObjects() {
        return this.favoriteListRealmObjects;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public long realmGet$id() {
        return this.f12536id;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_createtime(long j) {
        this._createtime = j;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_label_id(Integer num) {
        this._label_id = num;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_name(String str) {
        this._name = str;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_parentid(String str) {
        this._parentid = str;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_pinned(Integer num) {
        this._pinned = num;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_status(Integer num) {
        this._status = num;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_transaction(Integer num) {
        this._transaction = num;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$_updatetime(long j) {
        this._updatetime = j;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$favoriteListRealmObjects(RealmList realmList) {
        this.favoriteListRealmObjects = realmList;
    }

    @Override // io.realm.AbstractC10908xfcfb846e
    public void realmSet$id(long j) {
        this.f12536id = j;
    }

    public final void setFavoriteListRealmObjects(RealmList<FavoriteListRealmObject> realmList) {
        realmSet$favoriteListRealmObjects(realmList);
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void set_createtime(long j) {
        realmSet$_createtime(j);
    }

    public final void set_label_id(Integer num) {
        realmSet$_label_id(num);
    }

    public final void set_name(String str) {
        realmSet$_name(str);
    }

    public final void set_parentid(String str) {
        realmSet$_parentid(str);
    }

    public final void set_pinned(Integer num) {
        realmSet$_pinned(num);
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
