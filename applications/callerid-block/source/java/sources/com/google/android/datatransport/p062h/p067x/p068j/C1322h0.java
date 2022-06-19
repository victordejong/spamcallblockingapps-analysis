package com.google.android.datatransport.p062h.p067x.p068j;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.datatransport.h.x.j.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/h0.class */
final class C1322h0 extends SQLiteOpenHelper {

    /* renamed from: d */
    static int f5385d = 4;

    /* renamed from: e */
    private static final AbstractC1323a f5386e;

    /* renamed from: f */
    private static final AbstractC1323a f5387f;

    /* renamed from: g */
    private static final AbstractC1323a f5388g;

    /* renamed from: h */
    private static final AbstractC1323a f5389h;

    /* renamed from: i */
    private static final List<AbstractC1323a> f5390i;

    /* renamed from: b */
    private final int f5391b;

    /* renamed from: c */
    private boolean f5392c = false;

    /* renamed from: com.google.android.datatransport.h.x.j.h0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/h0$a.class */
    public interface AbstractC1323a {
        /* renamed from: a */
        void m9143a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        AbstractC1323a b = d0.b();
        f5386e = b;
        AbstractC1323a b2 = e0.b();
        f5387f = b2;
        AbstractC1323a b3 = f0.b();
        f5388g = b3;
        AbstractC1323a b4 = g0.b();
        f5389h = b4;
        f5390i = Arrays.asList(b, b2, b3, b4);
    }

    C1322h0(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f5391b = i;
    }

    /* renamed from: C */
    static /* synthetic */ void m9149C(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* renamed from: F */
    private void m9148F(SQLiteDatabase sQLiteDatabase, int i) {
        m9146a(sQLiteDatabase);
        m9147K(sQLiteDatabase, 0, i);
    }

    /* renamed from: K */
    private void m9147K(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<AbstractC1323a> list = f5390i;
        if (i2 <= list.size()) {
            while (i < i2) {
                f5390i.get(i).m9143a(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    /* renamed from: a */
    private void m9146a(SQLiteDatabase sQLiteDatabase) {
        if (!this.f5392c) {
            onConfigure(sQLiteDatabase);
        }
    }

    /* renamed from: p */
    static /* synthetic */ void m9145p(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* renamed from: x */
    static /* synthetic */ void m9144x(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f5392c = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        if (Build.VERSION.SDK_INT >= 16) {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m9148F(sQLiteDatabase, this.f5391b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        m9148F(sQLiteDatabase, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        m9146a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m9146a(sQLiteDatabase);
        m9147K(sQLiteDatabase, i, i2);
    }
}
