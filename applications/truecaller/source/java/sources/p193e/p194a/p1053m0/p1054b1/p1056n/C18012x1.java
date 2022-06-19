package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.x1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/x1.class */
public final class C18012x1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                CREATE TABLE msg_im_invite_group_info (\n                    invite_key TEXT PRIMARY KEY,\n                    title TEXT,\n                    avatar TEXT,\n                    user_count INTEGER NOT NULL DEFAULT 0,\n                    user_list TEXT,\n                    timestamp INTEGER NOT NULL\n                )\n        ");
    }
}
