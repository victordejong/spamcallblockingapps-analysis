package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.m1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/m1.class */
public final class C17971m1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                    CREATE TABLE IF NOT EXISTS voip_history_peers (\n                        history_id INTEGER NOT NULL \n                        REFERENCES history (_id) ON DELETE CASCADE,\n                        normalized_number TEXT NOT NULL,\n                        status INTEGER DEFAULT 0 NOT NULL,\n                        position INTEGER NOT NULL,\n                        UNIQUE(history_id, position) ON CONFLICT REPLACE\n                    )\n                ");
    }
}
