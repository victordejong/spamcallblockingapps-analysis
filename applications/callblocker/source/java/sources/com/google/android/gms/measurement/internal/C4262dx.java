package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.google.android.gms.measurement.internal.dx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dx.class */
public final class C4262dx extends SQLiteOpenHelper {

    /* renamed from: a */
    private final /* synthetic */ C4259du f18710a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4262dx(C4259du c4259du, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f18710a = c4259du;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            this.f18710a.mo4030v().m4655x_().m4654a("Opening the local database failed, dropping and recreating it");
            if (!this.f18710a.mo4034r().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.f18710a.mo4030v().m4655x_().m4653a("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException e3) {
                this.f18710a.mo4030v().m4655x_().m4653a("Failed to open local database. Events will bypass local storage", e3);
                sQLiteDatabase = null;
            }
        }
        return sQLiteDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C4319g.m4440a(this.f18710a.mo4030v(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        C4319g.m4438a(this.f18710a.mo4030v(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
