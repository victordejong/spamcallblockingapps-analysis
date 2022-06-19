package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.s2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/s2.class */
public final class C17996s2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                CREATE TABLE msg_im_group_participants (\n                    im_group_id TEXT NOT NULL,\n                    im_peer_id TEXT NOT NULL,\n                    roles INTEGER NOT NULL DEFAULT 0,\n                    UNIQUE(im_group_id, im_peer_id)\n                )\n        ");
    }
}
