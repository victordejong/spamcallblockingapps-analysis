package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.t2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/t2.class */
public final class C18000t2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                CREATE TABLE msg_im_group_info (\n                    im_group_id TEXT PRIMARY KEY,\n                    title TEXT,\n                    avatar TEXT,\n                    invited_date INTEGER NOT NULL,\n                    invited_by TEXT\n                )\n        ");
    }
}
