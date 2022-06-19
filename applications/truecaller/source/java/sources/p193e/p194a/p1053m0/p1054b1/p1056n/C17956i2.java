package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.i2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/i2.class */
public final class C17956i2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_entities ADD COLUMN edited INTEGER DEFAULT(0)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN edit_message_id INTEGER DEFAULT(-1)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN edit_message_date INTEGER DEFAULT(0)");
    }
}
