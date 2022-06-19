package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.f */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/f.class */
public final class C18058f implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        String m28497g = C8472b.m28497g("contact_sorting_index", "sorting_key_1");
        l.d(m28497g, "ProviderUtil.getCreateIn…gTable.SORTING_MODE1_KEY)");
        String m28497g2 = C8472b.m28497g("contact_sorting_index", "sorting_key_2");
        l.d(m28497g2, "ProviderUtil.getCreateIn…gTable.SORTING_MODE2_KEY)");
        String m28497g3 = C8472b.m28497g("contact_sorting_index", "aggregated_contact_id");
        l.d(m28497g3, "ProviderUtil.getCreateIn…le.AGGREGATED_CONTACT_ID)");
        return new String[]{"\n    CREATE TABLE contact_sorting_index (\n        aggregated_contact_id INTEGER NOT NULL,\n        first_name TEXT DEFAULT NULL,\n        last_name TEXT DEFAULT NULL,\n        sorting_key_1 TEXT DEFAULT NULL,\n        sorting_key_2 TEXT DEFAULT NULL,\n        sorting_group_1 TEXT DEFAULT NULL,\n        sorting_group_2 TEXT DEFAULT NULL,\n        contact_update_timestamp INTEGER DEFAULT NULL)\n    ", m28497g, m28497g2, m28497g3};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sQLiteDatabase, "db");
        if (i < 78) {
            C8472b.m28501c(sQLiteDatabase, "SELECT 'drop ' || type || ' ' || name || ';' FROM sqlite_master WHERE name !='android_metadata' AND type=? and name=?", new String[]{"table", "contact_sorting_index"});
            for (String str : mo15498a()) {
                sQLiteDatabase.execSQL(str);
            }
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{C18060g.f50979a, C18060g.f50980b};
    }
}
