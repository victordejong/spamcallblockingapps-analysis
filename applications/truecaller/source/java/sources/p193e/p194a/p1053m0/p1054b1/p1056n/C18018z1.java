package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.z1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/z1.class */
public final class C18018z1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "ALTER TABLE msg_conversations ADD COLUMN muted INTEGER NOT NULL DEFAULT(0)", "ALTER TABLE msg_conversations ADD COLUMN sound_uri TEXT");
    }
}
