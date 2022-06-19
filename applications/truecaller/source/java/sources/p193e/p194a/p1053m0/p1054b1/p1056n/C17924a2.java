package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.a2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/a2.class */
public final class C17924a2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "\n            UPDATE msg_participants\n            SET filter_action =\n                CASE (SELECT rule FROM filters WHERE value = normalized_destination AND wildcard_type = 0)\n                    WHEN 0 THEN 1\n                    WHEN 1 THEN 2\n                    ELSE 0\n                END\n            ", "\n            UPDATE msg_conversations\n            SET blacklist_count = (\n                SELECT COUNT()\n                FROM msg_participants\n                WHERE _id IN (SELECT participant_id FROM msg_conversation_participants WHERE conversation_id = msg_conversations._id)\n                    AND filter_action=1\n            )\n            ");
    }
}
