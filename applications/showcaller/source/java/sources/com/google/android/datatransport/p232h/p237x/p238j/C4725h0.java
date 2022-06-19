package com.google.android.datatransport.p232h.p237x.p238j;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.datatransport.h.x.j.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/h0.class */
final class C4725h0 extends SQLiteOpenHelper {

    /* renamed from: d */
    static int f14317d = 4;

    /* renamed from: e */
    private static final AbstractC4726a f14318e;

    /* renamed from: f */
    private static final AbstractC4726a f14319f;

    /* renamed from: g */
    private static final AbstractC4726a f14320g;

    /* renamed from: h */
    private static final AbstractC4726a f14321h;

    /* renamed from: i */
    private static final List<AbstractC4726a> f14322i;

    /* renamed from: j */
    private final int f14323j;

    /* renamed from: k */
    private boolean f14324k = false;

    /* renamed from: com.google.android.datatransport.h.x.j.h0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/h0$a.class */
    public interface AbstractC4726a {
        /* renamed from: a */
        void mo21884a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        AbstractC4726a m21910b = C4714d0.m21910b();
        f14318e = m21910b;
        AbstractC4726a m21906b = C4716e0.m21906b();
        f14319f = m21906b;
        AbstractC4726a m21901b = C4719f0.m21901b();
        f14320g = m21901b;
        AbstractC4726a m21896b = C4722g0.m21896b();
        f14321h = m21896b;
        f14322i = Arrays.asList(m21910b, m21906b, m21901b, m21896b);
    }

    public C4725h0(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f14323j = i;
    }

    /* renamed from: a */
    private void m21891a(SQLiteDatabase sQLiteDatabase) {
        if (!this.f14324k) {
            onConfigure(sQLiteDatabase);
        }
    }

    /* renamed from: e */
    public static /* synthetic */ void m21890e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* renamed from: f */
    public static /* synthetic */ void m21889f(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* renamed from: k */
    public static /* synthetic */ void m21887k(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* renamed from: p */
    private void m21886p(SQLiteDatabase sQLiteDatabase, int i) {
        m21891a(sQLiteDatabase);
        m21885q(sQLiteDatabase, 0, i);
    }

    /* renamed from: q */
    private void m21885q(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<AbstractC4726a> list = f14322i;
        if (i2 <= list.size()) {
            while (i < i2) {
                f14322i.get(i).mo21884a(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f14324k = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        if (Build.VERSION.SDK_INT >= 16) {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m21886p(sQLiteDatabase, this.f14323j);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        m21886p(sQLiteDatabase, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        m21891a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m21891a(sQLiteDatabase);
        m21885q(sQLiteDatabase, i, i2);
    }
}
