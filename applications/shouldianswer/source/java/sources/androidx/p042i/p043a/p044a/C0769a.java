package androidx.p042i.p043a.p044a;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.p042i.p043a.AbstractC0778b;
import androidx.p042i.p043a.AbstractC0785e;
import androidx.p042i.p043a.AbstractC0786f;
import androidx.p042i.p043a.C0768a;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.i.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/a.class */
public class C0769a implements AbstractC0778b {

    /* renamed from: a */
    private static final String[] f2531a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: b */
    private static final String[] f2532b = new String[0];

    /* renamed from: c */
    private final SQLiteDatabase f2533c;

    public C0769a(SQLiteDatabase sQLiteDatabase) {
        this.f2533c = sQLiteDatabase;
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: a */
    public Cursor mo5371a(final AbstractC0785e abstractC0785e) {
        return this.f2533c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.i.a.a.a.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                abstractC0785e.mo4408a(new C0776d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, abstractC0785e.mo4406b(), f2532b, null);
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: a */
    public Cursor mo5370a(final AbstractC0785e abstractC0785e, CancellationSignal cancellationSignal) {
        return this.f2533c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.i.a.a.a.2
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                abstractC0785e.mo4408a(new C0776d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, abstractC0785e.mo4406b(), f2532b, null, cancellationSignal);
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: a */
    public AbstractC0786f mo5369a(String str) {
        return new C0777e(this.f2533c.compileStatement(str));
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: a */
    public void mo5372a() {
        this.f2533c.beginTransaction();
    }

    /* renamed from: a */
    public boolean m5377a(SQLiteDatabase sQLiteDatabase) {
        return this.f2533c == sQLiteDatabase;
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: b */
    public Cursor mo5367b(String str) {
        return mo5371a(new C0768a(str));
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: b */
    public void mo5368b() {
        this.f2533c.endTransaction();
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: c */
    public void mo5366c() {
        this.f2533c.setTransactionSuccessful();
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: c */
    public void mo5365c(String str) {
        this.f2533c.execSQL(str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2533c.close();
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: d */
    public boolean mo5364d() {
        return this.f2533c.inTransaction();
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: e */
    public boolean mo5363e() {
        return this.f2533c.isOpen();
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: f */
    public String mo5362f() {
        return this.f2533c.getPath();
    }

    @Override // androidx.p042i.p043a.AbstractC0778b
    /* renamed from: g */
    public List<Pair<String, String>> mo5361g() {
        return this.f2533c.getAttachedDbs();
    }
}
