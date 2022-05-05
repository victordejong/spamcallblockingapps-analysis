package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
/* renamed from: h.i.a.b.j.y.k.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/h0.class */
public final class C6676h0 extends SQLiteOpenHelper {

    /* renamed from: c */
    public static int f16548c = 4;

    /* renamed from: d */
    public static final AbstractC6677a f16549d = C6665d0.m22111a();

    /* renamed from: e */
    public static final AbstractC6677a f16550e = C6667e0.m22107a();

    /* renamed from: f */
    public static final AbstractC6677a f16551f = C6670f0.m22103a();

    /* renamed from: g */
    public static final AbstractC6677a f16552g = C6673g0.m22099a();

    /* renamed from: h */
    public static final List<AbstractC6677a> f16553h = Arrays.asList(f16549d, f16550e, f16551f, f16552g);

    /* renamed from: a */
    public final int f16554a;

    /* renamed from: b */
    public boolean f16555b = false;

    /* renamed from: h.i.a.b.j.y.k.h0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/h0$a.class */
    public interface AbstractC6677a {
        /* renamed from: a */
        void mo22088a(SQLiteDatabase sQLiteDatabase);
    }

    @Inject
    public C6676h0(Context context, @Named("SQLITE_DB_NAME") String str, @Named("SCHEMA_VERSION") int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f16554a = i;
    }

    /* renamed from: b */
    public static /* synthetic */ void m22092b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* renamed from: c */
    public static /* synthetic */ void m22091c(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* renamed from: e */
    public static /* synthetic */ void m22089e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* renamed from: a */
    public final void m22095a(SQLiteDatabase sQLiteDatabase) {
        if (!this.f16555b) {
            onConfigure(sQLiteDatabase);
        }
    }

    /* renamed from: a */
    public final void m22094a(SQLiteDatabase sQLiteDatabase, int i) {
        m22095a(sQLiteDatabase);
        m22093a(sQLiteDatabase, 0, i);
    }

    /* renamed from: a */
    public final void m22093a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 <= f16553h.size()) {
            while (i < i2) {
                f16553h.get(i).mo22088a(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + f16553h.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f16555b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        if (Build.VERSION.SDK_INT >= 16) {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m22094a(sQLiteDatabase, this.f16554a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        m22094a(sQLiteDatabase, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        m22095a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m22095a(sQLiteDatabase);
        m22093a(sQLiteDatabase, i, i2);
    }
}
