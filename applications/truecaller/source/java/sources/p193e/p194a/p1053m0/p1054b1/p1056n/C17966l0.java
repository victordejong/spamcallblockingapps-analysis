package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.l0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/l0.class */
public final class C17966l0 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations SET scheduled_messages_count = (SELECT COUNT() FROM msg_messages \n                    WHERE conversation_id=msg_conversations._id AND (status & 128) = 128)\n            ");
    }
}
