package gogolook.callgogolook2.realm.obj.block;

import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import io.realm.AbstractC10902x27276f7;
import io.realm.RealmObject;
import io.realm.annotations.Ignore;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b+\b\u0016\u0018�� 32\u00020\u0001:\u00013B\u008b\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0010\u001a\u00020\t¢\u0006\u0002\u0010\u0011R\u001e\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u0013\"\u0004\b%\u0010\u0015R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010\u0015R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\u0017\"\u0004\b)\u0010\u0019R\u001e\u0010\r\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u0010\u001d\"\u0004\b0\u0010\u001fR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u0010\u001d\"\u0004\b2\u0010\u001f¨\u00064"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/block/BlockLogRealmObject;", "Lio/realm/RealmObject;", "id", "", "_number", "", "_e164", "_content", "_kind", "", BlockLogRealmObject.MODE, "_createtime", "_updatetime", "_status", BlockLogRealmObject.CAUSE_WORDING, BlockLogRealmObject.KEYWORD, "_blockCount", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V", "get_blockCount", "()I", "set_blockCount", "(I)V", "get_cause_wording", "()Ljava/lang/String;", "set_cause_wording", "(Ljava/lang/String;)V", "get_content", "set_content", "get_createtime", "()J", "set_createtime", "(J)V", "get_e164", "set_e164", "get_keyword", "set_keyword", "get_kind", "set_kind", "get_mode", "set_mode", "get_number", "set_number", "get_status", "()Ljava/lang/Integer;", "set_status", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "get_updatetime", "set_updatetime", "getId", "setId", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/block/BlockLogRealmObject.class */
public class BlockLogRealmObject extends RealmObject implements AbstractC10902x27276f7 {
    public static final String CAUSE_WORDING = "_cause_wording";
    public static final String CONTENT = "_content";
    public static final String CREATETIME = "_createtime";
    public static final C5065a Companion = new C5065a(null);
    public static final String E164 = "_e164";

    /* renamed from: ID */
    public static final String f12529ID = "id";
    public static final String KEYWORD = "_keyword";
    public static final String KIND = "_kind";
    public static final String MODE = "_mode";
    public static final String NUMBER = "_number";
    public static final String STATUS = "_status";
    public static final String UPDATETIME = "_updatetime";
    @Ignore
    public int _blockCount;
    public String _cause_wording;
    public String _content;
    public long _createtime;
    @Index
    public String _e164;
    public String _keyword;
    public int _kind;
    public int _mode;
    public String _number;
    public Integer _status;
    public long _updatetime;
    @PrimaryKey

    /* renamed from: id */
    public long f12530id;

    /* renamed from: gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/realm/obj/block/BlockLogRealmObject$a.class */
    public static final class C5065a {
        public C5065a() {
        }

        public /* synthetic */ C5065a(C15145g gVar) {
            this();
        }
    }

