package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.r */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/r.class */
public final class C17989r implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE data ADD COLUMN data11 TEXT");
        sQLiteDatabase.execSQL("ALTER TABLE raw_contact ADD COLUMN contact_spam_type TEXT");
        sQLiteDatabase.execSQL("ALTER TABLE aggregated_contact ADD COLUMN contact_spam_type TEXT");
        sQLiteDatabase.execSQL("UPDATE aggregated_contact SET contact_spam_type = 'SPAMMER' WHERE contact_spam_score > 0");
        sQLiteDatabase.execSQL("UPDATE aggregated_contact SET contact_spam_type = 'SPAMMER' WHERE contact_spam_score > 0");
        sQLiteDatabase.execSQL("UPDATE data SET data11 = 'SPAMMER'\n            WHERE data_type=4 AND CAST(data3 as INTEGER) > 0");
    }
}
