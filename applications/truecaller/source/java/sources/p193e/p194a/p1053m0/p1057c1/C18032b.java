package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
/* renamed from: e.a.m0.c1.b */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b.class */
public final class C18032b implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"\n    CREATE TABLE screened_calls (\n        id TEXT PRIMARY KEY,\n        to_number TEXT NOT NULL,\n        from_number TEXT NOT NULL,\n        created_at INTEGER NOT NULL,\n        duration INTEGER NOT NULL DEFAULT 0,\n        locale TEXT NOT NULL,\n        status TEXT NOT NULL,\n        is_voicemail INT NOT NULL DEFAULT 0,\n        originate_call_status TEXT,\n        spam_model_prediction TEXT,\n        intent TEXT\n    )\n", "\n    CREATE INDEX idx_screened_calls_created_at\n        ON screened_calls (created_at)\n", "\n    CREATE TABLE screened_call_messages (\n        id TEXT PRIMARY KEY,\n        call_id TEXT NOT NULL,\n        text TEXT NOT NULL,\n        type INTEGER NOT NULL,\n        created_at INTEGER NOT NULL,\n        selected_option INTEGER,\n        caller_action INTEGER\n    )\n", "\n    CREATE INDEX idx_screened_call_messages_call_id_created_at\n        ON screened_call_messages (call_id, created_at)\n"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public /* synthetic */ void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C18061g0.m15508c(this, context, sQLiteDatabase, i, i2);
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }
}
