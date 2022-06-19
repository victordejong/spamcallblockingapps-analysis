package p193e.p194a.p1053m0.p1054b1;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.c */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/c.class */
public final class C17910c extends AbstractC17917j {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: a */
    public int mo15546a() {
        return 64;
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: b */
    public void mo15545b(SQLiteDatabase sQLiteDatabase, int i) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN phonebook_count INTEGER DEFAULT (0)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN white_list_count INTEGER DEFAULT (0)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN blacklist_count INTEGER DEFAULT (0)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN top_spammer_count INTEGER DEFAULT (0)");
        sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN split_criteria INTEGER DEFAULT (0)");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations\n                SET has_outgoing_messages = (SELECT COUNT(*)\n                    FROM msg_messages\n                    WHERE (status & 3) = 1\n                    AND conversation_id = msg_conversations._id)\n            ");
        m15549e(sQLiteDatabase, "phonebook_count", "phonebook_count");
        m15549e(sQLiteDatabase, "white_list_count", "filter_action = 2");
        m15549e(sQLiteDatabase, "blacklist_count", "filter_action = 1");
        m15549e(sQLiteDatabase, "top_spammer_count", "is_top_spammer");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations\n                SET split_criteria = CASE phonebook_count OR white_list_count OR blacklist_count OR top_spammer_count OR has_outgoing_messages\n                    WHEN 1 THEN 0\n                    ELSE 1 END\n            ");
    }

    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17917j
    /* renamed from: d */
    public int mo15544d() {
        return 0;
    }

    /* renamed from: e */
    public final void m15549e(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        sQLiteDatabase.execSQL(C22128a.m8717E2("\n                UPDATE msg_conversations\n                SET ", str, " = (SELECT SUM(", str2, ")\n                    FROM msg_participants\n                    WHERE msg_participants._id IN (SELECT participant_id\n                        FROM msg_conversation_participants\n                        WHERE conversation_id = msg_conversations._id))\n            "));
    }
}
