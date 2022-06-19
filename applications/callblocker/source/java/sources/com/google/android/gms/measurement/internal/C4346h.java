package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.google.android.gms.measurement.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h.class */
public final class C4346h extends SQLiteOpenHelper {

    /* renamed from: a */
    private final /* synthetic */ C4211c f19048a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4346h(C4211c c4211c, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f19048a = c4211c;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        C4407jg c4407jg;
        C4407jg c4407jg2;
        SQLiteDatabase writableDatabase;
        C4407jg c4407jg3;
        c4407jg = this.f19048a.f18642k;
        if (!c4407jg.m4258a(3600000L)) {
            throw new SQLiteException("Database open failed");
        }
        try {
            writableDatabase = super.getWritableDatabase();
        } catch (SQLiteException e) {
            c4407jg2 = this.f19048a.f18642k;
            c4407jg2.m4259a();
            this.f19048a.mo4030v().m4655x_().m4654a("Opening the database failed, dropping and recreating it");
            if (!this.f19048a.mo4034r().getDatabasePath("google_app_measurement.db").delete()) {
                this.f19048a.mo4030v().m4655x_().m4653a("Failed to delete corrupted db file", "google_app_measurement.db");
            }
            try {
                writableDatabase = super.getWritableDatabase();
                c4407jg3 = this.f19048a.f18642k;
                c4407jg3.m4257b();
            } catch (SQLiteException e2) {
                this.f19048a.mo4030v().m4655x_().m4653a("Failed to open freshly created database", e2);
                throw e2;
            }
        }
        return writableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C4319g.m4440a(this.f19048a.mo4030v(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        String[] strArr5;
        String[] strArr6;
        String[] strArr7;
        String[] strArr8;
        C4263dy mo4030v = this.f19048a.mo4030v();
        strArr = C4211c.f18633b;
        C4319g.m4438a(mo4030v, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", strArr);
        C4319g.m4438a(this.f19048a.mo4030v(), sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
        C4263dy mo4030v2 = this.f19048a.mo4030v();
        strArr2 = C4211c.f18634c;
        C4319g.m4438a(mo4030v2, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", strArr2);
        C4263dy mo4030v3 = this.f19048a.mo4030v();
        strArr3 = C4211c.f18635d;
        C4319g.m4438a(mo4030v3, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", strArr3);
        C4263dy mo4030v4 = this.f19048a.mo4030v();
        strArr4 = C4211c.f18637f;
        C4319g.m4438a(mo4030v4, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", strArr4);
        C4319g.m4438a(this.f19048a.mo4030v(), sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
        C4263dy mo4030v5 = this.f19048a.mo4030v();
        strArr5 = C4211c.f18636e;
        C4319g.m4438a(mo4030v5, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", strArr5);
        C4263dy mo4030v6 = this.f19048a.mo4030v();
        strArr6 = C4211c.f18638g;
        C4319g.m4438a(mo4030v6, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", strArr6);
        C4263dy mo4030v7 = this.f19048a.mo4030v();
        strArr7 = C4211c.f18639h;
        C4319g.m4438a(mo4030v7, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", strArr7);
        C4319g.m4438a(this.f19048a.mo4030v(), sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
        C4263dy mo4030v8 = this.f19048a.mo4030v();
        strArr8 = C4211c.f18640i;
        C4319g.m4438a(mo4030v8, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", strArr8);
        C4319g.m4438a(this.f19048a.mo4030v(), sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
