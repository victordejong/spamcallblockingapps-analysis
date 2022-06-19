package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
/* renamed from: e.a.m0.c1.e0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/e0.class */
public class C18057e0 implements AbstractC18063h0 {

    /* renamed from: a */
    public static final String f50978a;

    static {
        StringBuilder m8728C = C22128a.m8728C("CREATE VIEW raw_contact_data AS SELECT raw_contact._id AS _id, raw_contact.tc_id AS tc_id, raw_contact.tc_flag AS tc_flag, raw_contact.insert_timestamp AS insert_timestamp, raw_contact.aggregated_contact_id AS aggregated_contact_id, raw_contact.search_query AS search_query, raw_contact.cache_control AS cache_control, ");
        C22128a.m8666T0(m8728C, C8472b.m28499e("raw_contact", null, C17891a1.AbstractC17895d.f50890b), ", ", RemoteMessageConst.DATA, StringConstant.DOT);
        C22128a.m8666T0(m8728C, "_id", " AS ", "data_id", ", ");
        C22128a.m8666T0(m8728C, RemoteMessageConst.DATA, StringConstant.DOT, "tc_id", " AS ");
        m8728C.append("data_tc_id");
        m8728C.append(", ");
        C22128a.m8666T0(m8728C, C8472b.m28499e(RemoteMessageConst.DATA, null, C17891a1.AbstractC17898g.f50894d), " FROM ", "raw_contact", " LEFT JOIN ");
        C22128a.m8666T0(m8728C, RemoteMessageConst.DATA, " ON ", "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C, "_id", ContainerUtils.KEY_VALUE_DELIMITER, RemoteMessageConst.DATA, StringConstant.DOT);
        m8728C.append("data_raw_contact_id");
        f50978a = m8728C.toString();
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE raw_contact(_id INTEGER PRIMARY KEY, aggregated_contact_id INTEGER REFERENCES aggregated_contact(_id) ON DELETE SET NULL ON UPDATE CASCADE, tc_id TEXT UNIQUE NOT NULL, contact_name TEXT, contact_transliterated_name TEXT, contact_is_favorite INT, contact_favorite_position INT, contact_handle TEXT, contact_alt_name TEXT, contact_gender TEXT, contact_about TEXT, contact_image_url TEXT, contact_job_title TEXT, contact_company TEXT, contact_access TEXT, contact_common_connections INT, contact_search_time INT, contact_source INT, contact_default_number TEXT, contact_phonebook_id INT, contact_phonebook_hash INT, contact_phonebook_lookup TEXT,search_query TEXT,cache_control TEXT,spam_categories TEXT,contact_spam_score INT,contact_spam_type TEXT,contact_badges INT DEFAULT 0, tc_flag INT NOT NULL DEFAULT 0, insert_timestamp INT NOT NULL DEFAULT 0, contact_im_id TEXT, settings_flag INT NOT NULL DEFAULT 0);", C8472b.m28497g("raw_contact", "aggregated_contact_id"), C8472b.m28497g("raw_contact", "tc_id"), C8472b.m28497g("raw_contact", "contact_phonebook_id"), C8472b.m28497g("raw_contact", "contact_im_id")};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        while (i < i2) {
            if (i == 2) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN contact_phonebook_lookup TEXT");
            }
            if (i == 4) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN search_query TEXT");
            }
            if (i == 7) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN contact_transliterated_name TEXT");
            }
            if (i == 8) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN cache_control TEXT");
            }
            if (i == 10 && !C8472b.m28500d(sQLiteDatabase, "raw_contact", "contact_is_favorite")) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN contact_is_favorite INT");
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN contact_favorite_position INT");
            }
            if (i == 11) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN contact_spam_score INT");
            }
            if (i == 14) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN contact_badges INT DEFAULT 0");
            }
            if (i == 25) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN tc_flag INT NOT NULL DEFAULT 0");
            }
            if (i == 35) {
                sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN insert_timestamp INT NOT NULL DEFAULT 0");
                sQLiteDatabase.execSQL("UPDATE raw_contact SET insert_timestamp = strftime('%s','now')");
            }
            i++;
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{f50978a, "CREATE TRIGGER IF NOT EXISTS insert_timestamp_trigger AFTER INSERT ON raw_contact BEGIN  UPDATE raw_contact SET insert_timestamp=strftime('%s','now') WHERE _id=NEW._id; END;"};
    }
}
