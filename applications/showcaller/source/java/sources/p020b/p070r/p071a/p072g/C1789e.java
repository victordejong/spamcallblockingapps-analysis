package p020b.p070r.p071a.p072g;

import android.database.sqlite.SQLiteStatement;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: b.r.a.g.e */
/* loaded from: classes-dex2jar.jar:b/r/a/g/e.class */
class C1789e extends C1788d implements AbstractC1780f {

    /* renamed from: e */
    private final SQLiteStatement f6638e;

    public C1789e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f6638e = sQLiteStatement;
    }

    @Override // p020b.p070r.p071a.AbstractC1780f
    /* renamed from: j0 */
    public long mo28896j0() {
        return this.f6638e.executeInsert();
    }

    @Override // p020b.p070r.p071a.AbstractC1780f
    /* renamed from: r */
    public int mo28895r() {
        return this.f6638e.executeUpdateDelete();
    }
}
