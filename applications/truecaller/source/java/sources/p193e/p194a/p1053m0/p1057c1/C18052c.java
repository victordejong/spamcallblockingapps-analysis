package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.c */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/c.class */
public final class C18052c implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE call_recordings (_id INTEGER PRIMARY KEY AUTOINCREMENT, recording_path TEXT NOT NULL,history_event_id TEXT NOT NULL )", "CREATE INDEX IF NOT EXISTS call_recordings_history_event_id ON call_recordings(history_event_id)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        l.e(sQLiteDatabase, "db");
        if (i < 39) {
            for (String str : mo15498a()) {
                sQLiteDatabase.execSQL(str);
            }
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{"CREATE VIEW call_recordings_with_history_event AS SELECT * from history_with_aggregated_contact_number INNER JOIN call_recordings ON event_id=call_recordings.history_event_id"};
    }
}
