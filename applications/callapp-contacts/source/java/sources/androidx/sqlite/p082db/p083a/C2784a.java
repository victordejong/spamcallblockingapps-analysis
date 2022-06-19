package androidx.sqlite.p082db.p083a;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.util.Pair;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.sqlite.p082db.AbstractC2794d;
import androidx.sqlite.p082db.AbstractC2795e;
import androidx.sqlite.p082db.C2783a;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.sqlite.db.a.a */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/a.class */
public final class C2784a implements AbstractC2792b {

    /* renamed from: a */
    private static final String[] f10534a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: b */
    private static final String[] f10535b = new String[0];

    /* renamed from: c */
    private final SQLiteDatabase f10536c;

    public C2784a(SQLiteDatabase sQLiteDatabase) {
        this.f10536c = sQLiteDatabase;
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: a */
    public final Cursor mo39900a(final AbstractC2794d abstractC2794d) {
        return this.f10536c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.db.a.a.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                abstractC2794d.mo39884a(new C2790d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, abstractC2794d.mo39883b(), f10535b, null);
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: a */
    public final AbstractC2795e mo39899a(String str) {
        return new C2791e(this.f10536c.compileStatement(str));
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: a */
    public final void mo39901a() {
        this.f10536c.beginTransaction();
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: a */
    public final void mo39898a(String str, Object[] objArr) throws SQLException {
        this.f10536c.execSQL(str, objArr);
    }

    /* renamed from: a */
    public final boolean m39909a(SQLiteDatabase sQLiteDatabase) {
        return this.f10536c == sQLiteDatabase;
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: b */
    public final Cursor mo39896b(String str) {
        return mo39900a(new C2783a(str));
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: b */
    public final void mo39897b() {
        this.f10536c.endTransaction();
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: c */
    public final void mo39895c() {
        this.f10536c.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: c */
    public final void mo39894c(String str) throws SQLException {
        this.f10536c.execSQL(str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f10536c.close();
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: d */
    public final boolean mo39893d() {
        return this.f10536c.inTransaction();
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: e */
    public final boolean mo39892e() {
        return this.f10536c.isOpen();
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: f */
    public final String mo39891f() {
        return this.f10536c.getPath();
    }

    @Override // androidx.sqlite.p082db.AbstractC2792b
    /* renamed from: g */
    public final List<Pair<String, String>> mo39890g() {
        return this.f10536c.getAttachedDbs();
    }
}
