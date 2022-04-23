package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.google.android.gms.measurement.internal.h3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h3.class */
final class C2266h3 extends SQLiteOpenHelper {

    /* renamed from: b */
    final /* synthetic */ i3 f10217b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C2266h3(i3 i3Var, Context context, String str) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f10217b = i3Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            ((m5) this.f10217b).a.t().m().m3876a("Opening the local database failed, dropping and recreating it");
            ((m5) this.f10217b).a.z();
            if (!((m5) this.f10217b).a.b().getDatabasePath("google_app_measurement_local.db").delete()) {
                ((m5) this.f10217b).a.t().m().m3875b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                ((m5) this.f10217b).a.t().m().m3875b("Failed to open local database. Events will bypass local storage", e3);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C2279j.m3887b(((m5) this.f10217b).a.t(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        C2279j.m3888a(((m5) this.f10217b).a.t(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
