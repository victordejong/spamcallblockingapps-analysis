package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0;
/* renamed from: e.m.a.b.j.c0.i.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/s.class */
public final /* synthetic */ class C24116s implements C24105j0.AbstractC24106a {

    /* renamed from: a */
    public static final /* synthetic */ C24116s f66817a = new C24116s();

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0.AbstractC24106a
    /* renamed from: a */
    public final void mo5563a(SQLiteDatabase sQLiteDatabase) {
        String str = C24105j0.f66790c;
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }
}
