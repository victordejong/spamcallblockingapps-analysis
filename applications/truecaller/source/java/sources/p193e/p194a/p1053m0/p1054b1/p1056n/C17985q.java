package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.q */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/q.class */
public final class C17985q implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_users RENAME TO msg_im_users_temp");
        sQLiteDatabase.execSQL("\n                CREATE TABLE msg_im_users(\n                    normalized_number TEXT UNIQUE,\n                    im_peer_id TEXT UNIQUE,\n                    date INTEGER NOT NULL,\n                    join_im_notification INTEGER NOT NULL DEFAULT 0,\n                    registration_timestamp INTEGER NOT NULL DEFAULT 0,\n                    tc_id TEXT,\n                    CHECK(normalized_number NOT NULL OR im_peer_id NOT NULL) ON CONFLICT REPLACE\n                )\n        ");
        sQLiteDatabase.execSQL("\n                INSERT INTO msg_im_users SELECT\n                    normalized_number,\n                    im_peer_id,\n                    date,\n                    join_im_notification,\n                    registration_timestamp,\n                    NULL\n                FROM msg_im_users_temp\n                WHERE normalized_number NOT NULL\n                GROUP BY normalized_number\n            ");
        sQLiteDatabase.execSQL("DROP TABLE msg_im_users_temp");
    }
}
