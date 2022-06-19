package p110h1;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import p099g1.AbstractC2801d;
/* renamed from: h1.b */
/* loaded from: classes-dex2jar.jar:h1/b.class */
public class C2995b implements SQLiteDatabase.CursorFactory {

    /* renamed from: a */
    public final /* synthetic */ AbstractC2801d f10087a;

    public C2995b(C2993a c2993a, AbstractC2801d abstractC2801d) {
        this.f10087a = abstractC2801d;
    }

    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
    public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        this.f10087a.mo2999d(new C3000e(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
