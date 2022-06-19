package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7291a2;
import com.google.android.gms.internal.measurement.C7411ia;
import com.google.android.gms.internal.measurement.C7527r1;
import com.google.android.gms.internal.measurement.C7540s1;
import com.google.android.gms.internal.measurement.C7631z1;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i.class */
public final class C7740i extends AbstractC7702e9 {

    /* renamed from: d */
    private static final String[] f35319d = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: e */
    private static final String[] f35320e = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: f */
    private static final String[] f35321f = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};

    /* renamed from: g */
    private static final String[] f35322g = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: h */
    private static final String[] f35323h = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: i */
    private static final String[] f35324i = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: j */
    private static final String[] f35325j = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: k */
    private static final String[] f35326k = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: m */
    private final C7654a9 f35328m = new C7654a9(this.f35460a.mo6007x());

    /* renamed from: l */
    private final C7728h f35327l = new C7728h(this, this.f35460a.mo6030a(), "google_app_measurement.db");

    public C7740i(C7819o9 c7819o9) {
        super(c7819o9);
        this.f35460a.m6006y();
    }

    /* renamed from: J */
    static final void m6405J(ContentValues contentValues, String str, Object obj) {
        C6155o.m17022f("value");
        C6155o.m17018j(obj);
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

    /* renamed from: K */
    private final long m6404K(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m6399P().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                rawQuery.close();
                return j;
            } catch (SQLiteException e) {
                this.f35460a.mo6047C().m6195m().m6214c("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: L */
    private final long m6403L(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m6399P().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    rawQuery.close();
                    return j;
                }
                cursor2 = rawQuery;
                cursor = rawQuery;
                long j2 = rawQuery.getLong(0);
                rawQuery.close();
                return j2;
            } catch (SQLiteException e) {
                this.f35460a.mo6047C().m6195m().m6214c("Database error", str, e);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: I */
    public final void m6406I(String str, long j, long j2, C7808n9 c7808n9) {
        Cursor cursor;
        Throwable th;
        String str2;
        SQLiteException e;
        Cursor cursor2;
        String str3;
        Cursor cursor3;
        String[] strArr;
        String str4;
        String[] strArr2;
        C6155o.m17018j(c7808n9);
        mo6113f();
        m6455h();
        try {
            try {
                SQLiteDatabase m6399P = m6399P();
                String str5 = "";
                try {
                    if (TextUtils.isEmpty(null)) {
                        int i = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
                        String[] strArr3 = i != 0 ? new String[]{String.valueOf(j2), String.valueOf(j)} : new String[]{String.valueOf(j)};
                        if (i != 0) {
                            str5 = "rowid <= ? and ";
                        }
                        StringBuilder sb = new StringBuilder(str5.length() + 148);
                        sb.append("select app_id, metadata_fingerprint from raw_events where ");
                        sb.append(str5);
                        sb.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                        Cursor rawQuery = m6399P.rawQuery(sb.toString(), strArr3);
                        if (!rawQuery.moveToFirst()) {
                            rawQuery.close();
                            return;
                        }
                        str2 = rawQuery.getString(0);
                        String string = rawQuery.getString(1);
                        rawQuery.close();
                        cursor3 = rawQuery;
                        str3 = string;
                    } else {
                        int i2 = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
                        if (i2 != 0) {
                            strArr2 = new String[2];
                            strArr2[0] = null;
                            strArr2[1] = String.valueOf(j2);
                        } else {
                            strArr2 = new String[]{null};
                        }
                        if (i2 != 0) {
                            str5 = " and rowid <= ?";
                        }
                        StringBuilder sb2 = new StringBuilder(str5.length() + 84);
                        sb2.append("select metadata_fingerprint from raw_events where app_id = ?");
                        sb2.append(str5);
                        sb2.append(" order by rowid limit 1;");
                        Cursor rawQuery2 = m6399P.rawQuery(sb2.toString(), strArr2);
                        if (!rawQuery2.moveToFirst()) {
                            rawQuery2.close();
                            return;
                        }
                        String string2 = rawQuery2.getString(0);
                        rawQuery2.close();
                        str3 = string2;
                        cursor3 = rawQuery2;
                        str2 = null;
                    }
                    try {
                        Cursor query = m6399P.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str2, str3}, null, null, "rowid", "2");
                        try {
                            if (!query.moveToFirst()) {
                                this.f35460a.mo6047C().m6195m().m6215b("Raw event metadata record is missing. appId", C7813o3.m6186v(str2));
                                query.close();
                                return;
                            }
                            try {
                                try {
                                    C7291a2 m6886n = ((C7631z1) C7841q9.m6073I(C7291a2.m7773K0(), query.getBlob(0))).m6886n();
                                    if (query.moveToNext()) {
                                        this.f35460a.mo6047C().m6192p().m6215b("Get multiple raw event metadata records, expected one. appId", C7813o3.m6186v(str2));
                                    }
                                    query.close();
                                    C6155o.m17018j(m6886n);
                                    c7808n9.f35494a = m6886n;
                                    if (j2 != -1) {
                                        str4 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr = new String[]{str2, str3, String.valueOf(j2)};
                                    } else {
                                        str4 = "app_id = ? and metadata_fingerprint = ?";
                                        strArr = new String[]{str2, str3};
                                    }
                                    Cursor query2 = m6399P.query("raw_events", new String[]{"rowid", ShortCut.NAME, "timestamp", "data"}, str4, strArr, null, null, "rowid", null);
                                    String str6 = str2;
                                    if (!query2.moveToFirst()) {
                                        this.f35460a.mo6047C().m6192p().m6215b("Raw event data disappeared while in transaction. appId", C7813o3.m6186v(str2));
                                        query2.close();
                                        return;
                                    }
                                    do {
                                        String str7 = str2;
                                        long j3 = query2.getLong(0);
                                        String str8 = str2;
                                        byte[] blob = query2.getBlob(3);
                                        String str9 = str2;
                                        try {
                                            C7527r1 c7527r1 = (C7527r1) C7841q9.m6073I(C7540s1.m6944K(), blob);
                                            String str10 = str2;
                                            c7527r1.m6977G(query2.getString(1));
                                            String str11 = str2;
                                            c7527r1.m6974J(query2.getLong(2));
                                            String str12 = str2;
                                            if (!c7808n9.m6206a(j3, c7527r1.m6886n())) {
                                                query2.close();
                                                return;
                                            }
                                        } catch (IOException e2) {
                                            this.f35460a.mo6047C().m6195m().m6214c("Data loss. Failed to merge raw event. appId", C7813o3.m6186v(str2), e2);
                                        }
                                        String str13 = str2;
                                    } while (query2.moveToNext());
                                    query2.close();
                                } catch (IOException e3) {
                                    this.f35460a.mo6047C().m6195m().m6214c("Data loss. Failed to merge raw event metadata. appId", C7813o3.m6186v(str2), e3);
                                    query.close();
                                }
                            } catch (SQLiteException e4) {
                                e = e4;
                                cursor2 = query;
                                this.f35460a.mo6047C().m6195m().m6214c("Data loss. Error selecting raw event. appId", C7813o3.m6186v(str2), e);
                                if (cursor2 == null) {
                                    return;
                                }
                                cursor2.close();
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = query;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e5) {
                            e = e5;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (SQLiteException e6) {
                        e = e6;
                        cursor2 = cursor3;
                    } catch (Throwable th4) {
                        Cursor cursor4 = cursor3;
                        th = th4;
                        cursor = cursor4;
                    }
                } catch (SQLiteException e7) {
                    e = e7;
                    str2 = null;
                    cursor2 = null;
                }
            } catch (Throwable th5) {
                cursor = str;
                th = th5;
            }
        } catch (SQLiteException e8) {
            e = e8;
            cursor2 = null;
            str2 = null;
        } catch (Throwable th6) {
            th = th6;
            cursor = null;
        }
    }

    /* renamed from: M */
    public final void m6402M() {
        m6455h();
        m6399P().beginTransaction();
    }

    /* renamed from: N */
    public final void m6401N() {
        m6455h();
        m6399P().setTransactionSuccessful();
    }

    /* renamed from: O */
    public final void m6400O() {
        m6455h();
        m6399P().endTransaction();
    }

    /* renamed from: P */
    public final SQLiteDatabase m6399P() {
        mo6113f();
        try {
            return this.f35327l.getWritableDatabase();
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x021a  */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C7809o m6398Q(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6398Q(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.o");
    }

    /* renamed from: R */
    public final void m6397R(C7809o c7809o) {
        C6155o.m17018j(c7809o);
        mo6113f();
        m6455h();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c7809o.f35499a);
        contentValues.put(ShortCut.NAME, c7809o.f35500b);
        contentValues.put("lifetime_count", Long.valueOf(c7809o.f35501c));
        contentValues.put("current_bundle_count", Long.valueOf(c7809o.f35502d));
        contentValues.put("last_fire_timestamp", Long.valueOf(c7809o.f35504f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c7809o.f35505g));
        contentValues.put("last_bundled_day", c7809o.f35506h);
        contentValues.put("last_sampled_complex_event_id", c7809o.f35507i);
        contentValues.put("last_sampling_rate", c7809o.f35508j);
        contentValues.put("current_session_count", Long.valueOf(c7809o.f35503e));
        Boolean bool = c7809o.f35509k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m6399P().insertWithOnConflict("events", null, contentValues, 5) != -1) {
                return;
            }
            this.f35460a.mo6047C().m6195m().m6215b("Failed to insert/update event aggregates (got -1). appId", C7813o3.m6186v(c7809o.f35499a));
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6214c("Error storing event aggregates. appId", C7813o3.m6186v(c7809o.f35499a), e);
        }
    }

    /* renamed from: S */
    public final void m6396S(String str, String str2) {
        C6155o.m17022f(str);
        C6155o.m17022f(str2);
        mo6113f();
        m6455h();
        try {
            m6399P().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6213d("Error deleting user property. appId", C7813o3.m6186v(str), this.f35460a.m6042H().m6343p(str2), e);
        }
    }

    /* renamed from: T */
    public final boolean m6395T(C7863s9 c7863s9) {
        C6155o.m17018j(c7863s9);
        mo6113f();
        m6455h();
        if (m6394U(c7863s9.f35681a, c7863s9.f35683c) == null) {
            if (C7885u9.m5965j0(c7863s9.f35683c)) {
                if (m6404K("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{c7863s9.f35681a}) >= this.f35460a.m6006y().m6473s(c7863s9.f35681a, C7672c3.f35042H, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(c7863s9.f35683c)) {
                long m6404K = m6404K("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{c7863s9.f35681a, c7863s9.f35682b});
                this.f35460a.m6006y();
                if (m6404K >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c7863s9.f35681a);
        contentValues.put("origin", c7863s9.f35682b);
        contentValues.put(ShortCut.NAME, c7863s9.f35683c);
        contentValues.put("set_timestamp", Long.valueOf(c7863s9.f35684d));
        m6405J(contentValues, "value", c7863s9.f35685e);
        try {
            if (m6399P().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            this.f35460a.mo6047C().m6195m().m6215b("Failed to insert/update user property (got -1). appId", C7813o3.m6186v(c7863s9.f35681a));
            return true;
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6214c("Error storing user property. appId", C7813o3.m6186v(c7863s9.f35681a), e);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0123  */
    /* renamed from: U */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C7863s9 m6394U(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6394U(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.s9");
    }

    /* renamed from: V */
    public final List<C7863s9> m6393V(String str) {
        C6155o.m17022f(str);
        mo6113f();
        m6455h();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase m6399P = m6399P();
                this.f35460a.m6006y();
                Cursor query = m6399P.query("user_attributes", new String[]{ShortCut.NAME, "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!query.moveToFirst()) {
                    query.close();
                    return arrayList;
                }
                do {
                    cursor = query;
                    cursor2 = query;
                    String string = query.getString(0);
                    String string2 = query.getString(1);
                    String str2 = string2;
                    if (string2 == null) {
                        str2 = "";
                    }
                    long j = query.getLong(2);
                    Object m6376m = m6376m(query, 3);
                    if (m6376m == null) {
                        this.f35460a.mo6047C().m6195m().m6215b("Read invalid user property value, ignoring it. appId", C7813o3.m6186v(str));
                    } else {
                        arrayList.add(new C7863s9(str, str2, string, j, m6376m));
                    }
                } while (query.moveToNext());
                query.close();
                return arrayList;
            } catch (SQLiteException e) {
                this.f35460a.mo6047C().m6195m().m6214c("Error querying user properties. appId", C7813o3.m6186v(str), e);
                Cursor cursor3 = cursor2;
                List<C7863s9> emptyList = Collections.emptyList();
                if (cursor2 != null) {
                    cursor2.close();
                }
                return emptyList;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x01c6, code lost:
        r0 = r10.f35460a.mo6047C().m6195m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01dc, code lost:
        r10.f35460a.m6006y();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01e6, code lost:
        r16 = r0;
        r23 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01ef, code lost:
        r0.m6215b("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0315  */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.C7863s9> m6392W(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6392W(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* renamed from: X */
    public final boolean m6391X(zzaa zzaaVar) {
        C6155o.m17018j(zzaaVar);
        mo6113f();
        m6455h();
        String str = zzaaVar.f35860d;
        C6155o.m17018j(str);
        if (m6394U(str, zzaaVar.f35862f.f35877e) == null) {
            long m6404K = m6404K("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.f35460a.m6006y();
            if (m6404K >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzaaVar.f35861e);
        contentValues.put(ShortCut.NAME, zzaaVar.f35862f.f35877e);
        m6405J(contentValues, "value", C6155o.m17018j(zzaaVar.f35862f.m5862k0()));
        contentValues.put("active", Boolean.valueOf(zzaaVar.f35864h));
        contentValues.put("trigger_event_name", zzaaVar.f35865i);
        contentValues.put("trigger_timeout", Long.valueOf(zzaaVar.f35867k));
        contentValues.put("timed_out_event", this.f35460a.m6043G().m5990L(zzaaVar.f35866j));
        contentValues.put("creation_timestamp", Long.valueOf(zzaaVar.f35863g));
        contentValues.put("triggered_event", this.f35460a.m6043G().m5990L(zzaaVar.f35868l));
        contentValues.put("triggered_timestamp", Long.valueOf(zzaaVar.f35862f.f35878f));
        contentValues.put("time_to_live", Long.valueOf(zzaaVar.f35869m));
        contentValues.put("expired_event", this.f35460a.m6043G().m5990L(zzaaVar.f35870n));
        try {
            if (m6399P().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            this.f35460a.mo6047C().m6195m().m6215b("Failed to insert/update conditional user property (got -1)", C7813o3.m6186v(str));
            return true;
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6214c("Error storing conditional user property", C7813o3.m6186v(str), e);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0234  */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaa m6390Y(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6390Y(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzaa");
    }

    /* renamed from: Z */
    public final int m6389Z(String str, String str2) {
        C6155o.m17022f(str);
        C6155o.m17022f(str2);
        mo6113f();
        m6455h();
        try {
            return m6399P().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6213d("Error deleting conditional property", C7813o3.m6186v(str), this.f35460a.m6042H().m6343p(str2), e);
            return 0;
        }
    }

    /* renamed from: a0 */
    public final List<zzaa> m6388a0(String str, String str2, String str3) {
        C6155o.m17022f(str);
        mo6113f();
        m6455h();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat(BasicSQLHelper.ALL));
            sb.append(" and name glob ?");
        }
        return m6387b0(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e0, code lost:
        r0 = r16.f35460a.mo6047C().m6195m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00f1, code lost:
        r16.f35460a.m6006y();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00fa, code lost:
        r22 = r0;
        r23 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ff, code lost:
        r0.m6215b("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzaa> m6387b0(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6387b0(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02d9  */
    /* JADX WARN: Type inference failed for: r0v129, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C7686d5 m6386c0(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6386c0(java.lang.String):com.google.android.gms.measurement.internal.d5");
    }

    /* renamed from: d0 */
    public final void m6385d0(C7686d5 c7686d5) {
        C6155o.m17018j(c7686d5);
        mo6113f();
        m6455h();
        String m6543N = c7686d5.m6543N();
        C6155o.m17018j(m6543N);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", m6543N);
        contentValues.put("app_instance_id", c7686d5.m6542O());
        contentValues.put("gmp_app_id", c7686d5.m6540Q());
        contentValues.put("resettable_device_id_hash", c7686d5.m6534W());
        contentValues.put("last_bundle_index", Long.valueOf(c7686d5.m6514i()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(c7686d5.m6529a0()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(c7686d5.m6525c0()));
        contentValues.put("app_version", c7686d5.m6521e0());
        contentValues.put("app_store", c7686d5.m6513i0());
        contentValues.put("gmp_version", Long.valueOf(c7686d5.m6509k0()));
        contentValues.put("dev_cert_hash", Long.valueOf(c7686d5.m6528b()));
        contentValues.put("measurement_enabled", Boolean.valueOf(c7686d5.m6520f()));
        contentValues.put("day", Long.valueOf(c7686d5.m6505o()));
        contentValues.put("daily_public_events_count", Long.valueOf(c7686d5.m6503q()));
        contentValues.put("daily_events_count", Long.valueOf(c7686d5.m6501s()));
        contentValues.put("daily_conversions_count", Long.valueOf(c7686d5.m6499u()));
        contentValues.put("config_fetched_time", Long.valueOf(c7686d5.m6512j()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(c7686d5.m6508l()));
        contentValues.put("app_version_int", Long.valueOf(c7686d5.m6517g0()));
        contentValues.put("firebase_instance_id", c7686d5.m6532Y());
        contentValues.put("daily_error_events_count", Long.valueOf(c7686d5.m6495y()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(c7686d5.m6497w()));
        contentValues.put("health_monitor_sample", c7686d5.m6555B());
        contentValues.put("android_id", Long.valueOf(c7686d5.m6552E()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(c7686d5.m6550G()));
        contentValues.put("admob_app_id", c7686d5.m6538S());
        contentValues.put("dynamite_version", Long.valueOf(c7686d5.m6524d()));
        List<String> m6546K = c7686d5.m6546K();
        if (m6546K != null) {
            if (m6546K.size() == 0) {
                this.f35460a.mo6047C().m6192p().m6215b("Safelisted events should not be an empty list. appId", m6543N);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", m6546K));
            }
        }
        C7411ia.m7293a();
        if (this.f35460a.m6006y().m6471u(m6543N, C7672c3.f35079i0)) {
            contentValues.put("ga_app_id", c7686d5.m6536U());
        }
        try {
            SQLiteDatabase m6399P = m6399P();
            if (m6399P.update("apps", contentValues, "app_id = ?", new String[]{m6543N}) != 0 || m6399P.insertWithOnConflict("apps", null, contentValues, 5) != -1) {
                return;
            }
            this.f35460a.mo6047C().m6195m().m6215b("Failed to insert/update app (got -1). appId", C7813o3.m6186v(m6543N));
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6214c("Error storing app. appId", C7813o3.m6186v(m6543N), e);
        }
    }

    /* renamed from: e0 */
    public final C7716g m6384e0(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return m6383f0(j, str, 1L, false, false, z3, false, z5);
    }

    /* renamed from: f0 */
    public final C7716g m6383f0(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        C6155o.m17022f(str);
        mo6113f();
        m6455h();
        C7716g c7716g = new C7716g();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase m6399P = m6399P();
                Cursor query = m6399P.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    this.f35460a.mo6047C().m6192p().m6215b("Not updating daily counts, app is not known. appId", C7813o3.m6186v(str));
                    query.close();
                    return c7716g;
                }
                if (query.getLong(0) == j) {
                    c7716g.f35266b = query.getLong(1);
                    c7716g.f35265a = query.getLong(2);
                    c7716g.f35267c = query.getLong(3);
                    c7716g.f35268d = query.getLong(4);
                    c7716g.f35269e = query.getLong(5);
                }
                if (z) {
                    c7716g.f35266b += j2;
                }
                if (z2) {
                    c7716g.f35265a += j2;
                }
                if (z3) {
                    c7716g.f35267c += j2;
                }
                if (z4) {
                    c7716g.f35268d += j2;
                }
                if (z5) {
                    c7716g.f35269e += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(c7716g.f35265a));
                contentValues.put("daily_events_count", Long.valueOf(c7716g.f35266b));
                contentValues.put("daily_conversions_count", Long.valueOf(c7716g.f35267c));
                contentValues.put("daily_error_events_count", Long.valueOf(c7716g.f35268d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(c7716g.f35269e));
                m6399P.update("apps", contentValues, "app_id=?", new String[]{str});
                query.close();
                return c7716g;
            } catch (SQLiteException e) {
                this.f35460a.mo6047C().m6195m().m6214c("Error updating daily counts. appId", C7813o3.m6186v(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return c7716g;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* renamed from: g0 */
    public final void m6382g0(String str, byte[] bArr, String str2) {
        C6155o.m17022f(str);
        mo6113f();
        m6455h();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (m6399P().update("apps", contentValues, "app_id = ?", new String[]{str}) != 0) {
                return;
            }
            this.f35460a.mo6047C().m6195m().m6215b("Failed to update remote config (got 0). appId", C7813o3.m6186v(str));
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6214c("Error storing remote config. appId", C7813o3.m6186v(str), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x005c, code lost:
        if (r0 > (com.google.android.gms.measurement.internal.C7692e.m6485g() + r0)) goto L6;
     */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6381h0(com.google.android.gms.internal.measurement.C7291a2 r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6381h0(com.google.android.gms.internal.measurement.a2, boolean):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7702e9
    /* renamed from: i */
    protected final boolean mo6003i() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.Cursor] */
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m6380i0() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m6399P()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: java.lang.Throwable -> L39 android.database.sqlite.SQLiteException -> L3f
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L35 java.lang.Throwable -> L61
            if (r0 == 0) goto L2d
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: android.database.sqlite.SQLiteException -> L35 java.lang.Throwable -> L61
            r6 = r0
            r0 = r7
            r0.close()
            r0 = r6
            return r0
        L2d:
            r0 = r7
            r0.close()
            r0 = 0
            return r0
        L35:
            r6 = move-exception
            goto L42
        L39:
            r5 = move-exception
            r0 = r6
            r7 = r0
            goto L66
        L3f:
            r6 = move-exception
            r0 = 0
            r7 = r0
        L42:
            r0 = r7
            r5 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.s4 r0 = r0.f35460a     // Catch: java.lang.Throwable -> L61
            com.google.android.gms.measurement.internal.o3 r0 = r0.mo6047C()     // Catch: java.lang.Throwable -> L61
            com.google.android.gms.measurement.internal.m3 r0 = r0.m6195m()     // Catch: java.lang.Throwable -> L61
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r6
            r0.m6215b(r1, r2)     // Catch: java.lang.Throwable -> L61
            r0 = r7
            if (r0 == 0) goto L5f
            r0 = r7
            r0.close()
        L5f:
            r0 = 0
            return r0
        L61:
            r6 = move-exception
            r0 = r5
            r7 = r0
            r0 = r6
            r5 = r0
        L66:
            r0 = r7
            if (r0 == 0) goto L70
            r0 = r7
            r0.close()
        L70:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6380i0():java.lang.String");
    }

    /* renamed from: j0 */
    public final boolean m6379j0() {
        return m6404K("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    /* renamed from: k */
    public final void m6378k() {
        mo6113f();
        m6455h();
        if (m6366w()) {
            long m6588a = this.f35186b.m6153b0().f35437g.m6588a();
            long mo16806b = this.f35460a.mo6007x().mo16806b();
            long abs = Math.abs(mo16806b - m6588a);
            this.f35460a.m6006y();
            if (abs <= C7672c3.f35112z.m6589b(null).longValue()) {
                return;
            }
            this.f35186b.m6153b0().f35437g.m6587b(mo16806b);
            mo6113f();
            m6455h();
            if (!m6366w()) {
                return;
            }
            SQLiteDatabase m6399P = m6399P();
            long mo16807a = this.f35460a.mo6007x().mo16807a();
            this.f35460a.m6006y();
            int delete = m6399P.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(mo16807a), String.valueOf(C7692e.m6485g())});
            if (delete <= 0) {
                return;
            }
            this.f35460a.mo6047C().m6187u().m6215b("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
        }
    }

    /* renamed from: l */
    public final void m6377l(List<Long> list) {
        mo6113f();
        m6455h();
        C6155o.m17018j(list);
        C6155o.m17016l(list.size());
        if (!m6366w()) {
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
        if (m6404K(sb3.toString(), null) > 0) {
            this.f35460a.mo6047C().m6192p().m6216a("The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            SQLiteDatabase m6399P = m6399P();
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
            sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
            sb4.append(sb2);
            sb4.append(" AND (retry_count IS NULL OR retry_count < ");
            sb4.append(Integer.MAX_VALUE);
            sb4.append(")");
            m6399P.execSQL(sb4.toString());
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6215b("Error incrementing retry count. error", e);
        }
    }

    /* renamed from: m */
    final Object m6376m(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            this.f35460a.mo6047C().m6195m().m6216a("Loaded invalid null value from database");
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
                this.f35460a.mo6047C().m6195m().m6215b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            this.f35460a.mo6047C().m6195m().m6216a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    /* renamed from: n */
    public final long m6375n() {
        return m6403L("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: o */
    public final long m6374o(String str, String str2) {
        char c;
        SQLiteException e;
        ContentValues contentValues;
        C6155o.m17022f(str);
        C6155o.m17022f("first_open_count");
        mo6113f();
        m6455h();
        SQLiteDatabase m6399P = m6399P();
        m6399P.beginTransaction();
        try {
            try {
                StringBuilder sb = new StringBuilder(48);
                sb.append("select ");
                sb.append("first_open_count");
                sb.append(" from app2 where app_id=?");
                ?? m6403L = m6403L(sb.toString(), new String[]{str}, -1L);
                c = m6403L;
                if (m6403L == -1) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put("first_open_count", (Integer) 0);
                    contentValues2.put("previous_install_count", (Integer) 0);
                    if (m6399P.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                        this.f35460a.mo6047C().m6195m().m6214c("Failed to insert column (got -1). appId", C7813o3.m6186v(str), "first_open_count");
                        m6399P.endTransaction();
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
                contentValues.put("app_id", str);
                contentValues.put("first_open_count", Long.valueOf(1 + c));
            } catch (SQLiteException e3) {
                e = e3;
                this.f35460a.mo6047C().m6195m().m6213d("Error inserting column. appId", C7813o3.m6186v(str), "first_open_count", e);
                m6399P.endTransaction();
                return c;
            }
            if (m6399P.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                this.f35460a.mo6047C().m6195m().m6214c("Failed to update column (got 0). appId", C7813o3.m6186v(str), "first_open_count");
                m6399P.endTransaction();
                return -1L;
            }
            m6399P.setTransactionSuccessful();
            m6399P.endTransaction();
            return c;
        } catch (Throwable th) {
            m6399P.endTransaction();
            throw th;
        }
    }

    /* renamed from: p */
    public final long m6373p() {
        return m6403L("select max(timestamp) from raw_events", null, 0L);
    }

    /* renamed from: q */
    public final boolean m6372q() {
        return m6404K("select count(1) > 0 from raw_events", null) != 0;
    }

    /* renamed from: r */
    public final boolean m6371r() {
        return m6404K("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    /* renamed from: s */
    public final long m6370s(String str) {
        C6155o.m17022f(str);
        return m6403L("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* renamed from: t */
    public final boolean m6369t(String str, Long l, long j, C7540s1 c7540s1) {
        mo6113f();
        m6455h();
        C6155o.m17018j(c7540s1);
        C6155o.m17022f(str);
        C6155o.m17018j(l);
        byte[] m7045i = c7540s1.m7045i();
        this.f35460a.mo6047C().m6187u().m6214c("Saving complex main event, appId, data size", this.f35460a.m6042H().m6345n(str), Integer.valueOf(m7045i.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", m7045i);
        try {
            if (m6399P().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.f35460a.mo6047C().m6195m().m6215b("Failed to insert complex main event (got -1). appId", C7813o3.m6186v(str));
            return false;
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6214c("Error storing complex main event. appId", C7813o3.m6186v(str), e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0174  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m6368u(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6368u(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x04d3, code lost:
        r0.put("filter_id", r16);
        r0.put("property_name", r0.m6786C());
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x04ef, code lost:
        if (r0.m6782G() == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x04f2, code lost:
        r16 = java.lang.Boolean.valueOf(r0.m6781H());
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x04ff, code lost:
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0502, code lost:
        r0.put("session_scoped", r16);
        r0.put("data", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0527, code lost:
        if (m6399P().insertWithOnConflict("property_filters", null, r0, 5) != (-1)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x052a, code lost:
        r8.f35460a.mo6047C().m6195m().m6215b("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.C7813o3.m6186v(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0544, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0546, code lost:
        r8.f35460a.mo6047C().m6195m().m6214c("Error storing property filter. appId", com.google.android.gms.measurement.internal.C7813o3.m6186v(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x055d, code lost:
        m6455h();
        mo6113f();
        com.google.android.gms.common.internal.C6155o.m17022f(r9);
        r0 = m6399P();
        r0.delete("property_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
        r0.delete("event_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0284, code lost:
        r0 = r0.m7177C().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0297, code lost:
        if (r0.hasNext() == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02a7, code lost:
        if (r0.next().m6788A() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02aa, code lost:
        r8.f35460a.mo6047C().m6192p().m6214c("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.C7813o3.m6186v(r9), java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02c6, code lost:
        r0 = r0.m7174F().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02dd, code lost:
        if (r0.hasNext() == false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02e0, code lost:
        r0 = r0.next();
        m6455h();
        mo6113f();
        com.google.android.gms.common.internal.C6155o.m17022f(r9);
        com.google.android.gms.common.internal.C6155o.m17018j(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0307, code lost:
        if (android.text.TextUtils.isEmpty(r0.m7061C()) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x030a, code lost:
        r0 = r8.f35460a.mo6047C().m6192p();
        r0 = com.google.android.gms.measurement.internal.C7813o3.m6186v(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0321, code lost:
        if (r0.m7063A() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0324, code lost:
        r14 = java.lang.Integer.valueOf(r0.m7062B());
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0331, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0334, code lost:
        r0.m6213d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x034b, code lost:
        r0 = r0.m7045i();
        r0 = new android.content.ContentValues();
        r0.put("app_id", r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0377, code lost:
        if (r0.m7063A() == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x037a, code lost:
        r14 = java.lang.Integer.valueOf(r0.m7062B());
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0387, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x038a, code lost:
        r0.put("filter_id", r14);
        r0.put("event_name", r0.m7061C());
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x03a6, code lost:
        if (r0.m7053K() == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x03a9, code lost:
        r14 = java.lang.Boolean.valueOf(r0.m7052L());
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x03b6, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x03b9, code lost:
        r0.put("session_scoped", r14);
        r0.put("data", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03de, code lost:
        if (m6399P().insertWithOnConflict("event_filters", null, r0, 5) != (-1)) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03e1, code lost:
        r8.f35460a.mo6047C().m6195m().m6215b("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.C7813o3.m6186v(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03f8, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03fa, code lost:
        r8.f35460a.mo6047C().m6195m().m6214c("Error storing event filter. appId", com.google.android.gms.measurement.internal.C7813o3.m6186v(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0413, code lost:
        r0 = r0.m7177C().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0426, code lost:
        if (r0.hasNext() == false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0429, code lost:
        r0 = r0.next();
        m6455h();
        mo6113f();
        com.google.android.gms.common.internal.C6155o.m17022f(r9);
        com.google.android.gms.common.internal.C6155o.m17018j(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0450, code lost:
        if (android.text.TextUtils.isEmpty(r0.m6786C()) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0453, code lost:
        r0 = r8.f35460a.mo6047C().m6192p();
        r0 = com.google.android.gms.measurement.internal.C7813o3.m6186v(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x046a, code lost:
        if (r0.m6788A() == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x046d, code lost:
        r14 = java.lang.Integer.valueOf(r0.m6787B());
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x047a, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x047d, code lost:
        r0.m6213d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0494, code lost:
        r0 = r0.m7045i();
        r0 = new android.content.ContentValues();
        r0.put("app_id", r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x04c0, code lost:
        if (r0.m6788A() == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x04c3, code lost:
        r16 = java.lang.Integer.valueOf(r0.m6787B());
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x04d0, code lost:
        r16 = null;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6367v(java.lang.String r9, java.util.List<com.google.android.gms.internal.measurement.C7457m0> r10) {
        /*
            Method dump skipped, instructions count: 1846
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7740i.m6367v(java.lang.String, java.util.List):void");
    }

    /* renamed from: w */
    protected final boolean m6366w() {
        Context mo6030a = this.f35460a.mo6030a();
        this.f35460a.m6006y();
        return mo6030a.getDatabasePath("google_app_measurement.db").exists();
    }
}
