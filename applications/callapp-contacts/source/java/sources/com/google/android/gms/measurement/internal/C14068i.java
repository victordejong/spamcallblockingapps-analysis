package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13402bw;
import com.google.android.gms.internal.measurement.C13411ce;
import com.google.android.gms.internal.measurement.C13650la;
import com.mopub.common.Constants;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i.class */
public final class C14068i extends AbstractC14100je {

    /* renamed from: a */
    private static final String[] f51847a = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: b */
    private static final String[] f51848b = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: c */
    private static final String[] f51849c = {ImpressionData.APP_VERSION, "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};

    /* renamed from: d */
    private static final String[] f51850d = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: e */
    private static final String[] f51851e = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: g */
    private static final String[] f51852g = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: h */
    private static final String[] f51853h = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: i */
    private static final String[] f51854i = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: k */
    private final C14096ja f51856k = new C14096ja(this.f51637t.f51532j);

    /* renamed from: j */
    private final C14041h f51855j = new C14041h(this, this.f51637t.f51523a, "google_app_measurement.db");

    public C14068i(C14110jo c14110jo) {
        super(c14110jo);
    }

    /* renamed from: a */
    private final long m11794a(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m11783e().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                cursor2 = rawQuery;
                cursor = rawQuery;
                long j2 = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j2;
            } catch (SQLiteException e) {
                this.f51637t.mo11661c().f51395c.m12090a("Database error", str, e);
                Cursor cursor3 = cursor;
                throw e;
            }
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    private Object m11808a(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            this.f51637t.mo11661c().f51395c.m12092a("Loaded invalid null value from database");
            return null;
        } else if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        } else {
            if (type == 2) {
                return Double.valueOf(cursor.getDouble(i));
            }
            if (type == 3) {
                return cursor.getString(i);
            }
            if (type != 4) {
                this.f51637t.mo11661c().f51395c.m12091a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            this.f51637t.mo11661c().f51395c.m12092a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    /* renamed from: a */
    private static void m11809a(ContentValues contentValues, Object obj) {
        C12045o.m19160a("value");
        C12045o.m19162a(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("Invalid value type");
        } else {
            contentValues.put("value", (Double) obj);
        }
    }

    /* renamed from: b */
    private final long m11788b(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m11783e().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                this.f51637t.mo11661c().f51395c.m12090a("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: x */
    private boolean m11765x() {
        return this.f51637t.f51523a.getDatabasePath("google_app_measurement.db").exists();
    }

    /* renamed from: U_ */
    public final void m11814U_() {
        m11696v();
        m11783e().setTransactionSuccessful();
    }

    /* renamed from: V_ */
    public final void m11813V_() {
        m11696v();
        m11783e().endTransaction();
    }

    /* renamed from: a */
    public final C14014g m11811a(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        C12045o.m19160a(str);
        mo11884S_();
        m11696v();
        C14014g c14014g = new C14014g();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase m11783e = m11783e();
                Cursor query = m11783e.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    this.f51637t.mo11661c().f51398f.m12091a("Not updating daily counts, app is not known. appId", C13947do.m12087a(str));
                    if (query != null) {
                        query.close();
                    }
                    return c14014g;
                }
                if (query.getLong(0) == j) {
                    c14014g.f51666b = query.getLong(1);
                    c14014g.f51665a = query.getLong(2);
                    c14014g.f51667c = query.getLong(3);
                    c14014g.f51668d = query.getLong(4);
                    c14014g.f51669e = query.getLong(5);
                }
                if (z) {
                    c14014g.f51666b += j2;
                }
                if (z2) {
                    c14014g.f51665a += j2;
                }
                if (z3) {
                    c14014g.f51667c += j2;
                }
                if (z4) {
                    c14014g.f51668d += j2;
                }
                if (z5) {
                    c14014g.f51669e += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(c14014g.f51665a));
                contentValues.put("daily_events_count", Long.valueOf(c14014g.f51666b));
                contentValues.put("daily_conversions_count", Long.valueOf(c14014g.f51667c));
                contentValues.put("daily_error_events_count", Long.valueOf(c14014g.f51668d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(c14014g.f51669e));
                m11783e.update("apps", contentValues, "app_id=?", new String[]{str});
                if (query != null) {
                    query.close();
                }
                return c14014g;
            } catch (SQLiteException e) {
                this.f51637t.mo11661c().f51395c.m12090a("Error updating daily counts. appId", C13947do.m12087a(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return c14014g;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final C14014g m11810a(long j, String str, boolean z, boolean z2) {
        return m11811a(j, str, 1L, false, false, z, false, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x020e  */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C14137o m11799a(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11799a(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.o");
    }

    /* renamed from: a */
    public final List<C14114js> m11801a(String str) {
        C12045o.m19160a(str);
        mo11884S_();
        m11696v();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m11783e().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!query.moveToFirst()) {
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
                do {
                    cursor2 = query;
                    cursor = query;
                    String string = query.getString(0);
                    String string2 = query.getString(1);
                    String str2 = string2;
                    if (string2 == null) {
                        str2 = "";
                    }
                    long j = query.getLong(2);
                    Object m11808a = m11808a(query, 3);
                    if (m11808a == null) {
                        this.f51637t.mo11661c().f51395c.m12091a("Read invalid user property value, ignoring it. appId", C13947do.m12087a(str));
                    } else {
                        arrayList.add(new C14114js(str, str2, string, j, m11808a));
                    }
                } while (query.moveToNext());
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e) {
                this.f51637t.mo11661c().f51395c.m12090a("Error querying user properties. appId", C13947do.m12087a(str), e);
                cursor2 = cursor;
                List<C14114js> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0199, code lost:
        r16 = r0;
        r23 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a2, code lost:
        r10.f51637t.mo11661c().f51395c.m12091a("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02d6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.C14114js> m11798a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11798a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a6, code lost:
        r21 = r0;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00ab, code lost:
        r16.f51637t.mo11661c().f51395c.m12091a("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzaa> m11795a(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11795a(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0473 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11812a(long r11, long r13, com.google.android.gms.measurement.internal.C14109jn r15) {
        /*
            Method dump skipped, instructions count: 1421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11812a(long, long, com.google.android.gms.measurement.internal.jn):void");
    }

    /* renamed from: a */
    public final void m11806a(C13991fd c13991fd) {
        C12045o.m19162a(c13991fd);
        mo11884S_();
        m11696v();
        String m11950b = c13991fd.m11950b();
        C12045o.m19162a(m11950b);
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, m11950b);
        contentValues.put("app_instance_id", c13991fd.m11946c());
        contentValues.put("gmp_app_id", c13991fd.m11943d());
        contentValues.put("resettable_device_id_hash", c13991fd.m11934g());
        contentValues.put("last_bundle_index", Long.valueOf(c13991fd.m11916r()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(c13991fd.m11928i()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(c13991fd.m11925j()));
        contentValues.put(ImpressionData.APP_VERSION, c13991fd.m11923k());
        contentValues.put("app_store", c13991fd.m11921m());
        contentValues.put("gmp_version", Long.valueOf(c13991fd.m11920n()));
        contentValues.put("dev_cert_hash", Long.valueOf(c13991fd.m11919o()));
        contentValues.put("measurement_enabled", Boolean.valueOf(c13991fd.m11917q()));
        c13991fd.f51587a.mo11658d().mo11884S_();
        contentValues.put("day", Long.valueOf(c13991fd.f51589c));
        c13991fd.f51587a.mo11658d().mo11884S_();
        contentValues.put("daily_public_events_count", Long.valueOf(c13991fd.f51590d));
        c13991fd.f51587a.mo11658d().mo11884S_();
        contentValues.put("daily_events_count", Long.valueOf(c13991fd.f51591e));
        c13991fd.f51587a.mo11658d().mo11884S_();
        contentValues.put("daily_conversions_count", Long.valueOf(c13991fd.f51592f));
        contentValues.put("config_fetched_time", Long.valueOf(c13991fd.m11915s()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(c13991fd.m11914t()));
        contentValues.put("app_version_int", Long.valueOf(c13991fd.m11922l()));
        contentValues.put("firebase_instance_id", c13991fd.m11931h());
        c13991fd.f51587a.mo11658d().mo11884S_();
        contentValues.put("daily_error_events_count", Long.valueOf(c13991fd.f51593g));
        c13991fd.f51587a.mo11658d().mo11884S_();
        contentValues.put("daily_realtime_events_count", Long.valueOf(c13991fd.f51594h));
        contentValues.put("health_monitor_sample", c13991fd.m11912v());
        contentValues.put("android_id", Long.valueOf(c13991fd.m11911w()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(c13991fd.m11910x()));
        contentValues.put("admob_app_id", c13991fd.m11940e());
        contentValues.put("dynamite_version", Long.valueOf(c13991fd.m11918p()));
        List<String> m11908z = c13991fd.m11908z();
        if (m11908z != null) {
            if (m11908z.size() == 0) {
                this.f51637t.mo11661c().f51398f.m12091a("Safelisted events should not be an empty list. appId", m11950b);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", m11908z));
            }
        }
        C13650la.m12368b();
        if (this.f51637t.f51529g.m12061d(m11950b, C13935dc.f51319ag)) {
            contentValues.put("ga_app_id", c13991fd.m11937f());
        }
        try {
            SQLiteDatabase m11783e = m11783e();
            if (m11783e.update("apps", contentValues, "app_id = ?", new String[]{m11950b}) != 0 || m11783e.insertWithOnConflict("apps", null, contentValues, 5) != -1) {
                return;
            }
            this.f51637t.mo11661c().f51395c.m12091a("Failed to insert/update app (got -1). appId", C13947do.m12087a(m11950b));
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12090a("Error storing app. appId", C13947do.m12087a(m11950b), e);
        }
    }

    /* renamed from: a */
    public final void m11803a(C14137o c14137o) {
        C12045o.m19162a(c14137o);
        mo11884S_();
        m11696v();
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, c14137o.f52061a);
        contentValues.put("name", c14137o.f52062b);
        contentValues.put("lifetime_count", Long.valueOf(c14137o.f52063c));
        contentValues.put("current_bundle_count", Long.valueOf(c14137o.f52064d));
        contentValues.put("last_fire_timestamp", Long.valueOf(c14137o.f52066f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c14137o.f52067g));
        contentValues.put("last_bundled_day", c14137o.f52068h);
        contentValues.put("last_sampled_complex_event_id", c14137o.f52069i);
        contentValues.put("last_sampling_rate", c14137o.f52070j);
        contentValues.put("current_session_count", Long.valueOf(c14137o.f52065e));
        Boolean bool = c14137o.f52071k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m11783e().insertWithOnConflict(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues, 5) != -1) {
                return;
            }
            this.f51637t.mo11661c().f51395c.m12091a("Failed to insert/update event aggregates (got -1). appId", C13947do.m12087a(c14137o.f52061a));
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12090a("Error storing event aggregates. appId", C13947do.m12087a(c14137o.f52061a), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x048e, code lost:
        r0.m12089a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x04a5, code lost:
        r0 = r0.m12886j();
        r0 = new android.content.ContentValues();
        r0.put(com.mopub.mobileads.PangleAdapterConfiguration.APP_ID_EXTRA_KEY, r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x04d1, code lost:
        if (r0.m13235a() == false) goto L104;
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
        if ((r0.zza & 32) == 0) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0507, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x050c, code lost:
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0511, code lost:
        if (r19 == false) goto L113;
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
        if (m11783e().insertWithOnConflict("property_filters", null, r0, 5) != (-1)) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x054c, code lost:
        r8.f51637t.mo11661c().f51395c.m12091a("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.C13947do.m12087a(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0566, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0568, code lost:
        r8.f51637t.mo11661c().f51395c.m12090a("Error storing property filter. appId", com.google.android.gms.measurement.internal.C13947do.m12087a(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x057f, code lost:
        m11696v();
        mo11884S_();
        com.google.android.gms.common.internal.C12045o.m19160a(r9);
        r0 = m11783e();
        r0.delete("property_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
        r0.delete("event_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0284, code lost:
        r0 = r0.zzf.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0297, code lost:
        if (r0.hasNext() == false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02a7, code lost:
        if (r0.next().m13235a() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02aa, code lost:
        r8.f51637t.mo11661c().f51398f.m12090a("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.C13947do.m12087a(r9), java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02c6, code lost:
        r0 = r0.zzg.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02dd, code lost:
        if (r0.hasNext() == false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02e0, code lost:
        r0 = r0.next();
        m11696v();
        mo11884S_();
        com.google.android.gms.common.internal.C12045o.m19160a(r9);
        com.google.android.gms.common.internal.C12045o.m19162a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0307, code lost:
        if (android.text.TextUtils.isEmpty(r0.zzf) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x030a, code lost:
        r0 = r8.f51637t.mo11661c().f51398f;
        r0 = com.google.android.gms.measurement.internal.C13947do.m12087a(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0321, code lost:
        if (r0.m13267a() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0324, code lost:
        r14 = java.lang.Integer.valueOf(r0.zze);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0331, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0334, code lost:
        r0.m12089a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x034b, code lost:
        r0 = r0.m12886j();
        r0 = new android.content.ContentValues();
        r0.put(com.mopub.mobileads.PangleAdapterConfiguration.APP_ID_EXTRA_KEY, r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0377, code lost:
        if (r0.m13267a() == false) goto L72;
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
        if ((r0.zza & 64) == 0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x03ad, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x03b2, code lost:
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x03b7, code lost:
        if (r19 == false) goto L81;
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
        if (m11783e().insertWithOnConflict("event_filters", null, r0, 5) != (-1)) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x03f2, code lost:
        r8.f51637t.mo11661c().f51395c.m12091a("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.C13947do.m12087a(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0409, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x040b, code lost:
        r8.f51637t.mo11661c().f51395c.m12090a("Error storing event filter. appId", com.google.android.gms.measurement.internal.C13947do.m12087a(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0424, code lost:
        r0 = r0.zzf.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0437, code lost:
        if (r0.hasNext() == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x043a, code lost:
        r0 = r0.next();
        m11696v();
        mo11884S_();
        com.google.android.gms.common.internal.C12045o.m19160a(r9);
        com.google.android.gms.common.internal.C12045o.m19162a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0461, code lost:
        if (android.text.TextUtils.isEmpty(r0.zzf) == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0464, code lost:
        r0 = r8.f51637t.mo11661c().f51398f;
        r0 = com.google.android.gms.measurement.internal.C13947do.m12087a(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x047b, code lost:
        if (r0.m13235a() == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x047e, code lost:
        r14 = java.lang.Integer.valueOf(r0.zze);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x048b, code lost:
        r14 = null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11797a(java.lang.String r9, java.util.List<com.google.android.gms.internal.measurement.C13366an> r10) {
        /*
            Method dump skipped, instructions count: 1877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11797a(java.lang.String, java.util.List):void");
    }

    /* renamed from: a */
    public final void m11796a(String str, byte[] bArr, String str2) {
        C12045o.m19160a(str);
        mo11884S_();
        m11696v();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (m11783e().update("apps", contentValues, "app_id = ?", new String[]{str}) != 0) {
                return;
            }
            this.f51637t.mo11661c().f51395c.m12091a("Failed to update remote config (got 0). appId", C13947do.m12087a(str));
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12090a("Error storing remote config. appId", C13947do.m12087a(str), e);
        }
    }

    /* renamed from: a */
    public final void m11793a(List<Long> list) {
        mo11884S_();
        m11696v();
        C12045o.m19162a(list);
        if (list.size() != 0) {
            if (!m11765x()) {
                return;
            }
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
            if (m11788b(sb3.toString(), (String[]) null) > 0) {
                this.f51637t.mo11661c().f51398f.m12092a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase m11783e = m11783e();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < ");
                sb4.append(Integer.MAX_VALUE);
                sb4.append(")");
                m11783e.execSQL(sb4.toString());
                return;
            } catch (SQLiteException e) {
                this.f51637t.mo11661c().f51395c.m12091a("Error incrementing retry count. error", e);
                return;
            }
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14100je
    /* renamed from: a */
    protected final boolean mo11531a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m11807a(C13411ce c13411ce, boolean z) {
        mo11884S_();
        m11696v();
        C12045o.m19162a(c13411ce);
        C12045o.m19160a(c13411ce.zzu);
        C12045o.m19158a(c13411ce.m13048a());
        m11778h();
        long mo19039a = this.f51637t.f51532j.mo19039a();
        if (c13411ce.zzl < mo19039a - C13959e.m12055i() || c13411ce.zzl > C13959e.m12055i() + mo19039a) {
            this.f51637t.mo11661c().f51398f.m12089a("Storing bundle outside of the max uploading time span. appId, now, timestamp", C13947do.m12087a(c13411ce.zzu), Long.valueOf(mo19039a), Long.valueOf(c13411ce.zzl));
        }
        try {
            byte[] m11614b = this.f51940f.m11653g().m11614b(c13411ce.m12886j());
            this.f51637t.mo11661c().f51403k.m12091a("Saving bundle, size", Integer.valueOf(m11614b.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, c13411ce.zzu);
            contentValues.put("bundle_end_timestamp", Long.valueOf(c13411ce.zzl));
            contentValues.put("data", m11614b);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (c13411ce.m13036b()) {
                contentValues.put("retry_count", Integer.valueOf(c13411ce.zzQ));
            }
            try {
                if (m11783e().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                this.f51637t.mo11661c().f51395c.m12091a("Failed to insert bundle (got -1). appId", C13947do.m12087a(c13411ce.zzu));
                return false;
            } catch (SQLiteException e) {
                this.f51637t.mo11661c().f51395c.m12090a("Error storing bundle. appId", C13947do.m12087a(c13411ce.zzu), e);
                return false;
            }
        } catch (IOException e2) {
            this.f51637t.mo11661c().f51395c.m12090a("Data loss. Failed to serialize bundle. appId", C13947do.m12087a(c13411ce.zzu), e2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m11804a(C14114js c14114js) {
        C12045o.m19162a(c14114js);
        mo11884S_();
        m11696v();
        if (m11786c(c14114js.f51990a, c14114js.f51992c) == null) {
            if (C14116ju.m11589a(c14114js.f51992c)) {
                if (m11788b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{c14114js.f51990a}) >= this.f51637t.f51529g.m12068a(c14114js.f51990a, C13935dc.f51283F, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(c14114js.f51992c) && m11788b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{c14114js.f51990a, c14114js.f51991b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, c14114js.f51990a);
        contentValues.put("origin", c14114js.f51991b);
        contentValues.put("name", c14114js.f51992c);
        contentValues.put("set_timestamp", Long.valueOf(c14114js.f51993d));
        m11809a(contentValues, c14114js.f51994e);
        try {
            if (m11783e().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            this.f51637t.mo11661c().f51395c.m12091a("Failed to insert/update user property (got -1). appId", C13947do.m12087a(c14114js.f51990a));
            return true;
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12090a("Error storing user property. appId", C13947do.m12087a(c14114js.f51990a), e);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m11802a(zzaa zzaaVar) {
        C12045o.m19162a(zzaaVar);
        mo11884S_();
        m11696v();
        String str = zzaaVar.zza;
        C12045o.m19162a(str);
        if (m11786c(str, zzaaVar.zzc.zzb) != null || m11788b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) < 1000) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
            contentValues.put("origin", zzaaVar.zzb);
            contentValues.put("name", zzaaVar.zzc.zzb);
            m11809a(contentValues, C12045o.m19162a(zzaaVar.zzc.zza()));
            contentValues.put("active", Boolean.valueOf(zzaaVar.zze));
            contentValues.put("trigger_event_name", zzaaVar.zzf);
            contentValues.put("trigger_timeout", Long.valueOf(zzaaVar.zzh));
            this.f51637t.m11988g();
            contentValues.put("timed_out_event", C14116ju.m11600a((Parcelable) zzaaVar.zzg));
            contentValues.put("creation_timestamp", Long.valueOf(zzaaVar.zzd));
            this.f51637t.m11988g();
            contentValues.put("triggered_event", C14116ju.m11600a((Parcelable) zzaaVar.zzi));
            contentValues.put("triggered_timestamp", Long.valueOf(zzaaVar.zzc.zzc));
            contentValues.put("time_to_live", Long.valueOf(zzaaVar.zzj));
            this.f51637t.m11988g();
            contentValues.put("expired_event", C14116ju.m11600a((Parcelable) zzaaVar.zzk));
            try {
                if (m11783e().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                    return true;
                }
                this.f51637t.mo11661c().f51395c.m12091a("Failed to insert/update conditional user property (got -1)", C13947do.m12087a(str));
                return true;
            } catch (SQLiteException e) {
                this.f51637t.mo11661c().f51395c.m12090a("Error storing conditional user property", C13947do.m12087a(str), e);
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m11800a(String str, Long l, long j, C13402bw c13402bw) {
        mo11884S_();
        m11696v();
        C12045o.m19162a(c13402bw);
        C12045o.m19160a(str);
        C12045o.m19162a(l);
        byte[] m12886j = c13402bw.m12886j();
        this.f51637t.mo11661c().f51403k.m12090a("Saving complex main event, appId, data size", this.f51637t.m11987h().m12097a(str), Integer.valueOf(m12886j.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", m12886j);
        try {
            if (m11783e().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.f51637t.mo11661c().f51395c.m12091a("Failed to insert complex main event (got -1). appId", C13947do.m12087a(str));
            return false;
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12090a("Error storing complex main event. appId", C13947do.m12087a(str), e);
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
    /* JADX WARN: Type inference failed for: r0v255, types: [long] */
    /* JADX WARN: Type inference failed for: r0v269, types: [long] */
    /* JADX WARN: Type inference failed for: r0v278, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C13991fd m11791b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11791b(java.lang.String):com.google.android.gms.measurement.internal.fd");
    }

    /* renamed from: b */
    public final List<zzaa> m11789b(String str, String str2, String str3) {
        C12045o.m19160a(str);
        mo11884S_();
        m11696v();
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
        return m11795a(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: b */
    public final void m11792b() {
        m11696v();
        m11783e().beginTransaction();
    }

    /* renamed from: b */
    public final void m11790b(String str, String str2) {
        C12045o.m19160a(str);
        C12045o.m19160a(str2);
        mo11884S_();
        m11696v();
        try {
            m11783e().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12089a("Error deleting user property. appId", C13947do.m12087a(str), this.f51637t.m11987h().m12093c(str2), e);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: c */
    public final long m11787c(String str) {
        char c;
        SQLiteException e;
        ContentValues contentValues;
        C12045o.m19160a(str);
        C12045o.m19160a("first_open_count");
        mo11884S_();
        m11696v();
        SQLiteDatabase m11783e = m11783e();
        m11783e.beginTransaction();
        try {
            try {
                StringBuilder sb = new StringBuilder(48);
                sb.append("select ");
                sb.append("first_open_count");
                sb.append(" from app2 where app_id=?");
                ?? m11794a = m11794a(sb.toString(), new String[]{str}, -1L);
                c = m11794a;
                if (m11794a == -1) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
                    contentValues2.put("first_open_count", (Integer) 0);
                    contentValues2.put("previous_install_count", (Integer) 0);
                    if (m11783e.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                        this.f51637t.mo11661c().f51395c.m12090a("Failed to insert column (got -1). appId", C13947do.m12087a(str), "first_open_count");
                        m11783e.endTransaction();
                        return -1L;
                    }
                    c = 0;
                }
            } catch (SQLiteException e2) {
                e = e2;
                c = 0;
            }
            try {
                contentValues = new ContentValues();
                contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
                contentValues.put("first_open_count", Long.valueOf(1 + c));
            } catch (SQLiteException e3) {
                e = e3;
                this.f51637t.mo11661c().f51395c.m12089a("Error inserting column. appId", C13947do.m12087a(str), "first_open_count", e);
                m11783e.endTransaction();
                return c;
            }
            if (m11783e.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                this.f51637t.mo11661c().f51395c.m12090a("Failed to update column (got 0). appId", C13947do.m12087a(str), "first_open_count");
                m11783e.endTransaction();
                return -1L;
            }
            m11783e.setTransactionSuccessful();
            m11783e.endTransaction();
            return c;
        } catch (Throwable th) {
            m11783e.endTransaction();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0133  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C14114js m11786c(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11786c(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.js");
    }

    /* renamed from: d */
    public final long m11785d(String str) {
        C12045o.m19160a(str);
        return m11794a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x022c  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaa m11784d(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11784d(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzaa");
    }

    /* renamed from: e */
    public final int m11781e(String str, String str2) {
        C12045o.m19160a(str);
        C12045o.m19160a(str2);
        mo11884S_();
        m11696v();
        try {
            return m11783e().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12089a("Error deleting conditional property", C13947do.m12087a(str), this.f51637t.m11987h().m12093c(str2), e);
            return 0;
        }
    }

    /* renamed from: e */
    public final SQLiteDatabase m11783e() {
        mo11884S_();
        try {
            return this.f51855j.getWritableDatabase();
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0191  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m11782e(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11782e(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m11780f() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m11783e()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L45
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L67
            if (r0 == 0) goto L31
            r0 = r5
            r6 = r0
            r0 = r5
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L67
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L2f
            r0 = r5
            r0.close()
        L2f:
            r0 = r7
            return r0
        L31:
            r0 = r5
            if (r0 == 0) goto L3b
            r0 = r5
            r0.close()
        L3b:
            r0 = 0
            return r0
        L3d:
            r7 = move-exception
            goto L48
        L41:
            r5 = move-exception
            goto L68
        L45:
            r7 = move-exception
            r0 = 0
            r5 = r0
        L48:
            r0 = r5
            r6 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.es r0 = r0.f51637t     // Catch: java.lang.Throwable -> L67
            com.google.android.gms.measurement.internal.do r0 = r0.mo11661c()     // Catch: java.lang.Throwable -> L67
            com.google.android.gms.measurement.internal.dm r0 = r0.f51395c     // Catch: java.lang.Throwable -> L67
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.m12091a(r1, r2)     // Catch: java.lang.Throwable -> L67
            r0 = r5
            if (r0 == 0) goto L65
            r0 = r5
            r0.close()
        L65:
            r0 = 0
            return r0
        L67:
            r5 = move-exception
        L68:
            r0 = r6
            if (r0 == 0) goto L72
            r0 = r6
            r0.close()
        L72:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14068i.m11780f():java.lang.String");
    }

    /* renamed from: g */
    public final boolean m11779g() {
        return m11788b("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* renamed from: h */
    public final void m11778h() {
        int delete;
        mo11884S_();
        m11696v();
        if (m11765x()) {
            long m12053a = this.f51940f.f51968e.f51896a.m12053a();
            long mo19038b = this.f51637t.f51532j.mo19038b();
            if (Math.abs(mo19038b - m12053a) <= C13935dc.f51361x.m12117a(null).longValue()) {
                return;
            }
            this.f51940f.f51968e.f51896a.m12052a(mo19038b);
            mo11884S_();
            m11696v();
            if (!m11765x() || (delete = m11783e().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(this.f51637t.f51532j.mo19039a()), String.valueOf(C13959e.m12055i())})) <= 0) {
                return;
            }
            this.f51637t.mo11661c().f51403k.m12091a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
        }
    }

    /* renamed from: i */
    public final long m11777i() {
        return m11794a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    /* renamed from: j */
    public final long m11776j() {
        return m11794a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    /* renamed from: k */
    public final boolean m11775k() {
        return m11788b("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    /* renamed from: l */
    public final boolean m11774l() {
        return m11788b("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }
}
