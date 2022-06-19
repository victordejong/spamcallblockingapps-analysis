package androidx.p042i.p043a.p044a;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0756e;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.p042i.p043a.C0739a;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.i.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/a.class */
public class C0740a implements AbstractC0749b {

    /* renamed from: a */
    private static final String[] f2632a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: b */
    private static final String[] f2633b = new String[0];

    /* renamed from: c */
    private final SQLiteDatabase f2634c;

    public C0740a(SQLiteDatabase sQLiteDatabase) {
        this.f2634c = sQLiteDatabase;
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: a */
    public Cursor mo19524a(final AbstractC0756e abstractC0756e) {
        return this.f2634c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.i.a.a.a.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                abstractC0756e.mo18252a(new C0747d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, abstractC0756e.mo18250b(), f2633b, null);
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: a */
    public Cursor mo19523a(final AbstractC0756e abstractC0756e, CancellationSignal cancellationSignal) {
        return this.f2634c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.i.a.a.a.2
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                abstractC0756e.mo18252a(new C0747d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, abstractC0756e.mo18250b(), f2633b, null, cancellationSignal);
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: a */
    public AbstractC0757f mo19522a(String str) {
        return new C0748e(this.f2634c.compileStatement(str));
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: a */
    public void mo19525a() {
        this.f2634c.beginTransaction();
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: a */
    public void mo19521a(String str, Object[] objArr) {
        this.f2634c.execSQL(str, objArr);
    }

    /* renamed from: a */
    public boolean m19530a(SQLiteDatabase sQLiteDatabase) {
        return this.f2634c == sQLiteDatabase;
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: b */
    public Cursor mo19519b(String str) {
        return mo19524a(new C0739a(str));
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: b */
    public void mo19520b() {
        this.f2634c.endTransaction();
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: c */
    public void mo19518c() {
        this.f2634c.setTransactionSuccessful();
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: c */
    public void mo19517c(String str) {
        this.f2634c.execSQL(str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2634c.close();
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: d */
    public boolean mo19516d() {
        return this.f2634c.inTransaction();
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: e */
    public boolean mo19515e() {
        return this.f2634c.isOpen();
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: f */
    public String mo19514f() {
        return this.f2634c.getPath();
    }

    @Override // androidx.p042i.p043a.AbstractC0749b
    /* renamed from: g */
    public List<Pair<String, String>> mo19513g() {
        return this.f2634c.getAttachedDbs();
    }
}
