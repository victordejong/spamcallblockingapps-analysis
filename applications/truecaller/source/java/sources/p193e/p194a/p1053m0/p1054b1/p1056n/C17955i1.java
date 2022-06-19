package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.i1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/i1.class */
public final class C17955i1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                UPDATE msg_messages\n                    SET date=date_sent, date_sent=date\n                    WHERE transport=2 AND (status & 1)=0 AND date_sent>0\n            ");
    }
}
