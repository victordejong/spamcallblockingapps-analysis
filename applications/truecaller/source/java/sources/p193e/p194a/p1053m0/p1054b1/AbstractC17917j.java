package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.j */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/j.class */
public abstract class AbstractC17917j {
    /* renamed from: a */
    public abstract int mo15546a();

    /* renamed from: b */
    public abstract void mo15545b(SQLiteDatabase sQLiteDatabase, int i);

    /* renamed from: c */
    public final void m15548c(SQLiteDatabase sQLiteDatabase, int i) {
        l.e(sQLiteDatabase, "db");
        if (i < mo15544d() || i > mo15546a()) {
            throw new C17916i(i);
        }
        mo15545b(sQLiteDatabase, i);
    }

    /* renamed from: d */
    public abstract int mo15544d();
}
