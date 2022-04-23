package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.bw;
import com.google.android.gms.internal.measurement.ce;
import com.google.android.gms.internal.measurement.la;
import com.mopub.common.Constants;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i.class */
public final class i extends je {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f29810a = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f29811b = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f29812c = {ImpressionData.APP_VERSION, "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f29813d = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] e = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] g = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] h = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] i = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final ja k = new ja(this.t.j);
    private final h j = new h(this, this.t.f29583a, "google_app_measurement.db");

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(jo joVar) {
        super(joVar);
    }

    private final long a(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = e().rawQuery(str, strArr);
                if (!cursor2.moveToFirst()) {
                    return j;
                }
                cursor2 = cursor2;
                cursor = cursor2;
                long j2 = cursor2.getLong(0);
                if (cursor2 != null) {
                    cursor2.close();
                }
                return j2;
            } catch (SQLiteException e2) {
                this.t.c().f29506c.a("Database error", str, e2);
                throw e2;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    private Object a(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            this.t.c().f29506c.a("Loaded invalid null value from database");
            return null;
        } else if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        } else {
            if (type == 2) {
                return Double.valueOf(cursor.getDouble(i2));
            }
            if (type == 3) {
                return cursor.getString(i2);
            }
            if (type != 4) {
                this.t.c().f29506c.a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            this.t.c().f29506c.a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    private static void a(ContentValues contentValues, Object obj) {
        o.a("value");
        o.a(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put("value", (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    private final long b(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = e().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e2) {
                this.t.c().f29506c.a("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private boolean x() {
        return this.t.f29583a.getDatabasePath("google_app_measurement.db").exists();
    }

    public final void U_() {
        v();
        e().setTransactionSuccessful();
    }

    public final void V_() {
        v();
        e().endTransaction();
    }

    public final g a(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        o.a(str);
        S_();
        v();
        g gVar = new g();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase e2 = e();
                Cursor query = e2.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    this.t.c().f.a("Not updating daily counts, app is not known. appId", Cdo.a(str));
                    if (query != null) {
                        query.close();
                    }
                    return gVar;
                }
                if (query.getLong(0) == j) {
                    gVar.f29669b = query.getLong(1);
                    gVar.f29668a = query.getLong(2);
                    gVar.f29670c = query.getLong(3);
                    gVar.f29671d = query.getLong(4);
                    gVar.e = query.getLong(5);
                }
                if (z) {
                    gVar.f29669b += j2;
                }
                if (z2) {
                    gVar.f29668a += j2;
                }
                if (z3) {
                    gVar.f29670c += j2;
                }
                if (z4) {
                    gVar.f29671d += j2;
                }
                if (z5) {
                    gVar.e += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(gVar.f29668a));
                contentValues.put("daily_events_count", Long.valueOf(gVar.f29669b));
                contentValues.put("daily_conversions_count", Long.valueOf(gVar.f29670c));
                contentValues.put("daily_error_events_count", Long.valueOf(gVar.f29671d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(gVar.e));
                e2.update("apps", contentValues, "app_id=?", new String[]{str});
                if (query != null) {
                    query.close();
                }
                return gVar;
            } catch (SQLiteException e3) {
                this.t.c().f29506c.a("Error updating daily counts. appId", Cdo.a(str), e3);
                if (0 != 0) {
                    cursor.close();
                }
                return gVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    public final g a(long j, String str, boolean z, boolean z2) {
        return a(j, str, 1L, false, false, z, false, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x020e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.o a(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.a(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.o");
    }

    public final List<js> a(String str) {
        o.a(str);
        S_();
        v();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = e().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (cursor2.moveToFirst()) {
                    do {
                        cursor2 = cursor2;
                        cursor = cursor2;
                        String string = cursor2.getString(0);
                        String string2 = cursor2.getString(1);
                        String str2 = string2;
                        if (string2 == null) {
                            str2 = "";
                        }
                        long j = cursor2.getLong(2);
                        Object a2 = a(cursor2, 3);
                        if (a2 == null) {
                            this.t.c().f29506c.a("Read invalid user property value, ignoring it. appId", Cdo.a(str));
                        } else {
                            arrayList.add(new js(str, str2, string, j, a2));
                        }
                    } while (cursor2.moveToNext());
                    return arrayList;
                }
                if (cursor2 != null) {
                    cursor2.close();
                }
                return arrayList;
            } catch (SQLiteException e2) {
                this.t.c().f29506c.a("Error querying user properties. appId", Cdo.a(str), e2);
                cursor2 = cursor;
                List<js> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0199, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a2, code lost:
        r10.t.c().f29506c.a("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.js> a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a6, code lost:
        r21 = r0;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00ab, code lost:
        r16.t.c().f29506c.a("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzaa> a(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.a(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0473 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r11, long r13, com.google.android.gms.measurement.internal.jn r15) {
        /*
            Method dump skipped, instructions count: 1421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.a(long, long, com.google.android.gms.measurement.internal.jn):void");
    }

    public final void a(fd fdVar) {
        o.a(fdVar);
        S_();
        v();
        String b2 = fdVar.b();
        o.a(b2);
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, b2);
        contentValues.put("app_instance_id", fdVar.c());
        contentValues.put("gmp_app_id", fdVar.d());
        contentValues.put("resettable_device_id_hash", fdVar.g());
        contentValues.put("last_bundle_index", Long.valueOf(fdVar.r()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(fdVar.i()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(fdVar.j()));
        contentValues.put(ImpressionData.APP_VERSION, fdVar.k());
        contentValues.put("app_store", fdVar.m());
        contentValues.put("gmp_version", Long.valueOf(fdVar.n()));
        contentValues.put("dev_cert_hash", Long.valueOf(fdVar.o()));
        contentValues.put("measurement_enabled", Boolean.valueOf(fdVar.q()));
        fdVar.f29620a.d().S_();
        contentValues.put("day", Long.valueOf(fdVar.f29622c));
        fdVar.f29620a.d().S_();
        contentValues.put("daily_public_events_count", Long.valueOf(fdVar.f29623d));
        fdVar.f29620a.d().S_();
        contentValues.put("daily_events_count", Long.valueOf(fdVar.e));
        fdVar.f29620a.d().S_();
        contentValues.put("daily_conversions_count", Long.valueOf(fdVar.f));
        contentValues.put("config_fetched_time", Long.valueOf(fdVar.s()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(fdVar.t()));
        contentValues.put("app_version_int", Long.valueOf(fdVar.l()));
        contentValues.put("firebase_instance_id", fdVar.h());
        fdVar.f29620a.d().S_();
        contentValues.put("daily_error_events_count", Long.valueOf(fdVar.g));
        fdVar.f29620a.d().S_();
        contentValues.put("daily_realtime_events_count", Long.valueOf(fdVar.h));
        contentValues.put("health_monitor_sample", fdVar.v());
        contentValues.put("android_id", Long.valueOf(fdVar.w()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(fdVar.x()));
        contentValues.put("admob_app_id", fdVar.e());
        contentValues.put("dynamite_version", Long.valueOf(fdVar.p()));
        List<String> z = fdVar.z();
        if (z != null) {
            if (z.size() == 0) {
                this.t.c().f.a("Safelisted events should not be an empty list. appId", b2);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", z));
            }
        }
        la.b();
        if (this.t.g.d(b2, dc.ag)) {
            contentValues.put("ga_app_id", fdVar.f());
        }
        try {
            SQLiteDatabase e2 = e();
            if (e2.update("apps", contentValues, "app_id = ?", new String[]{b2}) == 0 && e2.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                this.t.c().f29506c.a("Failed to insert/update app (got -1). appId", Cdo.a(b2));
            }
        } catch (SQLiteException e3) {
            this.t.c().f29506c.a("Error storing app. appId", Cdo.a(b2), e3);
        }
    }

    public final void a(o oVar) {
        o.a(oVar);
        S_();
        v();
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, oVar.f29963a);
        contentValues.put("name", oVar.f29964b);
        contentValues.put("lifetime_count", Long.valueOf(oVar.f29965c));
        contentValues.put("current_bundle_count", Long.valueOf(oVar.f29966d));
        contentValues.put("last_fire_timestamp", Long.valueOf(oVar.f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(oVar.g));
        contentValues.put("last_bundled_day", oVar.h);
        contentValues.put("last_sampled_complex_event_id", oVar.i);
        contentValues.put("last_sampling_rate", oVar.j);
        contentValues.put("current_session_count", Long.valueOf(oVar.e));
        Boolean bool = oVar.k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (e().insertWithOnConflict(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues, 5) == -1) {
                this.t.c().f29506c.a("Failed to insert/update event aggregates (got -1). appId", Cdo.a(oVar.f29963a));
            }
        } catch (SQLiteException e2) {
            this.t.c().f29506c.a("Error storing event aggregates. appId", Cdo.a(oVar.f29963a), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x048e, code lost:
        r0.a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x04a5, code lost:
        r0 = r0.j();
        r0 = new android.content.ContentValues();
        r0.put(com.mopub.mobileads.PangleAdapterConfiguration.APP_ID_EXTRA_KEY, r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x04d1, code lost:
        if (r0.a() == false) goto L_0x04e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x04d4, code lost:
        r16 = java.lang.Integer.valueOf(r0.zze);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x04e1, code lost:
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x04e4, code lost:
        r0.put("filter_id", r16);
        r0.put("property_name", r0.zzf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0503, code lost:
        if ((r0.zza & 32) == 0) goto L_0x050c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0506, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x050c, code lost:
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0511, code lost:
        if (r19 == false) goto L_0x0521;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0514, code lost:
        r16 = java.lang.Boolean.valueOf(r0.zzj);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0521, code lost:
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0524, code lost:
        r0.put("session_scoped", r16);
        r0.put("data", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0549, code lost:
        if (e().insertWithOnConflict("property_filters", null, r0, 5) != (-1)) goto L_0x0430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x054c, code lost:
        r8.t.c().f29506c.a("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.Cdo.a(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0566, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0568, code lost:
        r8.t.c().f29506c.a("Error storing property filter. appId", com.google.android.gms.measurement.internal.Cdo.a(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x057f, code lost:
        v();
        S_();
        com.google.android.gms.common.internal.o.a(r9);
        r0 = e();
        r0.delete("property_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
        r0.delete("event_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0284, code lost:
        r0 = r0.zzf.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0297, code lost:
        if (r0.hasNext() == false) goto L_0x02c6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02a7, code lost:
        if (r0.next().a() != false) goto L_0x0290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02aa, code lost:
        r8.t.c().f.a("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.Cdo.a(r9), java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02c6, code lost:
        r0 = r0.zzg.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02dd, code lost:
        if (r0.hasNext() == false) goto L_0x0424;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02e0, code lost:
        r0 = r0.next();
        v();
        S_();
        com.google.android.gms.common.internal.o.a(r9);
        com.google.android.gms.common.internal.o.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0307, code lost:
        if (android.text.TextUtils.isEmpty(r0.zzf) == false) goto L_0x034b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x030a, code lost:
        r0 = r8.t.c().f;
        r0 = com.google.android.gms.measurement.internal.Cdo.a(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0321, code lost:
        if (r0.a() == false) goto L_0x0331;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0324, code lost:
        r14 = java.lang.Integer.valueOf(r0.zze);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0331, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0334, code lost:
        r0.a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x034b, code lost:
        r0 = r0.j();
        r0 = new android.content.ContentValues();
        r0.put(com.mopub.mobileads.PangleAdapterConfiguration.APP_ID_EXTRA_KEY, r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0377, code lost:
        if (r0.a() == false) goto L_0x0387;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x037a, code lost:
        r14 = java.lang.Integer.valueOf(r0.zze);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0387, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x038a, code lost:
        r0.put("filter_id", r14);
        r0.put("event_name", r0.zzf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x03a9, code lost:
        if ((r0.zza & 64) == 0) goto L_0x03b2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x03ac, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x03b2, code lost:
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x03b7, code lost:
        if (r19 == false) goto L_0x03c7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03ba, code lost:
        r14 = java.lang.Boolean.valueOf(r0.zzl);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03c7, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03ca, code lost:
        r0.put("session_scoped", r14);
        r0.put("data", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x03ef, code lost:
        if (e().insertWithOnConflict("event_filters", null, r0, 5) != (-1)) goto L_0x0406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x03f2, code lost:
        r8.t.c().f29506c.a("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.Cdo.a(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0409, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x040b, code lost:
        r8.t.c().f29506c.a("Error storing event filter. appId", com.google.android.gms.measurement.internal.Cdo.a(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0424, code lost:
        r0 = r0.zzf.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0437, code lost:
        if (r0.hasNext() == false) goto L_0x01f1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x043a, code lost:
        r0 = r0.next();
        v();
        S_();
        com.google.android.gms.common.internal.o.a(r9);
        com.google.android.gms.common.internal.o.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0461, code lost:
        if (android.text.TextUtils.isEmpty(r0.zzf) == false) goto L_0x04a5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0464, code lost:
        r0 = r8.t.c().f;
        r0 = com.google.android.gms.measurement.internal.Cdo.a(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x047b, code lost:
        if (r0.a() == false) goto L_0x048b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x047e, code lost:
        r14 = java.lang.Integer.valueOf(r0.zze);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x048b, code lost:
        r14 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r9, java.util.List<com.google.android.gms.internal.measurement.an> r10) {
        /*
            Method dump skipped, instructions count: 1877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.a(java.lang.String, java.util.List):void");
    }

    public final void a(String str, byte[] bArr, String str2) {
        o.a(str);
        S_();
        v();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (e().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                this.t.c().f29506c.a("Failed to update remote config (got 0). appId", Cdo.a(str));
            }
        } catch (SQLiteException e2) {
            this.t.c().f29506c.a("Error storing remote config. appId", Cdo.a(str), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<Long> list) {
        S_();
        v();
        o.a(list);
        if (list.size() == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        } else if (x()) {
            String join = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 80);
            sb3.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb3.append(sb2);
            sb3.append(" AND retry_count =  2147483647 LIMIT 1");
            if (b(sb3.toString(), (String[]) null) > 0) {
                this.t.c().f.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase e2 = e();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < ");
                sb4.append(Integer.MAX_VALUE);
                sb4.append(")");
                e2.execSQL(sb4.toString());
            } catch (SQLiteException e3) {
                this.t.c().f29506c.a("Error incrementing retry count. error", e3);
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.je
    protected final boolean a() {
        return false;
    }

    public final boolean a(ce ceVar, boolean z) {
        S_();
        v();
        o.a(ceVar);
        o.a(ceVar.zzu);
        o.a(ceVar.a());
        h();
        long a2 = this.t.j.a();
        if (ceVar.zzl < a2 - e.i() || ceVar.zzl > e.i() + a2) {
            this.t.c().f.a("Storing bundle outside of the max uploading time span. appId, now, timestamp", Cdo.a(ceVar.zzu), Long.valueOf(a2), Long.valueOf(ceVar.zzl));
        }
        try {
            byte[] b2 = this.f.g().b(ceVar.j());
            this.t.c().k.a("Saving bundle, size", Integer.valueOf(b2.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, ceVar.zzu);
            contentValues.put("bundle_end_timestamp", Long.valueOf(ceVar.zzl));
            contentValues.put("data", b2);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (ceVar.b()) {
                contentValues.put("retry_count", Integer.valueOf(ceVar.zzQ));
            }
            try {
                if (e().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                this.t.c().f29506c.a("Failed to insert bundle (got -1). appId", Cdo.a(ceVar.zzu));
                return false;
            } catch (SQLiteException e2) {
                this.t.c().f29506c.a("Error storing bundle. appId", Cdo.a(ceVar.zzu), e2);
                return false;
            }
        } catch (IOException e3) {
            this.t.c().f29506c.a("Data loss. Failed to serialize bundle. appId", Cdo.a(ceVar.zzu), e3);
            return false;
        }
    }

    public final boolean a(js jsVar) {
        o.a(jsVar);
        S_();
        v();
        if (c(jsVar.f29909a, jsVar.f29911c) == null) {
            if (ju.a(jsVar.f29911c)) {
                if (b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{jsVar.f29909a}) >= this.t.g.a(jsVar.f29909a, dc.F, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(jsVar.f29911c) && b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{jsVar.f29909a, jsVar.f29910b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, jsVar.f29909a);
        contentValues.put("origin", jsVar.f29910b);
        contentValues.put("name", jsVar.f29911c);
        contentValues.put("set_timestamp", Long.valueOf(jsVar.f29912d));
        a(contentValues, jsVar.e);
        try {
            if (e().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            this.t.c().f29506c.a("Failed to insert/update user property (got -1). appId", Cdo.a(jsVar.f29909a));
            return true;
        } catch (SQLiteException e2) {
            this.t.c().f29506c.a("Error storing user property. appId", Cdo.a(jsVar.f29909a), e2);
            return true;
        }
    }

    public final boolean a(zzaa zzaaVar) {
        o.a(zzaaVar);
        S_();
        v();
        String str = zzaaVar.zza;
        o.a(str);
        if (c(str, zzaaVar.zzc.zzb) == null && b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
        contentValues.put("origin", zzaaVar.zzb);
        contentValues.put("name", zzaaVar.zzc.zzb);
        a(contentValues, o.a(zzaaVar.zzc.zza()));
        contentValues.put("active", Boolean.valueOf(zzaaVar.zze));
        contentValues.put("trigger_event_name", zzaaVar.zzf);
        contentValues.put("trigger_timeout", Long.valueOf(zzaaVar.zzh));
        this.t.g();
        contentValues.put("timed_out_event", ju.a((Parcelable) zzaaVar.zzg));
        contentValues.put("creation_timestamp", Long.valueOf(zzaaVar.zzd));
        this.t.g();
        contentValues.put("triggered_event", ju.a((Parcelable) zzaaVar.zzi));
        contentValues.put("triggered_timestamp", Long.valueOf(zzaaVar.zzc.zzc));
        contentValues.put("time_to_live", Long.valueOf(zzaaVar.zzj));
        this.t.g();
        contentValues.put("expired_event", ju.a((Parcelable) zzaaVar.zzk));
        try {
            if (e().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            this.t.c().f29506c.a("Failed to insert/update conditional user property (got -1)", Cdo.a(str));
            return true;
        } catch (SQLiteException e2) {
            this.t.c().f29506c.a("Error storing conditional user property", Cdo.a(str), e2);
            return true;
        }
    }

    public final boolean a(String str, Long l, long j, bw bwVar) {
        S_();
        v();
        o.a(bwVar);
        o.a(str);
        o.a(l);
        byte[] j2 = bwVar.j();
        this.t.c().k.a("Saving complex main event, appId, data size", this.t.h().a(str), Integer.valueOf(j2.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", j2);
        try {
            if (e().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.t.c().f29506c.a("Failed to insert complex main event (got -1). appId", Cdo.a(str));
            return false;
        } catch (SQLiteException e2) {
            this.t.c().f29506c.a("Error storing complex main event. appId", Cdo.a(str), e2);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x05d2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0293  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.fd b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.b(java.lang.String):com.google.android.gms.measurement.internal.fd");
    }

    public final List<zzaa> b(String str, String str2, String str3) {
        o.a(str);
        S_();
        v();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return a(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void b() {
        v();
        e().beginTransaction();
    }

    public final void b(String str, String str2) {
        o.a(str);
        o.a(str2);
        S_();
        v();
        try {
            e().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            this.t.c().f29506c.a("Error deleting user property. appId", Cdo.a(str), this.t.h().c(str2), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long c(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.c(java.lang.String):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.js c(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.c(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.js");
    }

    public final long d(String str) {
        o.a(str);
        return a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaa d(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.d(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzaa");
    }

    public final int e(String str, String str2) {
        o.a(str);
        o.a(str2);
        S_();
        v();
        try {
            return e().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            this.t.c().f29506c.a("Error deleting conditional property", Cdo.a(str), this.t.h().c(str2), e2);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SQLiteDatabase e() {
        S_();
        try {
            return this.j.getWritableDatabase();
        } catch (SQLiteException e2) {
            this.t.c().f.a("Error opening database", e2);
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0191  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle e(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.e(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String f() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.e()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x0041, SQLiteException -> 0x0045
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x003d, all -> 0x0067
            if (r0 == 0) goto L_0x0031
            r0 = r5
            r6 = r0
            r0 = r5
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SQLiteException -> 0x003d, all -> 0x0067
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002f
            r0 = r5
            r0.close()
        L_0x002f:
            r0 = r7
            return r0
        L_0x0031:
            r0 = r5
            if (r0 == 0) goto L_0x003b
            r0 = r5
            r0.close()
        L_0x003b:
            r0 = 0
            return r0
        L_0x003d:
            r7 = move-exception
            goto L_0x0048
        L_0x0041:
            r5 = move-exception
            goto L_0x0068
        L_0x0045:
            r7 = move-exception
            r0 = 0
            r5 = r0
        L_0x0048:
            r0 = r5
            r6 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.t     // Catch: all -> 0x0067
            com.google.android.gms.measurement.internal.do r0 = r0.c()     // Catch: all -> 0x0067
            com.google.android.gms.measurement.internal.dm r0 = r0.f29506c     // Catch: all -> 0x0067
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.a(r1, r2)     // Catch: all -> 0x0067
            r0 = r5
            if (r0 == 0) goto L_0x0065
            r0 = r5
            r0.close()
        L_0x0065:
            r0 = 0
            return r0
        L_0x0067:
            r5 = move-exception
        L_0x0068:
            r0 = r6
            if (r0 == 0) goto L_0x0072
            r0 = r6
            r0.close()
        L_0x0072:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i.f():java.lang.String");
    }

    public final boolean g() {
        return b("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        int delete;
        S_();
        v();
        if (x()) {
            long a2 = this.f.e.f29845a.a();
            long b2 = this.t.j.b();
            if (Math.abs(b2 - a2) > dc.x.a(null).longValue()) {
                this.f.e.f29845a.a(b2);
                S_();
                v();
                if (x() && (delete = e().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(this.t.j.a()), String.valueOf(e.i())})) > 0) {
                    this.t.c().k.a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
    }

    public final long i() {
        return a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    public final long j() {
        return a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final boolean k() {
        return b("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean l() {
        return b("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }
}
