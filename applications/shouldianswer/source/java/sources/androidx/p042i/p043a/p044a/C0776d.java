package androidx.p042i.p043a.p044a;

import android.database.sqlite.SQLiteProgram;
import androidx.p042i.p043a.AbstractC0784d;
/* renamed from: androidx.i.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/d.class */
class C0776d implements AbstractC0784d {

    /* renamed from: a */
    private final SQLiteProgram f2544a;

    public C0776d(SQLiteProgram sQLiteProgram) {
        this.f2544a = sQLiteProgram;
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4413a(int i) {
        this.f2544a.bindNull(i);
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4412a(int i, double d) {
        this.f2544a.bindDouble(i, d);
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4411a(int i, long j) {
        this.f2544a.bindLong(i, j);
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4410a(int i, String str) {
        this.f2544a.bindString(i, str);
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4409a(int i, byte[] bArr) {
        this.f2544a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2544a.close();
    }
}
