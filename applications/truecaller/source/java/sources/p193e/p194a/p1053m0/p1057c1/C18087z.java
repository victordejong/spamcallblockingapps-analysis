package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C18138y0;
import p193e.p194a.p1053m0.C18140z0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.z.c.f0;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.z */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/z.class */
public final class C18087z implements AbstractC18063h0 {

    /* renamed from: e.a.m0.c1.z$a */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/z$a.class */
    public interface AbstractC18088a {
        /* renamed from: V4 */
        C18140z0 mo12521V4();
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE msg_participants (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER DEFAULT(0), tc_im_peer_id TEXT, raw_destination TEXT DEFAULT(''), normalized_destination TEXT DEFAULT(''), country_code TEXT DEFAULT('') COLLATE NOCASE, aggregated_contact_id INTEGER NOT NULL DEFAULT(-1), filter_action INTEGER DEFAULT(0), is_top_spammer INTEGER DEFAULT(0),top_spam_score INTEGER DEFAULT(0),phonebook_count INTEGER DEFAULT(0),im_business_state INTEGER DEFAULT(-1),im_business_feature_flags INTEGER DEFAULT(0),pb_numbers_count INTEGER DEFAULT(0),is_spam INTEGER DEFAULT(0),  UNIQUE(normalized_destination) ON CONFLICT FAIL)", "CREATE INDEX msg_participants_normalized_destination_idx ON msg_participants(normalized_destination)", "CREATE INDEX idx_msg_participants_aggregated_contact_id ON msg_participants(aggregated_contact_id)", "CREATE TABLE msg_conversation_participants(participant_id INTEGER NOT NULL,filter INTEGER DEFAULT (0),conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE, UNIQUE(participant_id, conversation_id) ON CONFLICT REPLACE)", "CREATE INDEX idx_msg_conversation_participants_conversation_id ON msg_conversation_participants(conversation_id)", "CREATE INDEX idx_msg_conversation_participants_participant_id ON msg_conversation_participants(participant_id)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sQLiteDatabase, "db");
        if (i < 12) {
            sQLiteDatabase.execSQL("CREATE TABLE msg_participants (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER DEFAULT(0), tc_im_peer_id TEXT, raw_destination TEXT DEFAULT(''), normalized_destination TEXT DEFAULT(''), country_code TEXT DEFAULT('') COLLATE NOCASE, aggregated_contact_id INTEGER NOT NULL DEFAULT(-1), filter_action INTEGER DEFAULT(0), is_top_spammer INTEGER DEFAULT(0),top_spam_score INTEGER DEFAULT(0),phonebook_count INTEGER DEFAULT(0),im_business_state INTEGER DEFAULT(-1),im_business_feature_flags INTEGER DEFAULT(0),pb_numbers_count INTEGER DEFAULT(0),is_spam INTEGER DEFAULT(0),  UNIQUE(normalized_destination) ON CONFLICT FAIL)");
            sQLiteDatabase.execSQL("CREATE INDEX msg_participants_normalized_destination_idx ON msg_participants(normalized_destination)");
            sQLiteDatabase.execSQL("CREATE TABLE msg_conversation_participants(participant_id INTEGER NOT NULL,filter INTEGER DEFAULT (0),conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE, UNIQUE(participant_id, conversation_id) ON CONFLICT REPLACE)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_msg_conversation_participants_conversation_id ON msg_conversation_participants(conversation_id)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_msg_conversation_participants_participant_id ON msg_conversation_participants(participant_id)");
        }
        if (i < 14) {
            sQLiteDatabase.execSQL("UPDATE msg_participants SET type=0 WHERE type=1 AND substr(normalized_destination,1,1)='+' ");
        }
        if (12 <= i && 46 >= i) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_conversation_participants ADD COLUMN filter INTEGER DEFAULT (0)");
        }
        if (12 <= i && 51 >= i) {
            C18140z0 mo12521V4 = ((AbstractC18088a) C25225a.m3820x0(AbstractApplicationC8442a.m28551L(), AbstractC18088a.class)).mo12521V4();
            sQLiteDatabase.execSQL("ALTER TABLE msg_participants ADD COLUMN country_code TEXT DEFAULT ('') COLLATE NOCASE");
            d.w2(h1.a, mo12521V4.f51050c, (j0) null, new C18138y0(mo12521V4, null), 2, (Object) null);
        }
        if (12 <= i && 64 >= i) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_participants ADD COLUMN phonebook_count INTEGER DEFAULT (0)");
            sQLiteDatabase.execSQL("\n                UPDATE msg_participants\n                    SET phonebook_count = (SELECT COUNT(*)\n                        FROM data\n                        WHERE data_type = 4\n                            AND data_phonebook_id NOT NULL\n                            AND data1 = normalized_destination)\n            ");
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        f0 f0Var = new f0(2);
        f0Var.a.add("CREATE VIEW msg_participants_with_contact_info AS SELECT p._id AS _id,cp.conversation_id AS conversation_id, p.type AS type,p.raw_destination AS raw_destination,NULL as national_destination, p.normalized_destination AS normalized_destination,p.country_code AS country_code,p.tc_im_peer_id AS tc_im_peer_id,p.aggregated_contact_id AS aggregated_contact_id,a.tc_id AS tc_id,p.filter_action AS filter_action,p.is_top_spammer AS is_top_spammer,p.top_spam_score AS top_spam_score,p.im_business_state AS im_business_state,p.im_business_feature_flags AS im_business_feature_flags,p.pb_numbers_count AS pb_numbers_count,a.contact_name AS name,a.contact_image_url AS image_url,a.contact_source AS source,a.contact_badges AS badges,a.contact_company AS company_name,a.contact_search_time AS search_time,a.contact_premium_level AS premium_level,a.cache_control AS cache_control,IFNULL(a.contact_phonebook_id,-1) AS phonebook_id,MAX(IFNULL(a.contact_spam_score, 0), top_spam_score) AS spam_score,a.contact_spam_type AS spam_type FROM msg_participants p LEFT JOIN msg_conversation_participants cp ON p._id = cp.participant_id LEFT JOIN aggregated_contact a ON a._id = p.aggregated_contact_id");
        f0Var.a(new String[]{"\n            CREATE TRIGGER trigger_participant_phonebook_count_on_participant_insert\n                AFTER INSERT\n                ON msg_participants\n            BEGIN UPDATE msg_participants\n                SET phonebook_count = (SELECT COUNT(*)\n                    FROM data\n                    WHERE data_type = 4\n                        AND data1 = new.normalized_destination\n                        AND data_phonebook_id NOT NULL),\n                    is_spam = (SELECT COUNT(data11) > 0\n                    FROM data\n                    WHERE data_type = 4\n                        AND data1 = new.normalized_destination),\n                    pb_numbers_count = \n    (SELECT COUNT(DISTINCT data1) FROM raw_contact_data\n        WHERE aggregated_contact_id=new.aggregated_contact_id AND \n            data_type=4 AND data_phonebook_id NOT NULL)\n\n                WHERE _id = new._id;\n            END\n        ", "\n            CREATE TRIGGER trigger_participant_phonebook_count_on_data_insert\n                AFTER INSERT\n                ON data\n                WHEN new.data_type = 4 AND new.data_phonebook_id NOT NULL\n            BEGIN UPDATE msg_participants\n                SET phonebook_count = phonebook_count + 1, \n                    is_spam = CASE new.data11 IS NOT NULL WHEN 1 THEN 1 ELSE 0 END\n                WHERE normalized_destination = new.data1;\n            END\n        ", "\n            CREATE TRIGGER trigger_participant_phonebook_count_on_data_delete\n                AFTER DELETE\n                ON data\n                WHEN old.data_type = 4 AND old.data_phonebook_id NOT NULL\n            BEGIN UPDATE msg_participants\n                SET phonebook_count = phonebook_count - 1\n                WHERE normalized_destination = old.data1;\n            END\n        "});
        return (String[]) f0Var.a.toArray(new String[f0Var.b()]);
    }
}
