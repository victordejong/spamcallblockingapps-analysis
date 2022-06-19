package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.m0.b1.d */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/d.class */
public final class C17911d extends AbstractC17917j {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: a */
    public int mo15546a() {
        return 66;
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: b */
    public void mo15545b(SQLiteDatabase sQLiteDatabase, int i) {
        C22128a.m8573s0(sQLiteDatabase, "db", "\n               ALTER TABLE msg_conversations ADD COLUMN has_spam_messages INTEGER DEFAULT(0)\n            ", "\n           CREATE TABLE msg_thread_stats (\n           latest_message_id INTEGER,\n           latest_message_status INTEGER,\n           latest_message_entities_types TEXT DEFAULT(''),\n           unread_messages_count INTEGER DEFAULT(0),\n           latest_sim_token TEXT DEFAULT('-1'),\n           date_sorting INTEGER,\n           snippet_text TEXT DEFAULT(''),\n           actions_dismissed INTEGER DEFAULT(0),\n           filter INTEGER NOT NULL,\n           conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE,\n           UNIQUE(filter, conversation_id) ON CONFLICT REPLACE)\n        ");
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: d */
    public int mo15544d() {
        return 0;
    }
}
