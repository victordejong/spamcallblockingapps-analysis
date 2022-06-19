package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.n0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/n0.class */
public final class C17974n0 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                    UPDATE msg_conversations \n                        SET type = 2\n                    WHERE _id IN (\n                        SELECT\n                            c._id AS _id\n                        FROM msg_conversations c\n                            LEFT JOIN msg_conversation_participants cp \n                            on cp.conversation_id = c._id\n                            LEFT JOIN msg_participants p \n                            on cp.participant_id = p._id\n                        WHERE \n                            c.type = 0\n                            AND length(p.normalized_destination) > 6 AND \n                            (\n                                length(p.normalized_destination) <= 8\n                                OR (p.normalized_destination GLOB '+91*'  \n                                AND length(p.normalized_destination) <= 11)\n                            )\n                    )\n                ");
    }
}
