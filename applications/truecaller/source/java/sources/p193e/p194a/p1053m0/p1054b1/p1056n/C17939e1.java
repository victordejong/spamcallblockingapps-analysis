package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.e1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/e1.class */
public final class C17939e1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_participants ADD COLUMN read_sequence_number INTEGER DEFAULT 0");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_participants ADD COLUMN delivered_sequence_number INTEGER DEFAULT 0");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_participants ADD COLUMN read_date INTEGER DEFAULT 0");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_participants ADD COLUMN delivered_date INTEGER DEFAULT 0");
    }
}
