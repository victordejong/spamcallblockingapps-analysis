package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.internal.zzaf;
import com.google.android.gms.measurement.internal.zzea;
import p1727n3.p1789g0.C26232y;
@VisibleForTesting
/* renamed from: e.m.a.f.l.a.l */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/l.class */
public final class C25078l extends SQLiteOpenHelper {

    /* renamed from: a */
    public final /* synthetic */ zzea f70169a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25078l(zzea zzeaVar, Context context) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f70169a = zzeaVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            ((v0) this.f70169a).a.zzay().f.m38590a("Opening the local database failed, dropping and recreating it");
            zzaf zzafVar = ((v0) this.f70169a).a.g;
            if (!((v0) this.f70169a).a.a.getDatabasePath("google_app_measurement_local.db").delete()) {
                ((v0) this.f70169a).a.zzay().f.m38589b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                ((v0) this.f70169a).a.zzay().f.m38589b("Failed to open local database. Events will bypass local storage", e3);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C26232y.m2465F2(((v0) this.f70169a).a.zzay(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        C26232y.m2287w2(((v0) this.f70169a).a.zzay(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
