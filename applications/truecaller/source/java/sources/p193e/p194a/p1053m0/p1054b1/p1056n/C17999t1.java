package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.t1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/t1.class */
public final class C17999t1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "ALTER TABLE msg_participants ADD COLUMN pb_numbers_count INTEGER DEFAULT(0)", "\n                UPDATE msg_participants SET pb_numbers_count =\n                    (SELECT COUNT(DISTINCT data1) FROM raw_contact LEFT JOIN data ON raw_contact._id = data.data_raw_contact_id\n                        WHERE aggregated_contact_id=msg_participants.aggregated_contact_id AND data_type=4 AND data_phonebook_id NOT NULL)\n        ");
    }
}
