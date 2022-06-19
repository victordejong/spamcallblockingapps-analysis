package p020b.p070r.p071a.p072g;

import android.database.sqlite.SQLiteProgram;
import p020b.p070r.p071a.AbstractC1778d;
/* renamed from: b.r.a.g.d */
/* loaded from: classes-dex2jar.jar:b/r/a/g/d.class */
class C1788d implements AbstractC1778d {

    /* renamed from: d */
    private final SQLiteProgram f6637d;

    public C1788d(SQLiteProgram sQLiteProgram) {
        this.f6637d = sQLiteProgram;
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: F */
    public void mo28901F(int i, long j) {
        this.f6637d.bindLong(i, j);
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: J */
    public void mo28900J(int i, byte[] bArr) {
        this.f6637d.bindBlob(i, bArr);
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: T */
    public void mo28899T(int i) {
        this.f6637d.bindNull(i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f6637d.close();
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: o */
    public void mo28898o(int i, String str) {
        this.f6637d.bindString(i, str);
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: v */
    public void mo28897v(int i, double d) {
        this.f6637d.bindDouble(i, d);
    }
}
