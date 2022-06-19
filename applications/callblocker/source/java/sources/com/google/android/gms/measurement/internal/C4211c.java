package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.C3748ag;
import com.google.android.gms.internal.measurement.C3776ao;
import com.google.android.gms.internal.measurement.C4066jy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c.class */
public final class C4211c extends AbstractC4412jl {

    /* renamed from: b */
    private static final String[] f18633b = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: c */
    private static final String[] f18634c = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: d */
    private static final String[] f18635d = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"};

    /* renamed from: e */
    private static final String[] f18636e = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: f */
    private static final String[] f18637f = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: g */
    private static final String[] f18638g = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: h */
    private static final String[] f18639h = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: i */
    private static final String[] f18640i = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: k */
    private final C4407jg f18642k = new C4407jg(mo4035q());

    /* renamed from: j */
    private final C4346h f18641j = new C4346h(this, mo4034r(), "google_app_measurement.db");

    public C4211c(C4415jo c4415jo) {
        super(c4415jo);
    }

    /* renamed from: M */
    private final boolean m4766M() {
        return mo4034r().getDatabasePath("google_app_measurement.db").exists();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    private final long m4742a(String str, String[] strArr, long j) {
        char c;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m4729e().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    cursor2 = rawQuery;
                    cursor = rawQuery;
                    ?? r0 = rawQuery.getLong(0);
                    c = r0;
                    if (rawQuery != null) {
                        rawQuery.close();
                        c = r0;
                    }
                } else {
                    c = j;
                    if (rawQuery != null) {
                        rawQuery.close();
                        c = j;
                    }
                }
                return c;
            } catch (SQLiteException e) {
                mo4030v().m4655x_().m4652a("Database error", str, e);
                Cursor cursor3 = cursor2;
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    private final Object m4761a(Cursor cursor, int i) {
        Object obj;
        int type = cursor.getType(i);
        switch (type) {
            case 0:
                mo4030v().m4655x_().m4654a("Loaded invalid null value from database");
                obj = null;
                break;
            case 1:
                obj = Long.valueOf(cursor.getLong(i));
                break;
            case 2:
                obj = Double.valueOf(cursor.getDouble(i));
                break;
            case 3:
                obj = cursor.getString(i);
                break;
            case 4:
                mo4030v().m4655x_().m4654a("Loaded invalid blob type value, ignoring it");
                obj = null;
                break;
            default:
                mo4030v().m4655x_().m4653a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                obj = null;
                break;
        }
        return obj;
    }

    /* renamed from: a */
    private static void m4762a(ContentValues contentValues, String str, Object obj) {
        C2662s.m13979a(str);
        C2662s.m13981a(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("Invalid value type");
        } else {
            contentValues.put(str, (Double) obj);
        }
    }

    /* renamed from: a */
    private final boolean m4750a(String str, int i, C3748ag.C3751b c3751b) {
        boolean z;
        m4246K();
        mo4037o();
        C2662s.m13979a(str);
        C2662s.m13981a(c3751b);
        if (TextUtils.isEmpty(c3751b.m6475c())) {
            C4266ea m4662e = mo4030v().m4662e();
            Object m4669a = C4263dy.m4669a(str);
            Integer num = null;
            if (c3751b.m6482a()) {
                num = Integer.valueOf(c3751b.m6476b());
            }
            m4662e.m4651a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", m4669a, Integer.valueOf(i), String.valueOf(num));
            z = false;
        } else {
            byte[] m5839ai = c3751b.m5839ai();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", c3751b.m6482a() ? Integer.valueOf(c3751b.m6476b()) : null);
            contentValues.put("event_name", c3751b.m6475c());
            Boolean bool = null;
            if (c3751b.m6468j()) {
                bool = Boolean.valueOf(c3751b.m6467k());
            }
            contentValues.put("session_scoped", bool);
            contentValues.put("data", m5839ai);
            try {
                if (m4729e().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                    mo4030v().m4655x_().m4653a("Failed to insert event filter (got -1). appId", C4263dy.m4669a(str));
                }
                z = true;
            } catch (SQLiteException e) {
                mo4030v().m4655x_().m4652a("Error storing event filter. appId", C4263dy.m4669a(str), e);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    private final boolean m4749a(String str, int i, C3748ag.C3758e c3758e) {
        boolean z;
        m4246K();
        mo4037o();
        C2662s.m13979a(str);
        C2662s.m13981a(c3758e);
        if (TextUtils.isEmpty(c3758e.m6428c())) {
            C4266ea m4662e = mo4030v().m4662e();
            Object m4669a = C4263dy.m4669a(str);
            Integer num = null;
            if (c3758e.m6432a()) {
                num = Integer.valueOf(c3758e.m6429b());
            }
            m4662e.m4651a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", m4669a, Integer.valueOf(i), String.valueOf(num));
            z = false;
        } else {
            byte[] m5839ai = c3758e.m5839ai();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", c3758e.m6432a() ? Integer.valueOf(c3758e.m6429b()) : null);
            contentValues.put("property_name", c3758e.m6428c());
            Boolean bool = null;
            if (c3758e.m6424g()) {
                bool = Boolean.valueOf(c3758e.m6423h());
            }
            contentValues.put("session_scoped", bool);
            contentValues.put("data", m5839ai);
            try {
                if (m4729e().insertWithOnConflict("property_filters", null, contentValues, 5) == -1) {
                    mo4030v().m4655x_().m4653a("Failed to insert property filter (got -1). appId", C4263dy.m4669a(str));
                    z = false;
                } else {
                    z = true;
                }
            } catch (SQLiteException e) {
                mo4030v().m4655x_().m4652a("Error storing property filter. appId", C4263dy.m4669a(str), e);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    private final long m4735b(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m4729e().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                mo4030v().m4655x_().m4652a("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: b */
    private final boolean m4736b(String str, List<Integer> list) {
        boolean z;
        C2662s.m13979a(str);
        m4246K();
        mo4037o();
        SQLiteDatabase m4729e = m4729e();
        try {
            long m4735b = m4735b("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, mo4027x().m4796b(str, C4452t.f19395E)));
            if (m4735b <= max) {
                z = false;
            } else {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (true) {
                    if (i < list.size()) {
                        Integer num = list.get(i);
                        z = false;
                        if (num == null) {
                            break;
                        }
                        z = false;
                        if (!(num instanceof Integer)) {
                            break;
                        }
                        arrayList.add(Integer.toString(num.intValue()));
                        i++;
                    } else {
                        String join = TextUtils.join(",", arrayList);
                        String sb = new StringBuilder(String.valueOf(join).length() + 2).append("(").append(join).append(")").toString();
                        z = false;
                        if (m4729e.delete("audience_filter_values", new StringBuilder(String.valueOf(sb).length() + 140).append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ").append(sb).append(" order by rowid desc limit -1 offset ?)").toString(), new String[]{str, Integer.toString(max)}) > 0) {
                            z = true;
                        }
                    }
                }
            }
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4652a("Database error querying filters. appId", C4263dy.m4669a(str), e);
            z = false;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: A */
    public final long m4775A() {
        char c;
        char c2 = null;
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m4729e().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                c2 = rawQuery;
                if (!rawQuery.moveToFirst()) {
                    c = 65535;
                    if (rawQuery != null) {
                        rawQuery.close();
                        c = 65535;
                    }
                } else {
                    cursor = rawQuery;
                    c2 = rawQuery;
                    ?? r0 = rawQuery.getLong(0);
                    c = r0;
                    if (rawQuery != null) {
                        rawQuery.close();
                        c = r0;
                    }
                }
            } catch (SQLiteException e) {
                c2 = cursor;
                mo4030v().m4655x_().m4653a("Error querying raw events", e);
                c = 65535;
                if (cursor != null) {
                    cursor.close();
                    c = 65535;
                }
            }
            return c2;
        } finally {
            if (c2 != null) {
                c2.close();
            }
        }
    }

    /* renamed from: a */
    public final long m4760a(C3776ao.C3789g c3789g) {
        mo4037o();
        m4246K();
        C2662s.m13981a(c3789g);
        C2662s.m13979a(c3789g.m6066x());
        byte[] m5839ai = c3789g.m5839ai();
        long m4159a = mo4149v_().m4159a(m5839ai);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c3789g.m6066x());
        contentValues.put("metadata_fingerprint", Long.valueOf(m4159a));
        contentValues.put("metadata", m5839ai);
        try {
            m4729e().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return m4159a;
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4652a("Error storing raw event metadata. appId", C4263dy.m4669a(c3789g.m6066x()), e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.C3776ao.C3781c, java.lang.Long> m4748a(java.lang.String r8, java.lang.Long r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4748a(java.lang.String, java.lang.Long):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x023a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C4292f m4764a(long r10, java.lang.String r12, long r13, boolean r15, boolean r16, boolean r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4764a(long, java.lang.String, long, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.f");
    }

    /* renamed from: a */
    public final C4292f m4763a(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return m4764a(j, str, 1L, false, false, z3, false, z5);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01e8  */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C4446n m4746a(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4746a(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.n");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m4765a(long r9) {
        /*
            r8 = this;
            r0 = 0
            r11 = r0
            r0 = r8
            r0.mo4037o()
            r0 = r8
            r0.m4246K()
            r0 = r8
            android.database.sqlite.SQLiteDatabase r0 = r0.m4729e()     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La7
            java.lang.String r1 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La7
            r3 = r2
            r4 = 0
            r5 = r9
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La7
            r3[r4] = r5     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La7
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: android.database.sqlite.SQLiteException -> L7a java.lang.Throwable -> La7
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lc0
            if (r0 != 0) goto L55
            r0 = r12
            r13 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.dy r0 = r0.mo4030v()     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lc0
            com.google.android.gms.measurement.internal.ea r0 = r0.m4657j()     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r1 = "No expired configs for apps with pending events"
            r0.m4654a(r1)     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lc0
            r0 = r11
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L52
            r0 = r12
            r0.close()
            r0 = r11
            r13 = r0
        L52:
            r0 = r13
            return r0
        L55:
            r0 = r12
            r13 = r0
            r0 = r12
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lc0
            r14 = r0
            r0 = r14
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L52
            r0 = r12
            r0.close()
            r0 = r14
            r13 = r0
            goto L52
        L7a:
            r14 = move-exception
            r0 = 0
            r12 = r0
        L7f:
            r0 = r12
            r13 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.dy r0 = r0.mo4030v()     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.measurement.internal.ea r0 = r0.m4655x_()     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r1 = "Error selecting expired configs"
            r2 = r14
            r0.m4653a(r1, r2)     // Catch: java.lang.Throwable -> Lbb
            r0 = r11
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L52
            r0 = r12
            r0.close()
            r0 = r11
            r13 = r0
            goto L52
        La7:
            r12 = move-exception
            r0 = 0
            r13 = r0
        Lac:
            r0 = r13
            if (r0 == 0) goto Lb8
            r0 = r13
            r0.close()
        Lb8:
            r0 = r12
            throw r0
        Lbb:
            r12 = move-exception
            goto Lac
        Lc0:
            r14 = move-exception
            goto L7f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4765a(long):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0122  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.C4425jx> m4752a(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4752a(java.lang.String):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x01aa  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<android.util.Pair<com.google.android.gms.internal.measurement.C3776ao.C3789g, java.lang.Long>> m4751a(java.lang.String r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4751a(java.lang.String, int, int):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00fc, code lost:
        r14 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00fe, code lost:
        mo4030v().m4655x_().m4653a("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01cd  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.C4425jx> m4745a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4745a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00a5, code lost:
        mo4030v().m4655x_().m4653a("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01e9  */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.C4442kn> m4743a(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4743a(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* renamed from: a */
    public final void m4757a(C4299fg c4299fg) {
        C2662s.m13981a(c4299fg);
        mo4037o();
        m4246K();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c4299fg.m4512c());
        contentValues.put("app_instance_id", c4299fg.m4508d());
        contentValues.put("gmp_app_id", c4299fg.m4505e());
        contentValues.put("resettable_device_id_hash", c4299fg.m4496h());
        contentValues.put("last_bundle_index", Long.valueOf(c4299fg.m4474s()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(c4299fg.m4490j()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(c4299fg.m4488k()));
        contentValues.put("app_version", c4299fg.m4486l());
        contentValues.put("app_store", c4299fg.m4482n());
        contentValues.put("gmp_version", Long.valueOf(c4299fg.m4480o()));
        contentValues.put("dev_cert_hash", Long.valueOf(c4299fg.m4478p()));
        contentValues.put("measurement_enabled", Boolean.valueOf(c4299fg.m4475r()));
        contentValues.put("day", Long.valueOf(c4299fg.m4470w()));
        contentValues.put("daily_public_events_count", Long.valueOf(c4299fg.m4469x()));
        contentValues.put("daily_events_count", Long.valueOf(c4299fg.m4468y()));
        contentValues.put("daily_conversions_count", Long.valueOf(c4299fg.m4467z()));
        contentValues.put("config_fetched_time", Long.valueOf(c4299fg.m4473t()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(c4299fg.m4472u()));
        contentValues.put("app_version_int", Long.valueOf(c4299fg.m4484m()));
        contentValues.put("firebase_instance_id", c4299fg.m4493i());
        contentValues.put("daily_error_events_count", Long.valueOf(c4299fg.m4530B()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(c4299fg.m4531A()));
        contentValues.put("health_monitor_sample", c4299fg.m4529C());
        contentValues.put("android_id", Long.valueOf(c4299fg.m4527E()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(c4299fg.m4526F()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(c4299fg.m4525G()));
        contentValues.put("admob_app_id", c4299fg.m4502f());
        contentValues.put("dynamite_version", Long.valueOf(c4299fg.m4476q()));
        if (c4299fg.m4523I() != null) {
            if (c4299fg.m4523I().size() == 0) {
                mo4030v().m4662e().m4653a("Safelisted events should not be an empty list. appId", c4299fg.m4512c());
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", c4299fg.m4523I()));
            }
        }
        if (C4066jy.m5025b() && mo4027x().m4787e(c4299fg.m4512c(), C4452t.f19454ao)) {
            contentValues.put("ga_app_id", c4299fg.m4499g());
        }
        try {
            SQLiteDatabase m4729e = m4729e();
            if (m4729e.update("apps", contentValues, "app_id = ?", new String[]{c4299fg.m4512c()}) != 0 || m4729e.insertWithOnConflict("apps", null, contentValues, 5) != -1) {
                return;
            }
            mo4030v().m4655x_().m4653a("Failed to insert/update app (got -1). appId", C4263dy.m4669a(c4299fg.m4512c()));
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4652a("Error storing app. appId", C4263dy.m4669a(c4299fg.m4512c()), e);
        }
    }

    /* renamed from: a */
    public final void m4753a(C4446n c4446n) {
        C2662s.m13981a(c4446n);
        mo4037o();
        m4246K();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c4446n.f19373a);
        contentValues.put("name", c4446n.f19374b);
        contentValues.put("lifetime_count", Long.valueOf(c4446n.f19375c));
        contentValues.put("current_bundle_count", Long.valueOf(c4446n.f19376d));
        contentValues.put("last_fire_timestamp", Long.valueOf(c4446n.f19378f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c4446n.f19379g));
        contentValues.put("last_bundled_day", c4446n.f19380h);
        contentValues.put("last_sampled_complex_event_id", c4446n.f19381i);
        contentValues.put("last_sampling_rate", c4446n.f19382j);
        contentValues.put("current_session_count", Long.valueOf(c4446n.f19377e));
        Long l = null;
        if (c4446n.f19383k != null) {
            l = null;
            if (c4446n.f19383k.booleanValue()) {
                l = 1L;
            }
        }
        contentValues.put("last_exempt_from_sampling", l);
        try {
            if (m4729e().insertWithOnConflict("events", null, contentValues, 5) != -1) {
                return;
            }
            mo4030v().m4655x_().m4653a("Failed to insert/update event aggregates (got -1). appId", C4263dy.m4669a(c4446n.f19373a));
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4652a("Error storing event aggregates. appId", C4263dy.m4669a(c4446n.f19373a), e);
        }
    }

    /* renamed from: a */
    public final void m4744a(String str, List<C3748ag.C3749a> list) {
        boolean z;
        C3748ag.C3749a.C3750a c3750a;
        boolean z2;
        C2662s.m13981a(list);
        for (int i = 0; i < list.size(); i++) {
            C3748ag.C3749a.C3750a m5642am = list.get(i).m5642am();
            if (m5642am.m6484b() != 0) {
                int i2 = 0;
                while (true) {
                    c3750a = m5642am;
                    if (i2 >= m5642am.m6484b()) {
                        break;
                    }
                    C3748ag.C3751b.C3752a m5642am2 = m5642am.m6483b(i2).m5642am();
                    C3748ag.C3751b.C3752a c3752a = (C3748ag.C3751b.C3752a) ((AbstractC3900ed.C3902b) m5642am2.clone());
                    String m4434a = C4323gd.m4434a(m5642am2.m6464a());
                    if (m4434a != null) {
                        c3752a.m6461a(m4434a);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    boolean z3 = z2;
                    for (int i3 = 0; i3 < m5642am2.m6460b(); i3++) {
                        C3748ag.C3753c m6463a = m5642am2.m6463a(i3);
                        String m4435a = C4322gc.m4435a(m6463a.m6450h());
                        if (m4435a != null) {
                            c3752a.m6462a(i3, (C3748ag.C3753c) ((AbstractC3900ed) m6463a.m5642am().m6447a(m4435a).mo5544u()));
                            z3 = true;
                        }
                    }
                    if (z3) {
                        m5642am = m5642am.m6486a(i2, c3752a);
                        list.set(i, (C3748ag.C3749a) ((AbstractC3900ed) m5642am.mo5544u()));
                    }
                    i2++;
                }
            } else {
                c3750a = m5642am;
            }
            if (c3750a.m6488a() != 0) {
                int i4 = 0;
                while (i4 < c3750a.m6488a()) {
                    C3748ag.C3758e m6487a = c3750a.m6487a(i4);
                    String m4432a = C4325gf.m4432a(m6487a.m6428c());
                    C3748ag.C3749a.C3750a c3750a2 = c3750a;
                    if (m4432a != null) {
                        c3750a2 = c3750a.m6485a(i4, m6487a.m5642am().m6420a(m4432a));
                        list.set(i, (C3748ag.C3749a) ((AbstractC3900ed) c3750a2.mo5544u()));
                    }
                    i4++;
                    c3750a = c3750a2;
                }
            }
        }
        m4246K();
        mo4037o();
        C2662s.m13979a(str);
        C2662s.m13981a(list);
        SQLiteDatabase m4729e = m4729e();
        m4729e.beginTransaction();
        try {
            m4246K();
            mo4037o();
            C2662s.m13979a(str);
            SQLiteDatabase m4729e2 = m4729e();
            m4729e2.delete("property_filters", "app_id=?", new String[]{str});
            m4729e2.delete("event_filters", "app_id=?", new String[]{str});
            for (C3748ag.C3749a c3749a : list) {
                m4246K();
                mo4037o();
                C2662s.m13979a(str);
                C2662s.m13981a(c3749a);
                if (c3749a.m6501a()) {
                    int m6495b = c3749a.m6495b();
                    Iterator<C3748ag.C3751b> it = c3749a.m6491e().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!it.next().m6482a()) {
                                mo4030v().m4662e().m4652a("Event filter with no ID. Audience definition ignored. appId, audienceId", C4263dy.m4669a(str), Integer.valueOf(m6495b));
                                break;
                            }
                        } else {
                            Iterator<C3748ag.C3758e> it2 = c3749a.m6493c().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (!it2.next().m6432a()) {
                                        mo4030v().m4662e().m4652a("Property filter with no ID. Audience definition ignored. appId, audienceId", C4263dy.m4669a(str), Integer.valueOf(m6495b));
                                        break;
                                    }
                                } else {
                                    Iterator<C3748ag.C3751b> it3 = c3749a.m6491e().iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if (!m4750a(str, m6495b, it3.next())) {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            z = true;
                                            break;
                                        }
                                    }
                                    if (z) {
                                        Iterator<C3748ag.C3758e> it4 = c3749a.m6493c().iterator();
                                        while (true) {
                                            if (!it4.hasNext()) {
                                                break;
                                            } else if (!m4749a(str, m6495b, it4.next())) {
                                                z = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z) {
                                        m4246K();
                                        mo4037o();
                                        C2662s.m13979a(str);
                                        SQLiteDatabase m4729e3 = m4729e();
                                        m4729e3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(m6495b)});
                                        m4729e3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(m6495b)});
                                    }
                                }
                            }
                        }
                    }
                } else {
                    mo4030v().m4662e().m4653a("Audience with no ID. appId", C4263dy.m4669a(str));
                }
            }
            ArrayList arrayList = new ArrayList();
            for (C3748ag.C3749a c3749a2 : list) {
                arrayList.add(c3749a2.m6501a() ? Integer.valueOf(c3749a2.m6495b()) : null);
            }
            m4736b(str, arrayList);
            m4729e.setTransactionSuccessful();
        } finally {
            m4729e.endTransaction();
        }
    }

    /* renamed from: a */
    public final void m4741a(List<Long> list) {
        mo4037o();
        m4246K();
        C2662s.m13981a(list);
        C2662s.m13984a(list.size());
        if (!m4766M()) {
            return;
        }
        String join = TextUtils.join(",", list);
        String sb = new StringBuilder(String.valueOf(join).length() + 2).append("(").append(join).append(")").toString();
        if (m4735b(new StringBuilder(String.valueOf(sb).length() + 80).append("SELECT COUNT(1) FROM queue WHERE rowid IN ").append(sb).append(" AND retry_count =  2147483647 LIMIT 1").toString(), (String[]) null) > 0) {
            mo4030v().m4662e().m4654a("The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            m4729e().execSQL(new StringBuilder(String.valueOf(sb).length() + 127).append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ").append(sb).append(" AND (retry_count IS NULL OR retry_count < 2147483647)").toString());
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4653a("Error incrementing retry count. error", e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4412jl
    /* renamed from: a */
    protected final boolean mo4068a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m4759a(C3776ao.C3789g c3789g, boolean z) {
        boolean z2;
        mo4037o();
        m4246K();
        C2662s.m13981a(c3789g);
        C2662s.m13979a(c3789g.m6066x());
        C2662s.m13977a(c3789g.m6095k());
        m4720h();
        long mo13862a = mo4035q().mo13862a();
        if (c3789g.m6090l() < mo13862a - C4184b.m4784g() || c3789g.m6090l() > C4184b.m4784g() + mo13862a) {
            mo4030v().m4662e().m4651a("Storing bundle outside of the max uploading time span. appId, now, timestamp", C4263dy.m4669a(c3789g.m6066x()), Long.valueOf(mo13862a), Long.valueOf(c3789g.m6090l()));
        }
        try {
            byte[] m4153c = mo4149v_().m4153c(c3789g.m5839ai());
            mo4030v().m4657j().m4653a("Saving bundle, size", Integer.valueOf(m4153c.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", c3789g.m6066x());
            contentValues.put("bundle_end_timestamp", Long.valueOf(c3789g.m6090l()));
            contentValues.put("data", m4153c);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (c3789g.m6205Z()) {
                contentValues.put("retry_count", Integer.valueOf(c3789g.m6180aa()));
            }
            try {
                if (m4729e().insert("queue", null, contentValues) == -1) {
                    mo4030v().m4655x_().m4653a("Failed to insert bundle (got -1). appId", C4263dy.m4669a(c3789g.m6066x()));
                    z2 = false;
                } else {
                    z2 = true;
                }
            } catch (SQLiteException e) {
                mo4030v().m4655x_().m4652a("Error storing bundle. appId", C4263dy.m4669a(c3789g.m6066x()), e);
                z2 = false;
            }
        } catch (IOException e2) {
            mo4030v().m4655x_().m4652a("Data loss. Failed to serialize bundle. appId", C4263dy.m4669a(c3789g.m6066x()), e2);
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public final boolean m4756a(C4425jx c4425jx) {
        boolean z = false;
        C2662s.m13981a(c4425jx);
        mo4037o();
        m4246K();
        if (m4732c(c4425jx.f19286a, c4425jx.f19288c) != null || (!C4424jw.m4122a(c4425jx.f19288c) ? "_npa".equals(c4425jx.f19288c) || m4735b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{c4425jx.f19286a, c4425jx.f19287b}) < 25 : m4735b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{c4425jx.f19286a}) < mo4027x().m4794c(c4425jx.f19286a))) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", c4425jx.f19286a);
            contentValues.put("origin", c4425jx.f19287b);
            contentValues.put("name", c4425jx.f19288c);
            contentValues.put("set_timestamp", Long.valueOf(c4425jx.f19289d));
            m4762a(contentValues, "value", c4425jx.f19290e);
            try {
                if (m4729e().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                    mo4030v().m4655x_().m4653a("Failed to insert/update user property (got -1). appId", C4263dy.m4669a(c4425jx.f19286a));
                }
            } catch (SQLiteException e) {
                mo4030v().m4655x_().m4652a("Error storing user property. appId", C4263dy.m4669a(c4425jx.f19286a), e);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4755a(C4428k c4428k, long j, boolean z) {
        boolean z2;
        mo4037o();
        m4246K();
        C2662s.m13981a(c4428k);
        C2662s.m13979a(c4428k.f19293a);
        C3776ao.C3781c.C3782a m6296b = C3776ao.C3781c.m6311j().m6296b(c4428k.f19296d);
        Iterator<String> it = c4428k.f19297e.iterator();
        while (it.hasNext()) {
            String next = it.next();
            C3776ao.C3785e.C3786a m6244a = C3776ao.C3785e.m6256k().m6244a(next);
            mo4149v_().m4176a(m6244a, c4428k.f19297e.m4023a(next));
            m6296b.m6302a(m6244a);
        }
        byte[] m5839ai = ((C3776ao.C3781c) ((AbstractC3900ed) m6296b.mo5544u())).m5839ai();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c4428k.f19293a);
        contentValues.put("name", c4428k.f19294b);
        contentValues.put("timestamp", Long.valueOf(c4428k.f19295c));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", m5839ai);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m4729e().insert("raw_events", null, contentValues) == -1) {
                mo4030v().m4655x_().m4653a("Failed to insert raw event (got -1). appId", C4263dy.m4669a(c4428k.f19293a));
                z2 = false;
            } else {
                z2 = true;
            }
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4652a("Error storing raw event. appId", C4263dy.m4669a(c4428k.f19293a), e);
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public final boolean m4754a(C4442kn c4442kn) {
        boolean z = false;
        C2662s.m13981a(c4442kn);
        mo4037o();
        m4246K();
        if (m4732c(c4442kn.f19354a, c4442kn.f19356c.f19272a) != null || m4735b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{c4442kn.f19354a}) < 1000) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", c4442kn.f19354a);
            contentValues.put("origin", c4442kn.f19355b);
            contentValues.put("name", c4442kn.f19356c.f19272a);
            m4762a(contentValues, "value", c4442kn.f19356c.m4148a());
            contentValues.put("active", Boolean.valueOf(c4442kn.f19358e));
            contentValues.put("trigger_event_name", c4442kn.f19359f);
            contentValues.put("trigger_timeout", Long.valueOf(c4442kn.f19361h));
            mo4032t();
            contentValues.put("timed_out_event", C4424jw.m4133a((Parcelable) c4442kn.f19360g));
            contentValues.put("creation_timestamp", Long.valueOf(c4442kn.f19357d));
            mo4032t();
            contentValues.put("triggered_event", C4424jw.m4133a((Parcelable) c4442kn.f19362i));
            contentValues.put("triggered_timestamp", Long.valueOf(c4442kn.f19356c.f19273b));
            contentValues.put("time_to_live", Long.valueOf(c4442kn.f19363j));
            mo4032t();
            contentValues.put("expired_event", C4424jw.m4133a((Parcelable) c4442kn.f19364k));
            try {
                if (m4729e().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                    mo4030v().m4655x_().m4653a("Failed to insert/update conditional user property (got -1)", C4263dy.m4669a(c4442kn.f19354a));
                }
            } catch (SQLiteException e) {
                mo4030v().m4655x_().m4652a("Error storing conditional user property", C4263dy.m4669a(c4442kn.f19354a), e);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4747a(String str, Long l, long j, C3776ao.C3781c c3781c) {
        boolean z = false;
        mo4037o();
        m4246K();
        C2662s.m13981a(c3781c);
        C2662s.m13979a(str);
        C2662s.m13981a(l);
        byte[] m5839ai = c3781c.m5839ai();
        mo4030v().m4657j().m4652a("Saving complex main event, appId, data size", mo4033s().m4682a(str), Integer.valueOf(m5839ai.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", m5839ai);
        try {
            if (m4729e().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                mo4030v().m4655x_().m4653a("Failed to insert complex main event (got -1). appId", C4263dy.m4669a(str));
            } else {
                z = true;
            }
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4652a("Error storing complex main event. appId", C4263dy.m4669a(str), e);
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0402  */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C4299fg m4739b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4739b(java.lang.String):com.google.android.gms.measurement.internal.fg");
    }

    /* renamed from: b */
    public final List<C4442kn> m4737b(String str, String str2, String str3) {
        C2662s.m13979a(str);
        mo4037o();
        m4246K();
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
        return m4743a(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: b */
    public final void m4740b() {
        m4246K();
        m4729e().beginTransaction();
    }

    /* renamed from: b */
    public final void m4738b(String str, String str2) {
        C2662s.m13979a(str);
        C2662s.m13979a(str2);
        mo4037o();
        m4246K();
        try {
            m4729e().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4651a("Error deleting user property. appId", C4263dy.m4669a(str), mo4033s().m4677c(str2), e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: c */
    public final long m4733c(String str) {
        char c;
        C2662s.m13979a(str);
        mo4037o();
        m4246K();
        try {
            c = m4729e().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, mo4027x().m4796b(str, C4452t.f19479o))))});
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4652a("Error deleting over the limit events. appId", C4263dy.m4669a(str), e);
            c = 0;
        }
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00f6  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C4425jx m4732c(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4732c(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.jx");
    }

    /* renamed from: c */
    public final void m4734c() {
        m4246K();
        m4729e().setTransactionSuccessful();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x01c7  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C4442kn m4730d(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4730d(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.kn");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b7  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m4731d(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4731d(java.lang.String):byte[]");
    }

    /* renamed from: e */
    public final int m4727e(String str, String str2) {
        int i = 0;
        C2662s.m13979a(str);
        C2662s.m13979a(str2);
        mo4037o();
        m4246K();
        try {
            i = m4729e().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4651a("Error deleting conditional property", C4263dy.m4669a(str), mo4033s().m4677c(str2), e);
        }
        return i;
    }

    /* renamed from: e */
    public final SQLiteDatabase m4729e() {
        mo4037o();
        try {
            return this.f18641j.getWritableDatabase();
        } catch (SQLiteException e) {
            mo4030v().m4662e().m4653a("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012b  */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Map] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.C3748ag.C3751b>> m4728e(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4728e(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.database.Cursor] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m4726f() {
        /*
            r4 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m4729e()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: android.database.sqlite.SQLiteException -> L49 java.lang.Throwable -> L6f
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteException -> L89
            if (r0 == 0) goto L38
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteException -> L89
            r8 = r0
            r0 = r8
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L36
            r0 = r7
            r0.close()
            r0 = r8
            r6 = r0
        L36:
            r0 = r6
            return r0
        L38:
            r0 = r5
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L36
            r0 = r7
            r0.close()
            r0 = r5
            r6 = r0
            goto L36
        L49:
            r8 = move-exception
            r0 = 0
            r7 = r0
        L4d:
            r0 = r7
            r6 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.dy r0 = r0.mo4030v()     // Catch: java.lang.Throwable -> L82
            com.google.android.gms.measurement.internal.ea r0 = r0.m4655x_()     // Catch: java.lang.Throwable -> L82
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r8
            r0.m4653a(r1, r2)     // Catch: java.lang.Throwable -> L82
            r0 = r5
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L36
            r0 = r7
            r0.close()
            r0 = r5
            r6 = r0
            goto L36
        L6f:
            r6 = move-exception
            r0 = 0
            r7 = r0
            r0 = r6
            r8 = r0
        L75:
            r0 = r7
            if (r0 == 0) goto L7f
            r0 = r7
            r0.close()
        L7f:
            r0 = r8
            throw r0
        L82:
            r8 = move-exception
            r0 = r6
            r7 = r0
            goto L75
        L89:
            r8 = move-exception
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4726f():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e3  */
    /* JADX WARN: Type inference failed for: r0v42, types: [java.util.Map] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> m4725f(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4725f(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012d  */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.util.Map] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.C3748ag.C3751b>> m4724f(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4724f(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00f5  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.C3776ao.C3794i> m4722g(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4722g(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012d  */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.util.Map] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.C3748ag.C3758e>> m4721g(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4721g(java.lang.String, java.lang.String):java.util.Map");
    }

    /* renamed from: g */
    public final boolean m4723g() {
        return m4735b("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* renamed from: h */
    public final long m4719h(String str) {
        C2662s.m13979a(str);
        return m4742a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|27|3|4|(2:6|(4:8|9|10|11)(1:12))|31|13|(2:15|16)(2:17|18)|30|10|11|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x012b, code lost:
        mo4030v().m4655x_().m4651a("Error inserting column. appId", com.google.android.gms.measurement.internal.C4263dy.m4669a(r10), r11, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0140, code lost:
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x014d, code lost:
        r14 = e;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m4718h(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4211c.m4718h(java.lang.String, java.lang.String):long");
    }

    /* renamed from: h */
    public final void m4720h() {
        int delete;
        mo4037o();
        m4246K();
        if (!m4766M()) {
            return;
        }
        long m4624a = mo4029w().f18764f.m4624a();
        long mo13861b = mo4035q().mo13861b();
        if (Math.abs(mo13861b - m4624a) <= C4452t.f19488x.m4707a(null).longValue()) {
            return;
        }
        mo4029w().f18764f.m4623a(mo13861b);
        mo4037o();
        m4246K();
        if (!m4766M() || (delete = m4729e().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(mo4035q().mo13862a()), String.valueOf(C4184b.m4784g())})) <= 0) {
            return;
        }
        mo4030v().m4657j().m4653a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
    }

    /* renamed from: i */
    public final long m4717i() {
        return m4742a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    /* renamed from: j */
    public final long m4716j() {
        return m4742a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    /* renamed from: k */
    public final boolean m4715k() {
        return m4735b("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    /* renamed from: s_ */
    public final void m4714s_() {
        m4246K();
        m4729e().endTransaction();
    }

    /* renamed from: z */
    public final boolean m4713z() {
        return m4735b("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }
}
