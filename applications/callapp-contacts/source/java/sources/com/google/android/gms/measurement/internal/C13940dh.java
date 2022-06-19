package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.google.android.gms.measurement.internal.dh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dh.class */
public final class C13940dh extends SQLiteOpenHelper {

    /* renamed from: a */
    final /* synthetic */ C13941di f51376a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13940dh(C13941di c13941di, Context context, String str) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f51376a = c13941di;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            this.f51376a.f51637t.mo11661c().f51395c.m12092a("Opening the local database failed, dropping and recreating it");
            if (!this.f51376a.f51637t.f51523a.getDatabasePath("google_app_measurement_local.db").delete()) {
                this.f51376a.f51637t.mo11661c().f51395c.m12091a("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                this.f51376a.f51637t.mo11661c().f51395c.m12091a("Failed to open local database. Events will bypass local storage", e3);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C14095j.m11706a(this.f51376a.f51637t.mo11661c(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        C14095j.m11705a(this.f51376a.f51637t.mo11661c(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
