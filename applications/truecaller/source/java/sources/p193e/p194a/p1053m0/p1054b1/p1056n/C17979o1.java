package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.o1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/o1.class */
public final class C17979o1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n               CREATE TABLE IF NOT EXISTS msg_links (\n                    entity_id INTEGER NOT NULL REFERENCES \n                    msg_entities (_id) ON DELETE CASCADE, \n                    message_id INTEGER NOT NULL, \n                    link TEXT NOT NULL, \n                    UNIQUE (message_id, link) ON CONFLICT REPLACE \n                )    \n            ");
    }
}
