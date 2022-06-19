package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.f0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/f0.class */
public final class C18059f0 implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        String m28497g = C8472b.m28497g("t9_mapping", "t9_starts_with");
        l.d(m28497g, "ProviderUtil.getCreateIn…pingTable.T9_STARTS_WITH)");
        String m28497g2 = C8472b.m28497g("t9_mapping", "data_id");
        l.d(m28497g2, "ProviderUtil.getCreateIn…, T9MappingTable.DATA_ID)");
        String m28497g3 = C8472b.m28497g("t9_mapping", "raw_contact_id");
        l.d(m28497g3, "ProviderUtil.getCreateIn…pingTable.RAW_CONTACT_ID)");
        return new String[]{"\n    CREATE TABLE t9_mapping (\n        data_id INTEGER DEFAULT NULL,\n        raw_contact_id INTEGER NOT NULL,\n        t9_anywhere TEXT DEFAULT NULL,\n        t9_starts_with TEXT DEFAULT NULL,\n        matched_value TEXT DEFAULT NULL,\n        hit_priority INTEGER NOT NULL DEFAULT 0,\n        raw_contact_insert_timestamp INTEGER DEFAULT NULL)\n    ", m28497g, m28497g2, m28497g3};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sQLiteDatabase, "db");
        if (i < 36) {
            C8472b.m28501c(sQLiteDatabase, "SELECT 'drop ' || type || ' ' || name || ';' FROM sqlite_master WHERE name !='android_metadata' AND type=? and name=?", new String[]{"table", "t9_mapping"});
            for (String str : mo15498a()) {
                sQLiteDatabase.execSQL(str);
            }
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{"\n    CREATE VIEW contacts_with_call_count_extended\n    AS SELECT history_aggregated_contact_id as aggregated_contact_id,\n        COUNT(*) as calls_count,\n        MAX(timestamp) as recent_call_timestamp\n        FROM history_with_aggregated_contact\n        WHERE type = 2 OR type = 1\n            AND DATE(timestamp / 1000, 'unixepoch') > DATE('now', '-180 days')\n            AND history_aggregated_contact_id IS NOT NULL\n        GROUP BY history_aggregated_contact_id\n    "};
    }
}
