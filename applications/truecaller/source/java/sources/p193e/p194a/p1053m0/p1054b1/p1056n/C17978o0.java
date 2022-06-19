package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.o0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/o0.class */
public final class C17978o0 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN spam_categories TEXT ");
        sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN spam_categories TEXT ");
        sQLiteDatabase.execSQL(m15543b("aggregated_contact"));
        sQLiteDatabase.execSQL(m15543b("raw_contact"));
    }

    /* renamed from: b */
    public final String m15543b(String str) {
        return C22128a.m8606k(C22128a.m8688M("\n                    UPDATE ", str, " \n                    SET spam_categories = \n                    (\n                        SELECT data5 FROM data d\n                        WHERE \n                                ", str, ".tc_id IS NOT NULL\n                                AND \n                                "), str, ".tc_id IS NOT NULL \n                                AND \n                                ", str, ".tc_id = d.tc_id \n                                AND\n                                d.data_type = 12\n                        LIMIT 1\n                    )\n                ");
    }
}
