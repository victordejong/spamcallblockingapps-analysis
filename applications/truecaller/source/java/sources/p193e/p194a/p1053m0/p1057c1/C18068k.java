package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
import w3.c.a.a.a.h;
/* renamed from: e.a.m0.c1.k */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/k.class */
public class C18068k implements AbstractC18063h0 {

    /* renamed from: a */
    public static final String f50988a;

    /* renamed from: b */
    public static final String f50989b;

    /* renamed from: c */
    public static final String f50990c;

    /* renamed from: d */
    public static final String f50991d;

    /* renamed from: e */
    public static final String f50992e;

    /* renamed from: f */
    public static final String f50993f = m15504e("history_with_aggregated_contact_number");

    /* renamed from: g */
    public static final String f50994g;

    static {
        StringBuilder m8728C = C22128a.m8728C("history._id AS _id, history.tc_id AS tc_id, history.tc_flag AS tc_flag, ");
        String[] strArr = C17891a1.AbstractC17900i.f50895e;
        m8728C.append(C8472b.m28499e("history", null, strArr));
        String sb = m8728C.toString();
        f50988a = sb;
        StringBuilder m8688M = C22128a.m8688M("CREATE VIEW history_with_call_recording AS SELECT ", sb, ",", "call_recordings", StringConstant.DOT);
        C22128a.m8666T0(m8688M, "_id", " AS ", "history_call_recording_id", ",");
        String[] strArr2 = C17891a1.C17894c.f50889a;
        C22128a.m8666T0(m8688M, C8472b.m28499e("call_recordings", null, strArr2), " FROM ", "history", " LEFT JOIN ");
        C22128a.m8666T0(m8688M, "call_recordings", " ON ", "history", StringConstant.DOT);
        C22128a.m8666T0(m8688M, "event_id", ContainerUtils.KEY_VALUE_DELIMITER, "call_recordings", StringConstant.DOT);
        m8688M.append("history_event_id");
        f50989b = m8688M.toString();
        StringBuilder m8728C2 = C22128a.m8728C("CREATE VIEW history_with_raw_contact AS SELECT history_with_call_recording._id AS _id, history_with_call_recording.tc_id AS tc_id, history_with_call_recording.tc_flag AS tc_flag, ");
        C22128a.m8666T0(m8728C2, C8472b.m28499e("history_with_call_recording", null, strArr), ", ", "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C2, "_id", " AS ", "history_raw_contact_id", ", ");
        C22128a.m8666T0(m8728C2, "raw_contact", StringConstant.DOT, "tc_id", " AS ");
        m8728C2.append("history_raw_contact_tc_id");
        m8728C2.append(", ");
        String[] strArr3 = C17891a1.AbstractC17895d.f50890b;
        C22128a.m8666T0(m8728C2, C8472b.m28499e("raw_contact", null, strArr3), " FROM ", "history_with_call_recording", " LEFT JOIN ");
        C22128a.m8666T0(m8728C2, "raw_contact", " ON ", "history_with_call_recording", StringConstant.DOT);
        C22128a.m8666T0(m8728C2, "tc_id", " = ", "raw_contact", StringConstant.DOT);
        m8728C2.append("tc_id");
        f50990c = m8728C2.toString();
        StringBuilder m8728C3 = C22128a.m8728C("CREATE VIEW history_with_aggregated_contact AS SELECT history_with_call_recording._id AS _id, history_with_call_recording.tc_id AS tc_id, history_with_call_recording.tc_flag AS tc_flag, history_with_call_recording.history_call_recording_id AS history_call_recording_id, ");
        m8728C3.append(C8472b.m28499e("history_with_call_recording", null, strArr));
        m8728C3.append(", ");
        C22128a.m8666T0(m8728C3, C8472b.m28499e("history_with_call_recording", null, strArr2), ", ", "aggregated_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C3, "_id", " AS ", "history_aggregated_contact_id", ", ");
        C22128a.m8666T0(m8728C3, "aggregated_contact", StringConstant.DOT, "tc_id", " AS ");
        C22128a.m8666T0(m8728C3, "history_aggregated_contact_tc_id", ", ", "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C3, "_id", " AS ", "history_raw_contact_id", ", ");
        C22128a.m8666T0(m8728C3, "raw_contact", StringConstant.DOT, "tc_id", " AS ");
        m8728C3.append("history_raw_contact_tc_id");
        m8728C3.append(", ");
        m8728C3.append(C8472b.m28499e("aggregated_contact", null, strArr3));
        m8728C3.append(", ");
        String[] strArr4 = C17891a1.AbstractC17903l.f50896a;
        C22128a.m8666T0(m8728C3, C8472b.m28499e("aggregated_contact", null, strArr4), " FROM ", "history_with_call_recording", " LEFT JOIN ");
        C22128a.m8666T0(m8728C3, "raw_contact", " ON ", "history_with_call_recording", StringConstant.DOT);
        C22128a.m8666T0(m8728C3, "tc_id", ContainerUtils.KEY_VALUE_DELIMITER, "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C3, "tc_id", " LEFT JOIN ", "aggregated_contact", " ON ");
        C22128a.m8666T0(m8728C3, "aggregated_contact", StringConstant.DOT, "_id", ContainerUtils.KEY_VALUE_DELIMITER);
        f50991d = C22128a.m8610j(m8728C3, "raw_contact", StringConstant.DOT, "aggregated_contact_id");
        StringBuilder m8728C4 = C22128a.m8728C("CREATE VIEW history_with_aggregated_contact_no_cr AS SELECT history._id AS _id, history.tc_id AS tc_id, history.tc_flag AS tc_flag, ");
        C22128a.m8666T0(m8728C4, C8472b.m28499e("history", null, strArr), ", ", "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C4, "_id", " AS ", "history_raw_contact_id", ", ");
        C22128a.m8666T0(m8728C4, "raw_contact", StringConstant.DOT, "tc_id", " AS ");
        C22128a.m8666T0(m8728C4, "history_raw_contact_tc_id", ", ", "aggregated_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C4, "_id", " AS ", "history_aggregated_contact_id", ", ");
        C22128a.m8666T0(m8728C4, "aggregated_contact", StringConstant.DOT, "tc_id", " AS ");
        m8728C4.append("history_aggregated_contact_tc_id");
        m8728C4.append(", ");
        m8728C4.append(C8472b.m28499e("aggregated_contact", null, strArr3));
        m8728C4.append(", ");
        C22128a.m8666T0(m8728C4, C8472b.m28499e("aggregated_contact", null, strArr4), " FROM ", "history", " LEFT JOIN ");
        C22128a.m8666T0(m8728C4, "raw_contact", " ON ", "history", StringConstant.DOT);
        C22128a.m8666T0(m8728C4, "tc_id", ContainerUtils.KEY_VALUE_DELIMITER, "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8728C4, "tc_id", " LEFT JOIN ", "aggregated_contact", " ON ");
        C22128a.m8666T0(m8728C4, "aggregated_contact", StringConstant.DOT, "_id", ContainerUtils.KEY_VALUE_DELIMITER);
        f50992e = C22128a.m8610j(m8728C4, "raw_contact", StringConstant.DOT, "aggregated_contact_id");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m15504e("history_with_aggregated_contact_number_data"));
        sb2.append(" OR ");
        sb2.append(RemoteMessageConst.DATA);
        sb2.append(StringConstant.DOT);
        sb2.append("_id");
        C22128a.m8666T0(sb2, "= (SELECT ", "_id", " FROM ", RemoteMessageConst.DATA);
        C22128a.m8666T0(sb2, " WHERE ", RemoteMessageConst.DATA, StringConstant.DOT, "tc_id");
        C22128a.m8666T0(sb2, " IS NOT NULL AND ", "history_with_aggregated_contact", StringConstant.DOT, "tc_id");
        C22128a.m8666T0(sb2, " IS NOT NULL AND ", RemoteMessageConst.DATA, StringConstant.DOT, "data_type");
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(13);
        sb2.append(" AND ");
        sb2.append(RemoteMessageConst.DATA);
        C22128a.m8666T0(sb2, StringConstant.DOT, "tc_id", ContainerUtils.KEY_VALUE_DELIMITER, "history_with_aggregated_contact");
        f50994g = C22128a.m8610j(sb2, StringConstant.DOT, "tc_id", " LIMIT 1 )");
    }

    /* renamed from: e */
    public static String m15504e(String str) {
        StringBuilder m8688M = C22128a.m8688M("CREATE VIEW ", str, " AS SELECT ", "history_with_aggregated_contact", ".*, ");
        C22128a.m8666T0(m8688M, RemoteMessageConst.DATA, StringConstant.DOT, "_id", " AS ");
        C22128a.m8666T0(m8688M, "data_id", ", ", RemoteMessageConst.DATA, StringConstant.DOT);
        C22128a.m8666T0(m8688M, "tc_id", " AS ", "data_tc_id", ", ");
        C22128a.m8666T0(m8688M, C8472b.m28499e(RemoteMessageConst.DATA, null, C17891a1.AbstractC17898g.f50894d), " FROM ", "history_with_aggregated_contact", " LEFT JOIN ");
        C22128a.m8666T0(m8688M, "raw_contact", " ON ", "history_with_aggregated_contact", StringConstant.DOT);
        C22128a.m8666T0(m8688M, "history_aggregated_contact_id", ContainerUtils.KEY_VALUE_DELIMITER, "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8688M, "aggregated_contact_id", " AND ", "raw_contact", StringConstant.DOT);
        m8688M.append("contact_source");
        m8688M.append(ContainerUtils.KEY_VALUE_DELIMITER);
        m8688M.append(2);
        m8688M.append(" LEFT JOIN ");
        C22128a.m8666T0(m8688M, RemoteMessageConst.DATA, " ON ", RemoteMessageConst.DATA, StringConstant.DOT);
        C22128a.m8666T0(m8688M, "_id", "= (SELECT ", "_id", " FROM ");
        C22128a.m8666T0(m8688M, RemoteMessageConst.DATA, " WHERE ", RemoteMessageConst.DATA, StringConstant.DOT);
        C22128a.m8666T0(m8688M, "data_raw_contact_id", ContainerUtils.KEY_VALUE_DELIMITER, "raw_contact", StringConstant.DOT);
        C22128a.m8666T0(m8688M, "_id", " AND ", RemoteMessageConst.DATA, StringConstant.DOT);
        m8688M.append("data_type");
        m8688M.append(ContainerUtils.KEY_VALUE_DELIMITER);
        m8688M.append(4);
        m8688M.append(" AND ");
        C22128a.m8666T0(m8688M, RemoteMessageConst.DATA, StringConstant.DOT, "data1", ContainerUtils.KEY_VALUE_DELIMITER);
        return C22128a.m8606k(m8688M, "history_with_aggregated_contact", StringConstant.DOT, "normalized_number", " LIMIT 1 )");
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE history(_id INTEGER PRIMARY KEY, event_id TEXT NOT NULL DEFAULT '',tc_id TEXT, normalized_number TEXT, raw_number TEXT, number_type INT, country_code TEXT, cached_name TEXT,type INT, action INT, call_log_id INT, timestamp INT NOT NULL, duration INT, subscription_id TEXT, feature INT, new INT, is_read INT, subscription_component_name TEXT, tc_flag INT NOT NULL DEFAULT 0,filter_source TEXT,ringing_duration INT NOT NULL DEFAULT 0);", "CREATE INDEX IF NOT EXISTS history_timestamp ON history(timestamp DESC)", "CREATE INDEX IF NOT EXISTS history_tc_id ON history(tc_id)", "CREATE INDEX IF NOT EXISTS history_normalized_number ON history(normalized_number)", "CREATE INDEX IF NOT EXISTS history_type ON history(type)", "CREATE INDEX IF NOT EXISTS history_action ON history(action)", "CREATE UNIQUE INDEX IF NOT EXISTS history_event_id ON history(event_id)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (i3 == 3) {
                sQLiteDatabase.execSQL("CREATE TEMPORARY TABLE temp_history AS SELECT * FROM history");
                sQLiteDatabase.execSQL("DROP TABLE history");
                sQLiteDatabase.execSQL("CREATE TABLE history(_id INTEGER PRIMARY KEY, event_id TEXT NOT NULL DEFAULT '',tc_id TEXT, normalized_number TEXT, raw_number TEXT, number_type INT, country_code TEXT, cached_name TEXT,type INT, action INT, call_log_id INT, timestamp INT NOT NULL, duration INT, subscription_id TEXT, feature INT, new INT, is_read INT, subscription_component_name TEXT, tc_flag INT NOT NULL DEFAULT 0,filter_source TEXT,ringing_duration INT NOT NULL DEFAULT 0);");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_timestamp ON history(timestamp DESC)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_tc_id ON history(tc_id)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_normalized_number ON history(normalized_number)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_type ON history(type)");
                sQLiteDatabase.execSQL("INSERT INTO history (" + m15505d("_id", "tc_id", "normalized_number", "raw_number", "number_type", "country_code", "cached_name", "type", "action", "call_log_id", "timestamp", VastIconXmlManager.DURATION) + ") SELECT " + m15505d("_id", "tc_id", "normalized_number", "national_number", "number_type", "country_code", "cached_name", "type", "action", "call_log_id", "timestamp", VastIconXmlManager.DURATION) + " FROM temp_history");
                sQLiteDatabase.execSQL("DROP TABLE temp_history");
            } else if (i3 == 9) {
                sQLiteDatabase.execSQL("ALTER TABLE history ADD COLUMN subscription_id TEXT;");
                sQLiteDatabase.execSQL("ALTER TABLE history ADD COLUMN sim_index INT;");
            } else if (i3 == 10) {
                sQLiteDatabase.delete("history", "type=4", null);
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_tc_id ON history(tc_id)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_normalized_number ON history(normalized_number)");
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_type ON history(type)");
            } else if (i3 == 11) {
                sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS history_action ON history(action)");
            } else if (i3 == 12) {
                sQLiteDatabase.execSQL("ALTER TABLE history ADD COLUMN feature INT;");
            } else if (i3 == 15) {
                sQLiteDatabase.execSQL("ALTER TABLE history ADD COLUMN new INT;");
                sQLiteDatabase.execSQL("ALTER TABLE history ADD COLUMN is_read INT;");
                sQLiteDatabase.execSQL("ALTER TABLE history ADD COLUMN subscription_component_name TEXT;");
            } else if (i3 == 17) {
                m15503f(sQLiteDatabase);
            } else if (i3 == 22) {
                Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(history)", null);
                int columnIndex = rawQuery.getColumnIndex("tc_flag");
                rawQuery.close();
                if (columnIndex < 0) {
                    m15503f(sQLiteDatabase);
                }
            } else if (i3 == 24) {
                m15503f(sQLiteDatabase);
            } else if (i3 == 38) {
                if (i > 24) {
                    sQLiteDatabase.execSQL("ALTER TABLE history ADD COLUMN event_id TEXT NOT NULL DEFAULT '';");
                }
                sQLiteDatabase.execSQL("UPDATE history SET event_id=lower(hex(randomblob(16)))");
                sQLiteDatabase.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS history_event_id ON history(event_id)");
            } else if (i3 == 40) {
                sQLiteDatabase.execSQL("UPDATE history SET tc_id=NULL WHERE tc_id NOT IN (SELECT tc_id FROM raw_contact)");
            }
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{f50989b, f50990c, f50991d, f50992e, "CREATE VIEW history_top_called_with_aggregated_contact AS SELECT * FROM history_with_aggregated_contact WHERE type=2 AND DATE(timestamp / 1000, 'unixepoch') > DATE('now', '-30 days') GROUP BY normalized_number ORDER BY COUNT(normalized_number) DESC, MAX(timestamp) DESC", f50993f, f50994g};
    }

    /* renamed from: d */
    public final String m15505d(String... strArr) {
        return h.q(strArr, ",");
    }

    /* renamed from: f */
    public final void m15503f(SQLiteDatabase sQLiteDatabase) {
        String m15505d = m15505d("_id", "tc_id", "normalized_number", "raw_number", "number_type", "country_code", "cached_name", "type", "action", "call_log_id", "timestamp", VastIconXmlManager.DURATION, "subscription_id", "feature", "new", "is_read", "subscription_component_name");
        sQLiteDatabase.execSQL("CREATE TEMPORARY TABLE temp_history AS SELECT * FROM history");
        sQLiteDatabase.execSQL("DROP TABLE history");
        sQLiteDatabase.execSQL("CREATE TABLE history(_id INTEGER PRIMARY KEY, event_id TEXT NOT NULL DEFAULT '',tc_id TEXT, normalized_number TEXT, raw_number TEXT, number_type INT, country_code TEXT, cached_name TEXT,type INT, action INT, call_log_id INT, timestamp INT NOT NULL, duration INT, subscription_id TEXT, feature INT, new INT, is_read INT, subscription_component_name TEXT, tc_flag INT NOT NULL DEFAULT 0,filter_source TEXT,ringing_duration INT NOT NULL DEFAULT 0);");
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO history (");
        sQLiteDatabase.execSQL(C22128a.m8606k(sb, m15505d, ") SELECT ", m15505d, " FROM temp_history"));
        sQLiteDatabase.execSQL("DROP TABLE temp_history");
    }
}
