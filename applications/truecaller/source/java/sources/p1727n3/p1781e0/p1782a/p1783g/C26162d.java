package p1727n3.p1781e0.p1782a.p1783g;

import android.database.sqlite.SQLiteProgram;
import p1727n3.p1781e0.p1782a.AbstractC26152d;
/* renamed from: n3.e0.a.g.d */
/* loaded from: classes-dex2jar.jar:n3/e0/a/g/d.class */
public class C26162d implements AbstractC26152d {

    /* renamed from: a */
    public final SQLiteProgram f72932a;

    public C26162d(SQLiteProgram sQLiteProgram) {
        this.f72932a = sQLiteProgram;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: T0 */
    public void mo2652T0(int i, double d) {
        this.f72932a.bindDouble(i, d);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f72932a.close();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: f0 */
    public void mo2651f0(int i, String str) {
        this.f72932a.bindString(i, str);
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: l0 */
    public void mo2650l0(int i, long j) {
        this.f72932a.bindLong(i, j);
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: o0 */
    public void mo2649o0(int i, byte[] bArr) {
        this.f72932a.bindBlob(i, bArr);
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: y0 */
    public void mo2648y0(int i) {
        this.f72932a.bindNull(i);
    }
}
