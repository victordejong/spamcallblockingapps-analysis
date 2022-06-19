package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.h1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/h1.class */
public final class C17951h1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "ALTER TABLE msg_conversations ADD COLUMN outgoing_messages_only_count INTEGER DEFAULT(0)", "\n                UPDATE msg_conversations\n                SET outgoing_messages_only_count = (SELECT COUNT(*)\n                    FROM msg_messages\n                    WHERE (status & 3) = 1\n                    AND transport != 5\n                    AND conversation_id = msg_conversations._id)\n            ");
    }
}
