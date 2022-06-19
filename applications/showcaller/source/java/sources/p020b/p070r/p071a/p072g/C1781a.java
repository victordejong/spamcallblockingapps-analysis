package p020b.p070r.p071a.p072g;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import java.util.List;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1779e;
import p020b.p070r.p071a.AbstractC1780f;
import p020b.p070r.p071a.C1771a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.r.a.g.a */
/* loaded from: classes-dex2jar.jar:b/r/a/g/a.class */
public class C1781a implements AbstractC1772b {

    /* renamed from: d */
    private static final String[] f6618d = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: e */
    private static final String[] f6619e = new String[0];

    /* renamed from: f */
    private final SQLiteDatabase f6620f;

    /* renamed from: b.r.a.g.a$a */
    /* loaded from: classes-dex2jar.jar:b/r/a/g/a$a.class */
    public class C1782a implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        final /* synthetic */ AbstractC1779e f6621a;

        C1782a(AbstractC1779e abstractC1779e) {
            C1781a.this = r4;
            this.f6621a = abstractC1779e;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f6621a.mo28920e(new C1788d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    /* renamed from: b.r.a.g.a$b */
    /* loaded from: classes-dex2jar.jar:b/r/a/g/a$b.class */
    class C1783b implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        final /* synthetic */ AbstractC1779e f6623a;

        C1783b(AbstractC1779e abstractC1779e) {
            C1781a.this = r4;
            this.f6623a = abstractC1779e;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f6623a.mo28920e(new C1788d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public C1781a(SQLiteDatabase sQLiteDatabase) {
        this.f6620f = sQLiteDatabase;
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: G */
    public void mo28919G() {
        this.f6620f.setTransactionSuccessful();
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: H */
    public void mo28918H(String str, Object[] objArr) {
        this.f6620f.execSQL(str, objArr);
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: M */
    public Cursor mo28917M(String str) {
        return mo28915S(new C1771a(str));
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: O */
    public void mo28916O() {
        this.f6620f.endTransaction();
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: S */
    public Cursor mo28915S(AbstractC1779e abstractC1779e) {
        return this.f6620f.rawQueryWithFactory(new C1782a(abstractC1779e), abstractC1779e.mo28921a(), f6619e, null);
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: V */
    public boolean mo28914V() {
        return this.f6620f.inTransaction();
    }

    /* renamed from: a */
    public boolean m28913a(SQLiteDatabase sQLiteDatabase) {
        return this.f6620f == sQLiteDatabase;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f6620f.close();
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    public String getPath() {
        return this.f6620f.getPath();
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: h */
    public void mo28912h() {
        this.f6620f.beginTransaction();
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    public boolean isOpen() {
        return this.f6620f.isOpen();
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: m */
    public List<Pair<String, String>> mo28911m() {
        return this.f6620f.getAttachedDbs();
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: n */
    public void mo28910n(String str) {
        this.f6620f.execSQL(str);
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: s */
    public AbstractC1780f mo28909s(String str) {
        return new C1789e(this.f6620f.compileStatement(str));
    }

    @Override // p020b.p070r.p071a.AbstractC1772b
    /* renamed from: x */
    public Cursor mo28908x(AbstractC1779e abstractC1779e, CancellationSignal cancellationSignal) {
        return this.f6620f.rawQueryWithFactory(new C1783b(abstractC1779e), abstractC1779e.mo28921a(), f6619e, null, cancellationSignal);
    }
}
