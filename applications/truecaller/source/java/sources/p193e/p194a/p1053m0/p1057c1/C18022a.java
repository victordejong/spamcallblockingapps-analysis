package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.content.TruecallerContentProvider;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
/* renamed from: e.a.m0.c1.a */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a.class */
public class C18022a implements AbstractC18063h0 {

    /* renamed from: a */
    public static final String f50915a;

    /* renamed from: b */
    public static final String f50916b;

    static {
        StringBuilder m8728C = C22128a.m8728C("CREATE VIEW aggregated_contact_raw_contact AS SELECT aggregated_contact._id AS _id, aggregated_contact.tc_id AS tc_id, aggregated_contact.tc_flag AS tc_flag, aggregated_contact.aggregated_update_timestamp AS aggregated_update_timestamp, ");
        m8728C.append(C8472b.m28499e("aggregated_contact", null, C17891a1.AbstractC17895d.f50890b));
        m8728C.append(", ");
        C22128a.m8666T0(m8728C, C8472b.m28499e("aggregated_contact", null, C17891a1.AbstractC17903l.f50896a), ", ", "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C, "_id", " AS ", "aggregated_raw_contact_id", ", ");
        C22128a.m8666T0(m8728C, "raw_contact", StringConstant.DOT, "tc_id", " AS ");
        C22128a.m8666T0(m8728C, "aggregated_raw_contact_tc_id", ", ", "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C, "contact_source", " AS ", "aggregated_raw_contact_source", ", ");
        C22128a.m8666T0(m8728C, "raw_contact", StringConstant.DOT, "aggregated_contact_id", " AS ");
        C22128a.m8666T0(m8728C, "aggregated_contact_id", ", ", "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C, "search_query", " AS ", "search_query", ", ");
        C22128a.m8666T0(m8728C, "aggregated_contact", StringConstant.DOT, "cache_control", " AS ");
        C22128a.m8666T0(m8728C, "cache_control", " FROM ", "aggregated_contact", " INNER JOIN ");
        C22128a.m8666T0(m8728C, "raw_contact", " ON ", "aggregated_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C, "_id", ContainerUtils.KEY_VALUE_DELIMITER, "raw_contact", StringConstant.DOT);
        m8728C.append("aggregated_contact_id");
        f50915a = m8728C.toString();
        StringBuilder m8728C2 = C22128a.m8728C("CREATE VIEW aggregated_contact_data AS SELECT aggregated_contact_raw_contact.*, data._id AS data_id, data.tc_id AS data_tc_id, ");
        C22128a.m8666T0(m8728C2, C8472b.m28499e(RemoteMessageConst.DATA, null, C17891a1.AbstractC17898g.f50894d), " FROM ", "aggregated_contact_raw_contact", " LEFT JOIN ");
        C22128a.m8666T0(m8728C2, RemoteMessageConst.DATA, " ON ", "aggregated_raw_contact_id", ContainerUtils.KEY_VALUE_DELIMITER);
        f50916b = C22128a.m8610j(m8728C2, RemoteMessageConst.DATA, StringConstant.DOT, "data_raw_contact_id");
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE aggregated_contact(_id INTEGER PRIMARY KEY, tc_id TEXT NOT NULL, contact_name TEXT, contact_transliterated_name TEXT, contact_is_favorite INT, contact_favorite_position INT, contact_handle TEXT, contact_alt_name TEXT, contact_gender TEXT, contact_about TEXT, contact_image_url TEXT, contact_job_title TEXT, contact_company TEXT, contact_access TEXT, contact_common_connections INT, contact_search_time INT, contact_source INT, contact_default_number TEXT, contact_phonebook_id INT, contact_phonebook_hash INT, contact_phonebook_lookup TEXT, contact_spam_score INT, contact_spam_type TEXT, contact_badges INT DEFAULT 0, tc_flag INT NOT NULL DEFAULT 0, aggregated_update_timestamp INT NOT NULL DEFAULT 0, contact_im_id TEXT, settings_flag INT NOT NULL DEFAULT 0,contact_premium_level VARCHAR(60) NOT NULL DEFAULT 'NONE',contact_premium_scope VARCHAR(60),cache_control INT DEFAULT NULL,spam_categories TEXT )"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        while (i < i2) {
            if (i == 1) {
                sQLiteDatabase.execSQL("CREATE TEMPORARY TABLE temp_aggregated_contact AS SELECT * FROM aggregated_contact");
                sQLiteDatabase.execSQL("DROP TABLE aggregated_contact");
                sQLiteDatabase.execSQL("CREATE TABLE aggregated_contact(_id INTEGER PRIMARY KEY, tc_id TEXT NOT NULL, contact_name TEXT, contact_handle TEXT, contact_alt_name TEXT, contact_gender TEXT, contact_about TEXT, contact_image_url TEXT, contact_job_title TEXT, contact_company TEXT, contact_access TEXT, contact_common_connections INT, contact_search_time INT, contact_source INT, contact_default_number TEXT, contact_phonebook_id INT, contact_phonebook_hash INT)");
                sQLiteDatabase.execSQL("INSERT INTO aggregated_contact SELECT * FROM temp_aggregated_contact");
                sQLiteDatabase.execSQL("DROP TABLE temp_aggregated_contact");
            }
            if (i == 2) {
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN contact_phonebook_lookup TEXT");
            }
            if (i == 4) {
                sQLiteDatabase.execSQL("DELETE FROM aggregated_contact");
                sQLiteDatabase.execSQL("UPDATE raw_contact SET aggregated_contact_id=NULL");
                int i3 = TruecallerContentProvider.f11393k;
                Intent intent = new Intent("ACTION_RESTORE_AGGREGATION");
                intent.putExtra("ARG_DELAY", 100L);
                C27062a.m968b(context).m966d(intent);
            }
            if (i == 7) {
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN contact_transliterated_name TEXT");
            }
            if (i == 10 && !C8472b.m28500d(sQLiteDatabase, "aggregated_contact", "contact_is_favorite")) {
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN contact_is_favorite INT");
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN contact_favorite_position INT");
            }
            if (i == 11) {
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN contact_spam_score INT");
            }
            if (i == 14) {
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN contact_badges INT DEFAULT 0");
            }
            if (i == 25) {
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN tc_flag INT NOT NULL DEFAULT 0");
            }
            if (i == 79) {
                sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN aggregated_update_timestamp INT NOT NULL DEFAULT 0");
                sQLiteDatabase.execSQL("UPDATE aggregated_contact SET aggregated_update_timestamp = ( SELECT MAX(insert_timestamp) FROM raw_contact WHERE aggregated_contact_id = aggregated_contact._id)");
            }
            i++;
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{f50915a, f50916b};
    }
}
