package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.google.android.gms.measurement.internal.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/h.class */
public final class C7728h extends SQLiteOpenHelper {

    /* renamed from: d */
    final /* synthetic */ C7740i f35297d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7728h(C7740i c7740i, Context context, String str) {
        super(context, "google_app_measurement.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f35297d = c7740i;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        C7654a9 c7654a9;
        C7654a9 c7654a92;
        C7654a9 c7654a93;
        c7654a9 = this.f35297d.f35328m;
        this.f35297d.f35460a.m6006y();
        if (c7654a9.m6583c(3600000L)) {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                c7654a92 = this.f35297d.f35328m;
                c7654a92.m6585a();
                this.f35297d.f35460a.mo6047C().m6195m().m6216a("Opening the database failed, dropping and recreating it");
                this.f35297d.f35460a.m6006y();
                if (!this.f35297d.f35460a.mo6030a().getDatabasePath("google_app_measurement.db").delete()) {
                    this.f35297d.f35460a.mo6047C().m6195m().m6215b("Failed to delete corrupted db file", "google_app_measurement.db");
                }
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    c7654a93 = this.f35297d.f35328m;
                    c7654a93.m6584b();
                    return writableDatabase;
                } catch (SQLiteException e2) {
                    this.f35297d.f35460a.mo6047C().m6195m().m6215b("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
        }
        throw new SQLiteException("Database open failed");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C7752j.m6347b(this.f35297d.f35460a.mo6047C(), sQLiteDatabase);
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
        C7813o3 mo6047C = this.f35297d.f35460a.mo6047C();
        strArr = C7740i.f35319d;
        C7752j.m6348a(mo6047C, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", strArr);
        C7752j.m6348a(this.f35297d.f35460a.mo6047C(), sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
        C7813o3 mo6047C2 = this.f35297d.f35460a.mo6047C();
        strArr2 = C7740i.f35320e;
        C7752j.m6348a(mo6047C2, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", strArr2);
        C7813o3 mo6047C3 = this.f35297d.f35460a.mo6047C();
        strArr3 = C7740i.f35321f;
        C7752j.m6348a(mo6047C3, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", strArr3);
        C7813o3 mo6047C4 = this.f35297d.f35460a.mo6047C();
        strArr4 = C7740i.f35323h;
        C7752j.m6348a(mo6047C4, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", strArr4);
        C7752j.m6348a(this.f35297d.f35460a.mo6047C(), sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
        C7813o3 mo6047C5 = this.f35297d.f35460a.mo6047C();
        strArr5 = C7740i.f35322g;
        C7752j.m6348a(mo6047C5, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", strArr5);
        C7813o3 mo6047C6 = this.f35297d.f35460a.mo6047C();
        strArr6 = C7740i.f35324i;
        C7752j.m6348a(mo6047C6, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", strArr6);
        C7813o3 mo6047C7 = this.f35297d.f35460a.mo6047C();
        strArr7 = C7740i.f35325j;
        C7752j.m6348a(mo6047C7, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", strArr7);
        C7752j.m6348a(this.f35297d.f35460a.mo6047C(), sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
        C7813o3 mo6047C8 = this.f35297d.f35460a.mo6047C();
        strArr8 = C7740i.f35326k;
        C7752j.m6348a(mo6047C8, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", strArr8);
        C7752j.m6348a(this.f35297d.f35460a.mo6047C(), sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
        C7752j.m6348a(this.f35297d.f35460a.mo6047C(), sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
        C7752j.m6348a(this.f35297d.f35460a.mo6047C(), sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
