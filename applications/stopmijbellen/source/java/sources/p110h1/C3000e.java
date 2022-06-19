package p110h1;

import android.database.sqlite.SQLiteProgram;
import p099g1.AbstractC2800c;
/* renamed from: h1.e */
/* loaded from: classes-dex2jar.jar:h1/e.class */
public class C3000e implements AbstractC2800c {

    /* renamed from: a */
    public final SQLiteProgram f10100a;

    public C3000e(SQLiteProgram sQLiteProgram) {
        this.f10100a = sQLiteProgram;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f10100a.close();
    }
}
