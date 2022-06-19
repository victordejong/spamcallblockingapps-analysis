package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.j2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/j2.class */
public final class C17960j2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("CREATE TABLE msg_im_quick_actions (\n            _id INTEGER PRIMARY KEY AUTOINCREMENT, \n            message_id  INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, \n            action_type INTEGER DEFAULT(-1), \n            action_value TEXT)");
    }
}
