package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.f1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/f1.class */
public final class C17943f1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_participants RENAME TO msg_im_group_participants_temp");
        sQLiteDatabase.execSQL("\n            CREATE TABLE msg_im_group_participants (\n                im_group_id TEXT NOT NULL,\n                im_peer_id TEXT NOT NULL,\n                roles INTEGER NOT NULL DEFAULT 0,\n                UNIQUE(im_group_id, im_peer_id)\n            )\n        ");
        sQLiteDatabase.execSQL("\n            INSERT INTO msg_im_group_participants (im_group_id, im_peer_id, roles) SELECT im_group_id, im_peer_id, roles FROM msg_im_group_participants_temp\n        ");
        sQLiteDatabase.execSQL("DROP TABLE msg_im_group_participants_temp");
        sQLiteDatabase.execSQL("CREATE TABLE msg_im_group_reports (\n                        group_id TEXT NOT NULL REFERENCES \n                        msg_im_group_info (im_group_id) ON DELETE CASCADE, \n                        peer_id TEXT, \n                        type INTEGER NOT NULL DEFAULT(0), \n                        sequence_number INTEGER DEFAULT(0), \n                        date INTEGER DEFAULT(0)\n                    )\n                    ");
    }
}
