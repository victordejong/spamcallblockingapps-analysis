package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.callapp.contacts.model.Constants;
/* renamed from: com.google.android.gms.measurement.internal.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/h.class */
public final class C14041h extends SQLiteOpenHelper {

    /* renamed from: a */
    final /* synthetic */ C14068i f51762a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14041h(C14068i c14068i, Context context, String str) {
        super(context, "google_app_measurement.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f51762a = c14068i;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        C14096ja c14096ja;
        C14096ja c14096ja2;
        C14096ja c14096ja3;
        c14096ja = this.f51762a.f51856k;
        boolean z = true;
        if (c14096ja.f51935b != 0 && c14096ja.f51934a.mo19038b() - c14096ja.f51935b < Constants.HOUR_IN_MILLIS) {
            z = false;
        }
        if (z) {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                c14096ja2 = this.f51762a.f51856k;
                c14096ja2.m11704a();
                this.f51762a.f51637t.mo11661c().f51395c.m12092a("Opening the database failed, dropping and recreating it");
                if (!this.f51762a.f51637t.f51523a.getDatabasePath("google_app_measurement.db").delete()) {
                    this.f51762a.f51637t.mo11661c().f51395c.m12091a("Failed to delete corrupted db file", "google_app_measurement.db");
                }
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    c14096ja3 = this.f51762a.f51856k;
                    c14096ja3.f51935b = 0L;
                    return writableDatabase;
                } catch (SQLiteException e2) {
                    this.f51762a.f51637t.mo11661c().f51395c.m12091a("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
        }
        throw new SQLiteException("Database open failed");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C14095j.m11706a(this.f51762a.f51637t.mo11661c(), sQLiteDatabase);
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
        C13947do mo11661c = this.f51762a.f51637t.mo11661c();
        strArr = C14068i.f51847a;
        C14095j.m11705a(mo11661c, sQLiteDatabase, com.mopub.common.Constants.VIDEO_TRACKING_EVENTS_KEY, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", strArr);
        C14095j.m11705a(this.f51762a.f51637t.mo11661c(), sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
        C13947do mo11661c2 = this.f51762a.f51637t.mo11661c();
        strArr2 = C14068i.f51848b;
        C14095j.m11705a(mo11661c2, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", strArr2);
        C13947do mo11661c3 = this.f51762a.f51637t.mo11661c();
        strArr3 = C14068i.f51849c;
        C14095j.m11705a(mo11661c3, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", strArr3);
        C13947do mo11661c4 = this.f51762a.f51637t.mo11661c();
        strArr4 = C14068i.f51851e;
        C14095j.m11705a(mo11661c4, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", strArr4);
        C14095j.m11705a(this.f51762a.f51637t.mo11661c(), sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
        C13947do mo11661c5 = this.f51762a.f51637t.mo11661c();
        strArr5 = C14068i.f51850d;
        C14095j.m11705a(mo11661c5, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", strArr5);
        C13947do mo11661c6 = this.f51762a.f51637t.mo11661c();
        strArr6 = C14068i.f51852g;
        C14095j.m11705a(mo11661c6, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", strArr6);
        C13947do mo11661c7 = this.f51762a.f51637t.mo11661c();
        strArr7 = C14068i.f51853h;
        C14095j.m11705a(mo11661c7, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", strArr7);
        C14095j.m11705a(this.f51762a.f51637t.mo11661c(), sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
        C13947do mo11661c8 = this.f51762a.f51637t.mo11661c();
        strArr8 = C14068i.f51854i;
        C14095j.m11705a(mo11661c8, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", strArr8);
        C14095j.m11705a(this.f51762a.f51637t.mo11661c(), sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
        C14095j.m11705a(this.f51762a.f51637t.mo11661c(), sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
        C14095j.m11705a(this.f51762a.f51637t.mo11661c(), sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
