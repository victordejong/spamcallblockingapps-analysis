package androidx.sqlite.db.a;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.c;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/d.class */
class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteProgram f5644a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(SQLiteProgram sQLiteProgram) {
        this.f5644a = sQLiteProgram;
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i) {
        this.f5644a.bindNull(i);
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, double d2) {
        this.f5644a.bindDouble(i, d2);
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, long j) {
        this.f5644a.bindLong(i, j);
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, String str) {
        this.f5644a.bindString(i, str);
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, byte[] bArr) {
        this.f5644a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5644a.close();
    }
}
