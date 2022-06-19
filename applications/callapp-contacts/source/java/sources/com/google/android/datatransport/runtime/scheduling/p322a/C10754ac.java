package com.google.android.datatransport.runtime.scheduling.p322a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.datatransport.runtime.scheduling.a.ac */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/ac.class */
final class C10754ac extends SQLiteOpenHelper {

    /* renamed from: a */
    static int f34638a = 4;

    /* renamed from: d */
    private static final AbstractC10755a f34639d;

    /* renamed from: e */
    private static final AbstractC10755a f34640e;

    /* renamed from: f */
    private static final AbstractC10755a f34641f;

    /* renamed from: g */
    private static final AbstractC10755a f34642g;

    /* renamed from: h */
    private static final List<AbstractC10755a> f34643h;

    /* renamed from: b */
    private final int f34644b;

    /* renamed from: c */
    private boolean f34645c = false;

    /* renamed from: com.google.android.datatransport.runtime.scheduling.a.ac$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/ac$a.class */
    public interface AbstractC10755a {
        /* renamed from: a */
        void mo22420a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        AbstractC10755a m22424a = C10756ad.m22424a();
        f34639d = m22424a;
        AbstractC10755a m22423a = C10757ae.m22423a();
        f34640e = m22423a;
        AbstractC10755a m22422a = C10758af.m22422a();
        f34641f = m22422a;
        AbstractC10755a m22421a = C10759ag.m22421a();
        f34642g = m22421a;
        f34643h = Arrays.asList(m22424a, m22423a, m22422a, m22421a);
    }

    public C10754ac(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f34644b = i;
    }

    /* renamed from: a */
    public static /* synthetic */ void m22431a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* renamed from: a */
    private void m22430a(SQLiteDatabase sQLiteDatabase, int i) {
        m22425e(sQLiteDatabase);
        m22429a(sQLiteDatabase, 0, i);
    }

    /* renamed from: a */
    private static void m22429a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<AbstractC10755a> list = f34643h;
        if (i2 <= list.size()) {
            while (i < i2) {
                f34643h.get(i).mo22420a(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    /* renamed from: c */
    public static /* synthetic */ void m22427c(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* renamed from: d */
    public static /* synthetic */ void m22426d(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* renamed from: e */
    private void m22425e(SQLiteDatabase sQLiteDatabase) {
        if (!this.f34645c) {
            onConfigure(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f34645c = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        if (Build.VERSION.SDK_INT >= 16) {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        m22430a(sQLiteDatabase, this.f34644b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        m22430a(sQLiteDatabase, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        m22425e(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m22425e(sQLiteDatabase);
        m22429a(sQLiteDatabase, i, i2);
    }
}
