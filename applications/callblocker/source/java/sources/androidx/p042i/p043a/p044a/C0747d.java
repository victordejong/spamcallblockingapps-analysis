package androidx.p042i.p043a.p044a;

import android.database.sqlite.SQLiteProgram;
import androidx.p042i.p043a.AbstractC0755d;
/* renamed from: androidx.i.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/d.class */
class C0747d implements AbstractC0755d {

    /* renamed from: a */
    private final SQLiteProgram f2651a;

    public C0747d(SQLiteProgram sQLiteProgram) {
        this.f2651a = sQLiteProgram;
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18257a(int i) {
        this.f2651a.bindNull(i);
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18256a(int i, double d) {
        this.f2651a.bindDouble(i, d);
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18255a(int i, long j) {
        this.f2651a.bindLong(i, j);
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18254a(int i, String str) {
        this.f2651a.bindString(i, str);
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18253a(int i, byte[] bArr) {
        this.f2651a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2651a.close();
    }
}
