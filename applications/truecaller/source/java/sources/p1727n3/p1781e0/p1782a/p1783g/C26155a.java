package p1727n3.p1781e0.p1782a.p1783g;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.IOException;
import java.util.List;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26153e;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p1727n3.p1781e0.p1782a.C26146a;
/* renamed from: n3.e0.a.g.a */
/* loaded from: classes-dex2jar.jar:n3/e0/a/g/a.class */
public class C26155a implements AbstractC26147b {

    /* renamed from: b */
    public static final String[] f72916b = new String[0];

    /* renamed from: a */
    public final SQLiteDatabase f72917a;

    /* renamed from: n3.e0.a.g.a$a */
    /* loaded from: classes-dex2jar.jar:n3/e0/a/g/a$a.class */
    public class C26156a implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        public final /* synthetic */ AbstractC26153e f72918a;

        public C26156a(C26155a c26155a, AbstractC26153e abstractC26153e) {
            this.f72918a = abstractC26153e;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f72918a.mo2674d(new C26162d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    /* renamed from: n3.e0.a.g.a$b */
    /* loaded from: classes-dex2jar.jar:n3/e0/a/g/a$b.class */
    public class C26157b implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        public final /* synthetic */ AbstractC26153e f72919a;

        public C26157b(C26155a c26155a, AbstractC26153e abstractC26153e) {
            this.f72919a = abstractC26153e;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f72919a.mo2674d(new C26162d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public C26155a(SQLiteDatabase sQLiteDatabase) {
        this.f72917a = sQLiteDatabase;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: H */
    public Cursor mo2671H(AbstractC26153e abstractC26153e, CancellationSignal cancellationSignal) {
        return this.f72917a.rawQueryWithFactory(new C26157b(this, abstractC26153e), abstractC26153e.mo2675b(), f72916b, null, cancellationSignal);
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: J1 */
    public AbstractC26154f mo2670J1(String str) {
        return new e(this.f72917a.compileStatement(str));
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: M */
    public void mo2669M() {
        this.f72917a.beginTransactionNonExclusive();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: S0 */
    public void mo2668S0(String str) throws SQLException {
        this.f72917a.execSQL(str);
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: U1 */
    public Cursor mo2667U1(String str) {
        return mo2666X(new C26146a(str));
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: X */
    public Cursor mo2666X(AbstractC26153e abstractC26153e) {
        return this.f72917a.rawQueryWithFactory(new C26156a(this, abstractC26153e), abstractC26153e.mo2675b(), f72916b, null);
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: X1 */
    public boolean mo2665X1() {
        return this.f72917a.inTransaction();
    }

    /* renamed from: b */
    public List<Pair<String, String>> m2664b() {
        return this.f72917a.getAttachedDbs();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: b1 */
    public void mo2663b1() {
        this.f72917a.setTransactionSuccessful();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: c1 */
    public void mo2662c1(String str, Object[] objArr) throws SQLException {
        this.f72917a.execSQL(str, objArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f72917a.close();
    }

    /* renamed from: d */
    public String m2661d() {
        return this.f72917a.getPath();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: e2 */
    public boolean mo2660e2() {
        return this.f72917a.isWriteAheadLoggingEnabled();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: f1 */
    public void mo2659f1() {
        this.f72917a.endTransaction();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    public boolean isOpen() {
        return this.f72917a.isOpen();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: s0 */
    public long mo2658s0(String str, int i, ContentValues contentValues) throws SQLException {
        return this.f72917a.insertWithOnConflict(str, null, contentValues, i);
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26147b
    /* renamed from: w */
    public void mo2657w() {
        this.f72917a.beginTransaction();
    }
}
