package androidx.sqlite.db.a;

import android.database.sqlite.SQLiteStatement;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/e.class */
final class e extends d implements androidx.sqlite.db.e {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteStatement f5645a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f5645a = sQLiteStatement;
    }

    @Override // androidx.sqlite.db.e
    public final int a() {
        return this.f5645a.executeUpdateDelete();
    }

    @Override // androidx.sqlite.db.e
    public final long b() {
        return this.f5645a.executeInsert();
    }
}
