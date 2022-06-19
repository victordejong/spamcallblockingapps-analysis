package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.a */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/a.class */
public final class C17908a extends AbstractC17917j {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: a */
    public int mo15546a() {
        return 11;
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: b */
    public void mo15545b(SQLiteDatabase sQLiteDatabase, int i) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n               CREATE TABLE msg_conversations (\n               _id INTEGER PRIMARY KEY AUTOINCREMENT,\n               type INTEGER DEFAULT(0),\n               tc_group_id TEXT,\n               latest_message_id INTEGER,\n               latest_message_status INTEGER,\n               latest_message_entities_types TEXT DEFAULT(''),\n               latest_sim_token TEXT DEFAULT('-1'),\n               date_sorting INTEGER,\n               unread_messages_count INTEGER DEFAULT(0),\n               snippet_text TEXT DEFAULT(''),\n               actions_dismissed INTEGER DEFAULT(0),\n               has_outgoing_messages INTEGER DEFAULT(0)\n               )\n            ");
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: d */
    public int mo15544d() {
        return 0;
    }
}
