package p034c9;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.p012v4.media.AbstractC0081a;
/* renamed from: c9.a */
/* loaded from: classes2-dex2jar.jar:c9/a.class */
public class C0854a implements AbstractC0859f {

    /* renamed from: a */
    public final SQLiteDatabase f3147a;

    public C0854a(SQLiteDatabase sQLiteDatabase) {
        this.f3147a = sQLiteDatabase;
    }

    /* renamed from: a */
    public AbstractC0081a m7276a(String str) {
        return new C0855b(this.f3147a.compileStatement(str), this.f3147a);
    }

    /* renamed from: b */
    public C0860g m7275b(String str, String[] strArr) {
        Cursor rawQuery = this.f3147a.rawQuery(str, null);
        int i = C0860g.f3152b;
        return rawQuery instanceof C0860g ? (C0860g) rawQuery : new C0860g(rawQuery);
    }
}
