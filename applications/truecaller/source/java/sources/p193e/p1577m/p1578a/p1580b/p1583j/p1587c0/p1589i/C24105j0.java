package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.b.j.c0.i.j0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/j0.class */
public final class C24105j0 extends SQLiteOpenHelper {

    /* renamed from: c */
    public static final String f66790c;

    /* renamed from: d */
    public static int f66791d = 5;

    /* renamed from: e */
    public static final AbstractC24106a f66792e;

    /* renamed from: f */
    public static final AbstractC24106a f66793f;

    /* renamed from: g */
    public static final AbstractC24106a f66794g;

    /* renamed from: h */
    public static final AbstractC24106a f66795h;

    /* renamed from: i */
    public static final AbstractC24106a f66796i;

    /* renamed from: j */
    public static final List<AbstractC24106a> f66797j;

    /* renamed from: a */
    public final int f66798a;

    /* renamed from: b */
    public boolean f66799b = false;

    /* renamed from: e.m.a.b.j.c0.i.j0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/j0$a.class */
    public interface AbstractC24106a {
        /* renamed from: a */
        void mo5563a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        StringBuilder m8728C = C22128a.m8728C("INSERT INTO global_log_event_state VALUES (");
        m8728C.append(System.currentTimeMillis());
        m8728C.append(")");
        f66790c = m8728C.toString();
        C24117t c24117t = C24117t.f66818a;
        f66792e = c24117t;
        C24114q c24114q = C24114q.f66815a;
        f66793f = c24114q;
        C24115r c24115r = C24115r.f66816a;
        f66794g = c24115r;
        C24116s c24116s = C24116s.f66817a;
        f66795h = c24116s;
        C24118u c24118u = C24118u.f66819a;
        f66796i = c24118u;
        f66797j = Arrays.asList(c24117t, c24114q, c24115r, c24116s, c24118u);
    }

    @Inject
    public C24105j0(Context context, @Named("SQLITE_DB_NAME") String str, @Named("SCHEMA_VERSION") int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f66798a = i;
    }

    /* renamed from: b */
    public final void m5564b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<AbstractC24106a> list = f66797j;
        if (i2 <= list.size()) {
            while (i < i2) {
                f66797j.get(i).mo5563a(sQLiteDatabase);
                i++;
            }
            return;
        }
        StringBuilder m8716F = C22128a.m8716F("Migration from ", i, " to ", i2, " was requested, but cannot be performed. Only ");
        m8716F.append(list.size());
        m8716F.append(" migrations are provided");
        throw new IllegalArgumentException(m8716F.toString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f66799b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        int i = this.f66798a;
        if (!this.f66799b) {
            onConfigure(sQLiteDatabase);
        }
        m5564b(sQLiteDatabase, 0, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        if (!this.f66799b) {
            onConfigure(sQLiteDatabase);
        }
        m5564b(sQLiteDatabase, 0, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (!this.f66799b) {
            onConfigure(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (!this.f66799b) {
            onConfigure(sQLiteDatabase);
        }
        m5564b(sQLiteDatabase, i, i2);
    }
}