    public BlockLogRealmObject() {
        this(0L, null, null, null, 0, 0, 0L, 0L, null, null, null, 0, 4095, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j) {
        this(j, null, null, null, 0, 0, 0L, 0L, null, null, null, 0, 4094, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str) {
        this(j, str, null, null, 0, 0, 0L, 0L, null, null, null, 0, 4092, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2) {
        this(j, str, str2, null, 0, 0, 0L, 0L, null, null, null, 0, 4088, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3) {
        this(j, str, str2, str3, 0, 0, 0L, 0L, null, null, null, 0, 4080, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i) {
        this(j, str, str2, str3, i, 0, 0L, 0L, null, null, null, 0, 4064, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i, int i2) {
        this(j, str, str2, str3, i, i2, 0L, 0L, null, null, null, 0, 4032, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i, int i2, long j2) {
        this(j, str, str2, str3, i, i2, j2, 0L, null, null, null, 0, 3968, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i, int i2, long j2, long j3) {
        this(j, str, str2, str3, i, i2, j2, j3, null, null, null, 0, OpusReader.DEFAULT_SEEK_PRE_ROLL_SAMPLES, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, Integer num) {
        this(j, str, str2, str3, i, i2, j2, j3, num, null, null, 0, 3584, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, Integer num, String str4) {
        this(j, str, str2, str3, i, i2, j2, j3, num, str4, null, 0, 3072, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, Integer num, String str4, String str5) {
        this(j, str, str2, str3, i, i2, j2, j3, num, str4, str5, 0, 2048, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public BlockLogRealmObject(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, Integer num, String str4, String str5, int i3) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(j);
        realmSet$_number(str);
        realmSet$_e164(str2);
        realmSet$_content(str3);
        realmSet$_kind(i);
        realmSet$_mode(i2);
        realmSet$_createtime(j2);
        realmSet$_updatetime(j3);
        realmSet$_status(num);
        realmSet$_cause_wording(str4);
        realmSet$_keyword(str5);
        this._blockCount = i3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ BlockLogRealmObject(long r18, java.lang.String r20, java.lang.String r21, java.lang.String r22, int r23, int r24, long r25, long r27, java.lang.Integer r29, java.lang.String r30, java.lang.String r31, int r32, int r33, p626l.p641z.p643d.C15145g r34) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject.<init>(long, java.lang.String, java.lang.String, java.lang.String, int, int, long, long, java.lang.Integer, java.lang.String, java.lang.String, int, int, l.z.d.g):void");
    }

    public final long getId() {
        return realmGet$id();
    }

    public final int get_blockCount() {
        return this._blockCount;
    }

    public final String get_cause_wording() {
        return realmGet$_cause_wording();
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

    public final String get_keyword() {
        return realmGet$_keyword();
    }

    public final int get_kind() {
        return realmGet$_kind();
    }

    public final int get_mode() {
        return realmGet$_mode();
    }

    public final String get_number() {
        return realmGet$_number();
    }

    public final Integer get_status() {
        return realmGet$_status();
    }

    public final long get_updatetime() {
        return realmGet$_updatetime();
    }

    @Override // io.realm.AbstractC10902x27276f7
    public String realmGet$_cause_wording() {
        return this._cause_wording;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public String realmGet$_content() {
        return this._content;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public long realmGet$_createtime() {
        return this._createtime;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public String realmGet$_e164() {
        return this._e164;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public String realmGet$_keyword() {
        return this._keyword;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public int realmGet$_kind() {
        return this._kind;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public int realmGet$_mode() {
        return this._mode;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public String realmGet$_number() {
        return this._number;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public Integer realmGet$_status() {
        return this._status;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public long realmGet$_updatetime() {
        return this._updatetime;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public long realmGet$id() {
        return this.f12530id;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_cause_wording(String str) {
        this._cause_wording = str;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_content(String str) {
        this._content = str;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_createtime(long j) {
        this._createtime = j;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_e164(String str) {
        this._e164 = str;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_keyword(String str) {
        this._keyword = str;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_kind(int i) {
        this._kind = i;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_mode(int i) {
        this._mode = i;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_number(String str) {
        this._number = str;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_status(Integer num) {
        this._status = num;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$_updatetime(long j) {
        this._updatetime = j;
    }

    @Override // io.realm.AbstractC10902x27276f7
    public void realmSet$id(long j) {
        this.f12530id = j;
    }

    public final void setId(long j) {
        realmSet$id(j);
    }

    public final void set_blockCount(int i) {
        this._blockCount = i;
    }

    public final void set_cause_wording(String str) {
        realmSet$_cause_wording(str);
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

    public final void set_keyword(String str) {
        realmSet$_keyword(str);
    }

    public final void set_kind(int i) {
        realmSet$_kind(i);
    }

    public final void set_mode(int i) {
        realmSet$_mode(i);
    }

    public final void set_number(String str) {
        realmSet$_number(str);
    }

    public final void set_status(Integer num) {
        realmSet$_status(num);
    }

    public final void set_updatetime(long j) {
        realmSet$_updatetime(j);
    }
}
