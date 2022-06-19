package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.y1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/y1.class */
public final class C18015y1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_thread_stats ADD COLUMN is_rich_text_snippet INTEGER DEFAULT 0");
        sQLiteDatabase.execSQL("UPDATE msg_entities SET entity_info2 = 0 WHERE entity_type = 0");
        sQLiteDatabase.execSQL("\n                UPDATE msg_thread_stats SET is_rich_text_snippet = (\n                    SELECT entity_info2\n                    FROM msg_entities\n                    WHERE message_id = latest_message_id AND type = 'text/plain'\n                )\n                ");
    }
}
