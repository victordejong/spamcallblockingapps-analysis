package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0;
/* renamed from: e.m.a.b.j.c0.i.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/t.class */
public final /* synthetic */ class C24117t implements C24105j0.AbstractC24106a {

    /* renamed from: a */
    public static final /* synthetic */ C24117t f66818a = new C24117t();

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0.AbstractC24106a
    /* renamed from: a */
    public final void mo5563a(SQLiteDatabase sQLiteDatabase) {
        String str = C24105j0.f66790c;
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }
}
