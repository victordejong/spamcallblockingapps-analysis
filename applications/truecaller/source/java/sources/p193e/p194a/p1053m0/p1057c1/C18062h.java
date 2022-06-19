package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1053m0.p1054b1.AbstractC17917j;
import s1.z.c.f0;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.h */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/h.class */
public final class C18062h implements AbstractC18063h0 {

    /* renamed from: a */
    public final AbstractC17917j f50981a;

    /* renamed from: b */
    public final AbstractC17917j f50982b;

    /* renamed from: c */
    public final AbstractC17917j f50983c;

    /* renamed from: d */
    public final AbstractC17917j f50984d;

    /* renamed from: e */
    public final AbstractC17917j f50985e;

    public C18062h(AbstractC17917j abstractC17917j, AbstractC17917j abstractC17917j2, AbstractC17917j abstractC17917j3, AbstractC17917j abstractC17917j4, AbstractC17917j abstractC17917j5) {
        l.e(abstractC17917j, "migrationHelperV11");
        l.e(abstractC17917j2, "migrationHelperV58");
        l.e(abstractC17917j3, "migrationHelperV64");
        l.e(abstractC17917j4, "migrationHelperV66");
        l.e(abstractC17917j5, "migrationHelperV68");
        this.f50981a = abstractC17917j;
        this.f50982b = abstractC17917j2;
        this.f50983c = abstractC17917j3;
        this.f50984d = abstractC17917j4;
        this.f50985e = abstractC17917j5;
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE msg_conversations (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER DEFAULT(0), tc_group_id TEXT, has_outgoing_messages INTEGER DEFAULT(0), phonebook_count INTEGER DEFAULT(0), white_list_count INTEGER DEFAULT(0), blacklist_count INTEGER DEFAULT(0), top_spammer_count INTEGER DEFAULT(0), has_spam_messages INTEGER DEFAULT(0), split_criteria INTEGER DEFAULT(0), preferred_transport INTEGER DEFAULT(3), history_events_count INTEGER DEFAULT(0), scheduled_messages_count INTEGER DEFAULT(0), hidden_number INTEGER NOT NULL DEFAULT(0), load_events_mode INTEGER NOT NULL DEFAULT(0), hidden_number_prompt_state INTEGER NOT NULL DEFAULT(0), is_spam INTEGER DEFAULT(0), outgoing_messages_only_count INTEGER DEFAULT(0), muted INTEGER NOT NULL DEFAULT(0), sound_uri TEXT)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sQLiteDatabase, "db");
        if (i <= 11) {
            this.f50981a.m15548c(sQLiteDatabase, i);
        }
        if (i <= 34) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN hidden_number_status INTEGER DEFAULT (2)");
        }
        if (i <= 46) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN filter INTEGER DEFAULT (0)");
        }
        if (i <= 58) {
            this.f50982b.m15548c(sQLiteDatabase, i);
        }
        if (i <= 64) {
            this.f50983c.m15548c(sQLiteDatabase, i);
        }
        if (i <= 66) {
            this.f50984d.m15548c(sQLiteDatabase, i);
        }
        if (i <= 68) {
            this.f50985e.m15548c(sQLiteDatabase, i);
        }
        if (i <= 71) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_conversations ADD COLUMN preferred_transport INTEGER DEFAULT (3)");
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        f0 f0Var = new f0(3);
        f0Var.a(new String[]{"\n            CREATE TRIGGER trigger_conversation_outgoing_message_count_on_message_insert\n                AFTER INSERT\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET has_outgoing_messages = has_outgoing_messages + ((new.status & 3) = 1),\n                    outgoing_messages_only_count = outgoing_messages_only_count + \n                        ((new.status & 3) = 1 AND new.transport != 5)\n                WHERE _id = new.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_outgoing_message_count_on_message_update\n                AFTER UPDATE OF status\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET has_outgoing_messages = has_outgoing_messages - ((old.status & 3) = 1) + ((new.status & 3) = 1),\n                    outgoing_messages_only_count = outgoing_messages_only_count \n                        - ((old.status & 3) = 1 AND old.transport != 5) \n                        + ((new.status & 3) = 1 AND new.transport != 5)\n                WHERE _id = new.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_outgoing_message_count_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET has_outgoing_messages = has_outgoing_messages - ((old.status & 3) = 1),\n                    outgoing_messages_only_count = outgoing_messages_only_count - \n                        ((old.status & 3) = 1 AND old.transport != 5)\n                WHERE _id = old.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_history_events_count_on_message_insert\n                AFTER INSERT\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET history_events_count = history_events_count + (new.transport = 5)\n                WHERE _id = new.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_history_events_count_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET history_events_count = history_events_count - (old.transport = 5)\n                WHERE _id = old.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_delete_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n                WHEN (SELECT NOT EXISTS (\n                    SELECT 1\n                    FROM msg_messages\n                    WHERE conversation_id = old.conversation_id))\n            BEGIN DELETE FROM msg_conversations\n                WHERE _id = old.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_delete_on_message_conversation_id_update\n                AFTER UPDATE OF conversation_id\n                ON msg_messages\n                WHEN (SELECT NOT EXISTS (\n                    SELECT 1\n                    FROM msg_messages\n                    WHERE conversation_id = old.conversation_id))\n            BEGIN DELETE FROM msg_conversations\n                WHERE _id = old.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_scheduled_messages_count_on_message_insert\n                AFTER INSERT\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET scheduled_messages_count = scheduled_messages_count + \n                    ((new.status & 128) = 128)\n                WHERE _id = new.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_scheduled_messages_count_on_message_delete\n                AFTER DELETE\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET scheduled_messages_count = scheduled_messages_count - \n                    ((old.status & 128) = 128)\n                WHERE _id = old.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_scheduled_messages_count_on_message_update\n                AFTER UPDATE OF status\n                ON msg_messages\n            BEGIN UPDATE msg_conversations\n                SET scheduled_messages_count = scheduled_messages_count - \n                    (\n                        (old.status & 128) = 128 AND\n                        (new.status & 128) != 128\n                    )\n                WHERE _id = old.conversation_id;\n            END\n        "});
        f0Var.a(new String[]{"\n            CREATE TRIGGER trigger_conversation_counts_on_conversation_participant_insert\n                AFTER INSERT\n                ON msg_conversation_participants\n            BEGIN UPDATE msg_conversations\n                SET phonebook_count = phonebook_count + (SELECT phonebook_count\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    blacklist_count = blacklist_count + (SELECT filter_action = 1\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    white_list_count = white_list_count + (SELECT filter_action = 2\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    top_spammer_count = top_spammer_count + (SELECT is_top_spammer\n                        FROM msg_participants\n                        WHERE _id = new.participant_id),\n                    is_spam = (SELECT is_spam\n                        FROM msg_participants\n                        WHERE _id = new.participant_id)\n                WHERE _id = new.conversation_id;\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_counts_on_participant_update\n                AFTER UPDATE OF phonebook_count, filter_action, is_top_spammer, is_spam\n                ON msg_participants\n            BEGIN UPDATE msg_conversations\n                SET phonebook_count = phonebook_count - old.phonebook_count + new.phonebook_count,\n                    blacklist_count = blacklist_count - (old.filter_action = 1) + (new.filter_action = 1),\n                    white_list_count = white_list_count - (old.filter_action = 2) + (new.filter_action = 2),\n                    top_spammer_count = top_spammer_count - old.is_top_spammer + new.is_top_spammer,\n                    is_spam = new.is_spam\n                WHERE _id IN (SELECT conversation_id\n                    FROM msg_conversation_participants\n                    WHERE participant_id = new._id);\n            END\n        ", "\n            CREATE TRIGGER trigger_conversation_counts_on_conversation_participant_delete\n                AFTER DELETE\n                ON msg_conversation_participants\n            BEGIN UPDATE msg_conversations\n                SET phonebook_count = phonebook_count - (SELECT phonebook_count\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    blacklist_count = blacklist_count - (SELECT filter_action = 1\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    white_list_count = white_list_count - (SELECT filter_action = 2\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    top_spammer_count = top_spammer_count - (SELECT is_top_spammer\n                        FROM msg_participants\n                        WHERE _id = old.participant_id),\n                    is_spam = (SELECT is_spam\n                        FROM msg_participants\n                        WHERE _id = old.participant_id)    \n                WHERE _id = old.conversation_id;\n            END\n        "});
        f0Var.a(new String[]{"\n            CREATE TRIGGER trigger_conversation_split_criteria_on_conversation_insert\n                AFTER INSERT\n                ON msg_conversations\n            \n       BEGIN UPDATE msg_conversations\n                SET split_criteria = CASE\n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL\n                    OR ((top_spammer_count = 1 OR is_spam = 1) AND type NOT IN (2, 3)))\n                    = 1 THEN 0\n                WHEN (type NOT IN (2, 3)\n                    OR history_events_count\n                    OR phonebook_count)\n                    = 1 THEN 2\n                ELSE 1 END\n                WHERE _id = new._id;\n            END\n    \n        ", "\n            CREATE TRIGGER trigger_conversation_split_criteria_on_conversation_update\n                AFTER UPDATE OF phonebook_count, white_list_count, blacklist_count, top_spammer_count, has_outgoing_messages, tc_group_id, type, \n                history_events_count, is_spam\n                ON msg_conversations\n            \n       BEGIN UPDATE msg_conversations\n                SET split_criteria = CASE\n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL\n                    OR ((top_spammer_count = 1 OR is_spam = 1) AND type NOT IN (2, 3)))\n                    = 1 THEN 0\n                WHEN (type NOT IN (2, 3)\n                    OR history_events_count\n                    OR phonebook_count)\n                    = 1 THEN 2\n                ELSE 1 END\n                WHERE _id = new._id;\n            END\n    \n        "});
        return (String[]) f0Var.a.toArray(new String[f0Var.b()]);
    }
}
