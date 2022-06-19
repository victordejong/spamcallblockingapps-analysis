package p303z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.List;
import p303z2.C5065w;
/* renamed from: z2.s */
/* loaded from: classes2-dex2jar.jar:z2/s.class */
public final /* synthetic */ class C5061s implements C5065w.AbstractC5066a {

    /* renamed from: a */
    public static final /* synthetic */ C5061s f15367a = new C5061s();

    @Override // p303z2.C5065w.AbstractC5066a
    /* renamed from: a */
    public final void mo79a(SQLiteDatabase sQLiteDatabase) {
        List<C5065w.AbstractC5066a> list = C5065w.f15371c;
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }
}
