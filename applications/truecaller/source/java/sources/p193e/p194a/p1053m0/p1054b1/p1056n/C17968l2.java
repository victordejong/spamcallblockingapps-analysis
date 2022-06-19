package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.l2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/l2.class */
public final class C17968l2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "CREATE TABLE screened_call_messages (\n    id TEXT PRIMARY KEY,\n    call_id TEXT NOT NULL,\n    text TEXT NOT NULL,\n    type INTEGER NOT NULL,\n    created_at INTEGER NOT NULL,\n    selected_option INTEGER,\n    caller_action INTEGER\n)", "CREATE INDEX idx_screened_call_messages_call_id_created_at\n    ON screened_call_messages (call_id, created_at)");
    }
}
