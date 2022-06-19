package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.u1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/u1.class */
public final class C18003u1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "ALTER TABLE msg_participants ADD COLUMN is_spam INTEGER DEFAULT 0", "\n        UPDATE msg_participants SET is_spam = (SELECT COUNT(data11) > 0 \n            FROM data\n            WHERE data_type = 4\n            AND data1 = msg_participants.normalized_destination)\n    ");
    }
}
