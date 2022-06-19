package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
/* renamed from: e.a.m0.c1.m0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/m0.class */
public final class C18074m0 implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"\n    CREATE TABLE IF NOT EXISTS voip_history_peers (\n        history_id INTEGER NOT NULL \n        REFERENCES history (_id) ON DELETE CASCADE,\n        normalized_number TEXT NOT NULL,\n        status INTEGER DEFAULT 0 NOT NULL,\n        position INTEGER NOT NULL,\n        UNIQUE(history_id, position) ON CONFLICT REPLACE\n    )\n"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public /* synthetic */ void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C18061g0.m15508c(this, context, sQLiteDatabase, i, i2);
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{"\n    CREATE VIEW voip_history_with_aggregated_contacts_shallow\n        AS\n          SELECT vhp.history_id AS voip_history_id,\n                 vhp.normalized_number AS voip_history_normalized_number,\n                 vhp.status,\n                 vhp.position,\n                 ac.*\n          FROM voip_history_peers vhp\n                 LEFT JOIN aggregated_contact ac\n                        ON ac._id = (\n                            SELECT aggregated_contact_id\n                            FROM raw_contact_data\n                            WHERE data1 = vhp.normalized_number\n                                AND data_type = 4\n                            LIMIT 1\n                        )\n          ORDER BY vhp.history_id,vhp.position ASC\n"};
    }
}
