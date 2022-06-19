package androidx.sqlite.p082db.p083a;

import android.database.sqlite.SQLiteStatement;
import androidx.sqlite.p082db.AbstractC2795e;
/* renamed from: androidx.sqlite.db.a.e */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/e.class */
final class C2791e extends C2790d implements AbstractC2795e {

    /* renamed from: a */
    private final SQLiteStatement f10552a;

    public C2791e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f10552a = sQLiteStatement;
    }

    @Override // androidx.sqlite.p082db.AbstractC2795e
    /* renamed from: a */
    public final int mo39882a() {
        return this.f10552a.executeUpdateDelete();
    }

    @Override // androidx.sqlite.p082db.AbstractC2795e
    /* renamed from: b */
    public final long mo39881b() {
        return this.f10552a.executeInsert();
    }
}
