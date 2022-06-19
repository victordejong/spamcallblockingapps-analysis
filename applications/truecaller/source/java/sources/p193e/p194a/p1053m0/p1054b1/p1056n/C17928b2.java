package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.b2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/b2.class */
public final class C17928b2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                UPDATE msg_messages SET sequence_number = 0 \n                    WHERE sequence_number > 0 AND conversation_id IN (SELECT _id FROM msg_conversations WHERE type != 1)\n            ");
    }
}
