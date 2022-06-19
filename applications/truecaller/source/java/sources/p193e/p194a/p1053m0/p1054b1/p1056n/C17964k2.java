package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
/* renamed from: e.a.m0.b1.n.k2 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/k2.class */
public final class C17964k2 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "CREATE TABLE screened_calls (\n    id TEXT PRIMARY KEY,\n    to_number TEXT NOT NULL,\n    from_number TEXT NOT NULL,\n    created_at INTEGER NOT NULL,\n    duration INTEGER NOT NULL DEFAULT 0,\n    locale TEXT NOT NULL,\n    status TEXT NOT NULL,\n    is_voicemail INT NOT NULL DEFAULT 0,\n    originate_call_status TEXT,\n    spam_model_prediction TEXT,\n    intent TEXT\n)", "CREATE INDEX idx_screened_calls_created_at\n    ON screened_calls (created_at)");
    }
}
