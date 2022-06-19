package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.google.android.gms.measurement.internal.h3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/h3.class */
public final class C7732h3 extends SQLiteOpenHelper {

    /* renamed from: d */
    final /* synthetic */ C7744i3 f35301d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7732h3(C7744i3 c7744i3, Context context, String str) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f35301d = c7744i3;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            this.f35301d.f35460a.mo6047C().m6195m().m6216a("Opening the local database failed, dropping and recreating it");
            this.f35301d.f35460a.m6006y();
            if (!this.f35301d.f35460a.mo6030a().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.f35301d.f35460a.mo6047C().m6195m().m6215b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                this.f35301d.f35460a.mo6047C().m6195m().m6215b("Failed to open local database. Events will bypass local storage", e3);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C7752j.m6347b(this.f35301d.f35460a.mo6047C(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        C7752j.m6348a(this.f35301d.f35460a.mo6047C(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
