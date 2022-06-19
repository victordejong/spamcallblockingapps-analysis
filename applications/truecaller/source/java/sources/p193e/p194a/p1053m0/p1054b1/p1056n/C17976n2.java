package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.n2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/n2.class */
public final class C17976n2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("\n                UPDATE msg_conversations\n                SET split_criteria = CASE phonebook_count OR white_list_count OR blacklist_count OR has_outgoing_messages\n                    WHEN 1 THEN 0\n                    ELSE 1 END\n            ");
    }
}
