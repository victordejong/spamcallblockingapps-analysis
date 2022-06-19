package p110h1;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import androidx.appcompat.widget.C0249l;
import java.io.IOException;
import p099g1.AbstractC2795a;
import p099g1.AbstractC2801d;
/* renamed from: h1.a */
/* loaded from: classes-dex2jar.jar:h1/a.class */
public class C2993a implements AbstractC2795a {

    /* renamed from: b */
    public static final String[] f10084b = new String[0];

    /* renamed from: a */
    public final SQLiteDatabase f10085a;

    /* renamed from: h1.a$a */
    /* loaded from: classes-dex2jar.jar:h1/a$a.class */
    public class C2994a implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2801d f10086a;

        public C2994a(C2993a c2993a, AbstractC2801d abstractC2801d) {
            this.f10086a = abstractC2801d;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f10086a.mo2999d(new C3000e(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public C2993a(SQLiteDatabase sQLiteDatabase) {
        this.f10085a = sQLiteDatabase;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10085a.close();
    }

    /* renamed from: d */
    public String m2776d() {
        return this.f10085a.getPath();
    }

    /* renamed from: k */
    public Cursor m2775k(AbstractC2801d abstractC2801d) {
        return this.f10085a.rawQueryWithFactory(new C2994a(this, abstractC2801d), abstractC2801d.mo2998k(), f10084b, null);
    }

    /* renamed from: l */
    public Cursor m2774l(String str) {
        return m2775k(new C0249l(str));
    }
}
