package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.C17913f;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.o */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/o.class */
public class C18076o implements AbstractC18063h0 {

    /* renamed from: b */
    public static final String f51002b;

    /* renamed from: a */
    public C17913f f51003a;

    static {
        StringBuilder m8728C = C22128a.m8728C("CREATE VIEW msg_messages_with_entities AS ");
        m8728C.append(String.format("SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, '|') AS me_entities_id, GROUP_CONCAT(e.entity_type, '|') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || '|' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || '|' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || '|' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || '|' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || '|' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || '|' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || '|' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || '|' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, '|') AS re_entities_id, GROUP_CONCAT(re.entity_type, '|') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || '|' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || '|' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || '|' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || '|' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || '|' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || '|' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || '|' || re.entity_info6, \"\") AS re_entity_info6 FROM (SELECT * FROM msg_messages%s) m JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id %sGROUP BY m._id%s", "", "", ""));
        f51002b = m8728C.toString();
    }

    public C18076o(C17913f c17913f) {
        this.f51003a = c17913f;
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE msg_messages(_id INTEGER PRIMARY KEY AUTOINCREMENT, conversation_id INTEGER NOT NULL, participant_id INTEGER NOT NULL, date INTEGER DEFAULT(0), date_sent INTEGER DEFAULT(0), status INTEGER DEFAULT(0), seen INTEGER DEFAULT(0), read INTEGER DEFAULT(0), locked INTEGER DEFAULT(0), transport INTEGER DEFAULT(3),sim_token TEXT NOT NULL DEFAULT('-1'),scheduled_transport INTEGER DEFAULT(3),analytics_id TEXT, hidden_number INTEGER DEFAULT(0),raw_address TEXT,category INTEGER, sync_status INTEGER DEFAULT(0),classification INTEGER DEFAULT(0),retry_count INTEGER DEFAULT(0),retry_date INTEGER DEFAULT(0),reply_to_msg_id INTEGER DEFAULT(-1),sequence_number INTEGER NOT NULL DEFAULT(0),group_id_day INTEGER NOT NULL DEFAULT(-1),group_id_minute INTEGER NOT NULL DEFAULT(-1),analytics_context TEXT, send_schedule_date INTEGER NOT NULL DEFAULT(0), important INTEGER DEFAULT(0), important_date INTEGER NOT NULL DEFAULT(0), language TEXT, edit_message_id INTEGER DEFAULT(-1),edit_message_date INTEGER DEFAULT(0),raw_id TEXT,info1 TEXT,info2 TEXT,info3 TEXT,info4 TEXT,info5 TEXT,info6 TEXT,info7 TEXT,info8 TEXT,info9 TEXT,info10 TEXT,info11 TEXT,info12 TEXT,info13 TEXT,info14 TEXT,info15 TEXT,info16 TEXT,info17 TEXT,info18 TEXT,info19 TEXT,info20 TEXT,info21 TEXT,info22 TEXT,info23 TEXT,info24 TEXT,info25 TEXT,info26 TEXT,info27 TEXT)", "CREATE INDEX idx_msg_messages_conversation_id_sequence_number_date ON msg_messages (conversation_id, sequence_number, date)", "CREATE INDEX idx_msg_messages_participant_id ON msg_messages (participant_id)", "CREATE INDEX idx_msg_messages_date ON msg_messages (date)", "CREATE INDEX idx_msg_messages_seen_date ON msg_messages (seen, date)", "CREATE INDEX idx_msg_messages_transport_raw_id ON msg_messages (transport, raw_id)", "CREATE TABLE msg_entities (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, type TEXT NOT NULL, entity_type INTEGER NOT NULL DEFAULT(8),entity_info1 TEXT NOT NULL DEFAULT(''), entity_info2 TEXT NOT NULL DEFAULT(''), entity_info3 TEXT NOT NULL DEFAULT(''), entity_info4 TEXT NOT NULL DEFAULT(''), entity_info5 TEXT NOT NULL DEFAULT(''), entity_info6 TEXT NOT NULL DEFAULT(''), entity_info7 TEXT NOT NULL DEFAULT(''), edited INTEGER NOT NULL DEFAULT(0))", "CREATE INDEX idx_msg_entities_message_id ON msg_entities(message_id)", "CREATE TABLE msg_im_reactions (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, emoji TEXT,from_peer_id TEXT,status INTEGER DEFAULT(0),send_date INTEGER DEFAULT(0))", "CREATE INDEX idx_msg_im_reactions_status ON msg_im_reactions(status)", "CREATE TABLE msg_im_unsupported_events (_id INTEGER PRIMARY KEY AUTOINCREMENT, event BLOB NOT NULL, api_version INTEGER DEFAULT(0),event_type INTEGER DEFAULT(0))", "CREATE INDEX idx_msg_im_unsupported_events_api_version ON msg_im_unsupported_events(api_version)", "CREATE TABLE msg_im_unprocessed_events (_id INTEGER PRIMARY KEY AUTOINCREMENT, event BLOB NOT NULL, im_group_id TEXT NOT NULL, reference_raw_id TEXT NOT NULL, seq_number INTEGER DEFAULT(-1), event_type INTEGER DEFAULT(0))", "CREATE INDEX idx_msg_im_unprocessed_events_reference_raw_id ON msg_im_unprocessed_events(reference_raw_id)", "CREATE INDEX idx_msg_im_unprocessed_events_seq_number ON msg_im_unprocessed_events(seq_number)", "CREATE TABLE msg_im_group_reports (group_id TEXT NOT NULL REFERENCES msg_im_group_info (im_group_id) ON DELETE CASCADE, peer_id TEXT, type INTEGER NOT NULL DEFAULT(0), sequence_number INTEGER DEFAULT(0), date INTEGER DEFAULT(0))", "CREATE TABLE msg_im_mentions (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, im_id TEXT,m_offset INTEGER DEFAULT(-1),m_length INTEGER DEFAULT(-1),private_name TEXT,public_name TEXT )", "CREATE TABLE msg_links (entity_id INTEGER NOT NULL REFERENCES msg_entities (_id) ON DELETE CASCADE, message_id INTEGER NOT NULL, link TEXT NOT NULL, UNIQUE (message_id, link) ON CONFLICT REPLACE )", "CREATE TABLE msg_im_quick_actions (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, action_type INTEGER DEFAULT(-1), action_value TEXT )"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C17913f c17913f = this.f51003a;
        Objects.requireNonNull(c17913f);
        l.e(sQLiteDatabase, "db");
        if (i < 12) {
            sQLiteDatabase.execSQL("\n    CREATE TABLE msg_messages (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        conversation_id INTEGER NOT NULL,\n        participant_id INTEGER NOT NULL,\n        date INTEGER DEFAULT(0),\n        date_sent INTEGER DEFAULT(0),\n        status INTEGER DEFAULT(0),\n        seen INTEGER DEFAULT(0),\n        read INTEGER DEFAULT(0),\n        locked INTEGER DEFAULT(0),\n        transport INTEGER DEFAULT(3),\n        sim_token TEXT NOT NULL DEFAULT('-1'),\n        scheduled_transport INTEGER DEFAULT(3),\n        analytics_id TEXT,\n        hidden_number INTEGER DEFAULT(0),\n        raw_address TEXT,\n        category INTEGER,\n        sync_status INTEGER DEFAULT(0),\n        classification INTEGER DEFAULT(0),\n        retry_count INTEGER DEFAULT(0),\n        retry_date INTEGER DEFAULT(0),\n        reply_to_msg_id INTEGER DEFAULT(-1),\n        sequence_number INTEGER NOT NULL DEFAULT(0)\n    )\n    ");
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_messages_conversation_id_sequence_number_date ON msg_messages (conversation_id, sequence_number, date)\n    ");
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_messages_participant_id ON msg_messages (participant_id)\n    ");
            sQLiteDatabase.execSQL("\n    CREATE TABLE msg_entities (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        type TEXT NOT NULL,\n        content TEXT NOT NULL,\n        thumbnail TEXT NOT NULL DEFAULT(''),\n        width INTEGER DEFAULT(-1),\n        height INTEGER DEFAULT(-1),\n        duration INTEGER DEFAULT(-1),\n        status INTEGER DEFAULT(0),\n        size INTEGER DEFAULT(-1)\n    )\n    ");
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_entities_message_id ON msg_entities (message_id)\n    ");
            sQLiteDatabase.execSQL("\n    CREATE TABLE msg_sms_transport_info (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        raw_id INTEGER NOT NULL,\n        raw_status INTEGER NOT NULL,\n        raw_thread_id INTEGER NOT NULL DEFAULT(-1),\n        message_uri TEXT NOT NULL,\n        protocol INTEGER,\n        type INTEGER,\n        service_center TEXT,\n        subject TEXT,\n        error_code INTEGER,\n        reply_path_present INTEGER,\n        stripped_raw_address TEXT\n    )\n    ");
            sQLiteDatabase.execSQL("\n    CREATE TABLE msg_mms_transport_info (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        raw_id INTEGER NOT NULL,\n        raw_status INTEGER NOT NULL,\n        raw_thread_id INTEGER NOT NULL DEFAULT(-1),\n        message_uri TEXT NOT NULL,\n        version INTEGER NOT NULL,\n        type INTEGER NOT NULL,\n        mms_message_id TEXT,\n        transaction_id TEXT,\n        subject TEXT,\n        subject_charset INTEGER DEFAULT(0),\n        retrieve_text TEXT,\n        retrieve_text_charset INTEGER DEFAULT(0),\n        content_location TEXT,\n        content_type TEXT,\n        content_class INTEGER DEFAULT(0),\n        expiry INTEGER DEFAULT(0),\n        priority INTEGER DEFAULT(0),\n        size INTEGER DEFAULT(0),\n        retrieve_status INTEGER DEFAULT(0),\n        response_status INTEGER DEFAULT(0),\n        response_text TEXT,\n        message_class TEXT,\n        message_box INTEGER DEFAULT(0),\n        delivery_report INTEGER DEFAULT(0),\n        delivery_time INTEGER DEFAULT(0),\n        read_report INTEGER DEFAULT(0),\n        read_status INTEGER DEFAULT(0),\n        report_allowed INTEGER DEFAULT(0)\n    )\n    ");
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_sms_transport_info_message_id ON msg_sms_transport_info (message_id)\n    ");
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_mms_transport_info_message_id ON msg_mms_transport_info (message_id)\n    ");
        }
        if (i < 21) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS msg_im_transport_info");
            sQLiteDatabase.execSQL("\n    CREATE TABLE msg_im_transport_info (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        raw_id TEXT NOT NULL,\n        im_status INTEGER DEFAULT(0),\n        delivery_status INTEGER DEFAULT(0),\n        read_status INTEGER DEFAULT(0),\n        delivery_sync_status INTEGER(0),\n        read_sync_status INTEGER DEFAULT(0),\n        error_code INTEGER DEFAULT(0),\n        api_version INTEGER DEFAULT(0),\n        peer_id TEXT,\n        read_send_time INTEGER DEFAULT(0),\n        random_id INTEGER DEFAULT(0),\n        reactions TEXT,\n        event_type INTEGER DEFAULT(0)\n    )\n    ");
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_im_transport_info_message_id ON msg_im_transport_info (message_id)\n    ");
        }
        if (i >= 12 && i < 22) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_entities ADD COLUMN status INTEGER DEFAULT 0");
        }
        if (i >= 21 && i < 28) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_transport_info ADD COLUMN error_code INTEGER DEFAULT (0)");
        }
        if (i >= 12 && i < 29) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_entities ADD COLUMN size INTEGER DEFAULT (-1)");
        }
        if (i >= 21 && i < 31) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_transport_info ADD COLUMN delivery_sync_status INTEGER DEFAULT (0)");
        }
        if (i >= 12 && i < 32) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN hidden_number INTEGER DEFAULT (0)");
        }
        if (i >= 12 && i < 33) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN analytics_id TEXT");
        }
        if (i < 40) {
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_messages_date ON msg_messages (date)\n    ");
            sQLiteDatabase.execSQL("\n    CREATE INDEX idx_msg_messages_seen_date ON msg_messages (seen, date)\n    ");
        }
        if (i >= 12 && i < 46) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN raw_address TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE msg_sms_transport_info ADD COLUMN stripped_raw_address TEXT");
        }
        if (i >= 12 && i < 47) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN category INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN sync_status INTEGER DEFAULT (0)");
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN classification INTEGER DEFAULT (0)");
        }
        if (i >= 21 && i < 49) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_transport_info ADD COLUMN api_version INTEGER DEFAULT(0)");
        }
        if (i >= 12 && i < 51) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_entities ADD COLUMN duration INTEGER DEFAULT (-1)");
        }
        if (i >= 12 && i < 53) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_entities ADD COLUMN thumbnail TEXT NOT NULL DEFAULT ('')");
        }
        if (i >= 21 && i < 56) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_transport_info ADD COLUMN peer_id TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_transport_info ADD COLUMN read_send_time INTEGER DEFAULT(0)");
        }
        if (i >= 12 && i < 70) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN retry_count INTEGER DEFAULT(0)");
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN retry_date INTEGER DEFAULT(0)");
        }
        if (i >= 21 && i < 79) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_transport_info ADD COLUMN random_id INTEGER DEFAULT(0)");
        }
        if (i >= 21 && i < 84) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_transport_info ADD COLUMN reactions TEXT");
        }
        if (i < 84) {
            c17913f.f50900a.mo15545b(sQLiteDatabase, i);
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{f51002b, "CREATE TRIGGER trigger_im_info_transport_on_reactions_insert AFTER INSERT ON msg_im_reactions BEGIN UPDATE msg_messages SET info9=(SELECT GROUP_CONCAT(emoji, '|') FROM msg_im_reactions WHERE new.message_id=message_id ORDER BY send_date) WHERE _id=new.message_id; END", "CREATE TRIGGER trigger_im_info_transport_on_reactions_delete AFTER DELETE ON msg_im_reactions BEGIN UPDATE msg_messages SET info9=(SELECT GROUP_CONCAT(emoji, '|') FROM msg_im_reactions WHERE old.message_id=message_id ORDER BY send_date) WHERE _id=old.message_id; END", "CREATE TRIGGER trigger_im_info_transport_on_quick_action_insert AFTER INSERT ON msg_im_quick_actions BEGIN UPDATE msg_messages SET info20=(SELECT GROUP_CONCAT(action_value, '|') FROM msg_im_quick_actions WHERE new.message_id=message_id) WHERE _id=new.message_id; END"};
    }
}
