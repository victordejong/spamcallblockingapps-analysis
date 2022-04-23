package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
/* renamed from: h.i.a.e.m.b.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/l.class */
public final class C9009l extends SQLiteOpenHelper {

    /* renamed from: a */
    public final /* synthetic */ C9003k f20470a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9009l(C9003k kVar, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f20470a = kVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            this.f20470a.mo16178c().m16375s().m16338a("Opening the local database failed, dropping and recreating it");
            if (!this.f20470a.getContext().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.f20470a.mo16178c().m16375s().m16337a("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                this.f20470a.mo16178c().m16375s().m16337a("Failed to open local database. Events will bypass local storage", e3);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C9050r4.m16313a(this.f20470a.mo16178c(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (Build.VERSION.SDK_INT < 15) {
            Cursor cursor = null;
            try {
                Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
                cursor = rawQuery;
                rawQuery.moveToFirst();
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        C9050r4.m16311a(this.f20470a.mo16178c(), sQLiteDatabase, NotificationCompat.CarExtender.KEY_MESSAGES, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
