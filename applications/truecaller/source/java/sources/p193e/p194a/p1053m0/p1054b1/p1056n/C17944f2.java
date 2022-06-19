package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.f2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/f2.class */
public final class C17944f2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations\n                SET load_events_mode = \n                        CASE\n                            WHEN load_events_mode = 0 THEN 1\n                            WHEN load_events_mode = 1 THEN 2\n                            ELSE 0\n                        END\n        ");
    }
}
