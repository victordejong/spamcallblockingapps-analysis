package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.g */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/g.class */
public final class C17914g extends AbstractC17917j {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: a */
    public int mo15546a() {
        return 84;
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: b */
    public void mo15545b(SQLiteDatabase sQLiteDatabase, int i) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n               CREATE TABLE msg_im_reactions (\n               _id INTEGER PRIMARY KEY AUTOINCREMENT,\n               message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n               emoji TEXT,\n               from_peer_id TEXT,\n               send_date INTEGER DEFAULT(0)\n               )\n            ");
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: d */
    public int mo15544d() {
        return 0;
    }
}
