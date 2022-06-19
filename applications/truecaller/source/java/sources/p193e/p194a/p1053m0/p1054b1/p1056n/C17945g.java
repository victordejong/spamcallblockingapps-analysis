package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.g */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/g.class */
public final class C17945g implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                CREATE TABLE contact_settings (\n                    tc_id TEXT UNIQUE NOT NULL,\n                    hidden_from_identified INT NOT NULL DEFAULT 0\n                )\n        ");
    }
}
