package androidx.sqlite.db.a;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.util.Pair;
import androidx.sqlite.db.b;
import androidx.sqlite.db.d;
import androidx.sqlite.db.e;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/a.class */
final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5630a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f5631b = new String[0];

    /* renamed from: c  reason: collision with root package name */
    private final SQLiteDatabase f5632c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(SQLiteDatabase sQLiteDatabase) {
        this.f5632c = sQLiteDatabase;
    }

    @Override // androidx.sqlite.db.b
    public final Cursor a(final d dVar) {
        return this.f5632c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.db.a.a.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                dVar.a(new d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, dVar.b(), f5631b, null);
    }

    @Override // androidx.sqlite.db.b
    public final e a(String str) {
        return new e(this.f5632c.compileStatement(str));
    }

    @Override // androidx.sqlite.db.b
    public final void a() {
        this.f5632c.beginTransaction();
    }

    @Override // androidx.sqlite.db.b
    public final void a(String str, Object[] objArr) throws SQLException {
        this.f5632c.execSQL(str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(SQLiteDatabase sQLiteDatabase) {
        return this.f5632c == sQLiteDatabase;
    }

    @Override // androidx.sqlite.db.b
    public final Cursor b(String str) {
        return a(new androidx.sqlite.db.a(str));
    }

    @Override // androidx.sqlite.db.b
    public final void b() {
        this.f5632c.endTransaction();
    }

    @Override // androidx.sqlite.db.b
    public final void c() {
        this.f5632c.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.b
    public final void c(String str) throws SQLException {
        this.f5632c.execSQL(str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5632c.close();
    }

    @Override // androidx.sqlite.db.b
    public final boolean d() {
        return this.f5632c.inTransaction();
    }

    @Override // androidx.sqlite.db.b
    public final boolean e() {
        return this.f5632c.isOpen();
    }

    @Override // androidx.sqlite.db.b
    public final String f() {
        return this.f5632c.getPath();
    }

    @Override // androidx.sqlite.db.b
    public final List<Pair<String, String>> g() {
        return this.f5632c.getAttachedDbs();
    }
}
