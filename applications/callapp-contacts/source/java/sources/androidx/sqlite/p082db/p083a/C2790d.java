package androidx.sqlite.p082db.p083a;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.p082db.AbstractC2793c;
/* renamed from: androidx.sqlite.db.a.d */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/d.class */
class C2790d implements AbstractC2793c {

    /* renamed from: a */
    private final SQLiteProgram f10551a;

    public C2790d(SQLiteProgram sQLiteProgram) {
        this.f10551a = sQLiteProgram;
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39889a(int i) {
        this.f10551a.bindNull(i);
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39888a(int i, double d) {
        this.f10551a.bindDouble(i, d);
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39887a(int i, long j) {
        this.f10551a.bindLong(i, j);
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39886a(int i, String str) {
        this.f10551a.bindString(i, str);
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39885a(int i, byte[] bArr) {
        this.f10551a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f10551a.close();
    }
}
