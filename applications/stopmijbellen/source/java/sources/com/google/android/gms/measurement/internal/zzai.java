package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzai.class */
public final class zzai extends zzke {
    private static final String[] zza = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzb = {AppMeasurementSdk.ConditionalUserProperty.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzc = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};
    private static final String[] zzd = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zze = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzg = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzka zzk = new zzka(this.zzs.zzay());
    private final zzah zzj = new zzah(this, this.zzs.zzax(), "google_app_measurement.db");

    public zzai(zzkn zzknVar) {
        super(zzknVar);
        this.zzs.zzc();
    }

    public static final void zzX(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Long) obj);
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("Invalid value type");
        } else {
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Double) obj);
        }
    }

    private final long zzab(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = zze().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                rawQuery.close();
                return j;
            } catch (SQLiteException e) {
                this.zzs.zzau().zzb().zzc("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long zzac(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = zze().rawQuery(str, strArr);
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
                this.zzs.zzau().zzb().zzc("Database error", str, e);
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

    public final void zzA() {
        zzg();
        zzZ();
        if (zzM()) {
            long zza2 = this.zzf.zzn().zza.zza();
            long elapsedRealtime = this.zzs.zzay().elapsedRealtime();
            long abs = Math.abs(elapsedRealtime - zza2);
            this.zzs.zzc();
            if (abs <= zzea.zzx.zzb(null).longValue()) {
                return;
            }
            this.zzf.zzn().zza.zzb(elapsedRealtime);
            zzg();
            zzZ();
            if (!zzM()) {
                return;
            }
            SQLiteDatabase zze2 = zze();
            long currentTimeMillis = this.zzs.zzay().currentTimeMillis();
            this.zzs.zzc();
            int delete = zze2.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(currentTimeMillis), String.valueOf(zzae.zzA())});
            if (delete <= 0) {
                return;
            }
            this.zzs.zzau().zzk().zzb("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
        }
    }

    @VisibleForTesting
    public final void zzB(List<Long> list) {
        zzg();
        zzZ();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (!zzM()) {
            return;
        }
        String join = TextUtils.join(",", list);
        String m7625j = C0608b.m7625j(new StringBuilder(String.valueOf(join).length() + 2), "(", join, ")");
        if (zzab(C0608b.m7625j(new StringBuilder(String.valueOf(m7625j).length() + 80), "SELECT COUNT(1) FROM queue WHERE rowid IN ", m7625j, " AND retry_count =  2147483647 LIMIT 1"), null) > 0) {
            C1676a.m4786k(this.zzs, "The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            SQLiteDatabase zze2 = zze();
            StringBuilder sb = new StringBuilder(String.valueOf(m7625j).length() + 127);
            sb.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
            sb.append(m7625j);
            sb.append(" AND (retry_count IS NULL OR retry_count < ");
            sb.append(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            sb.append(")");
            zze2.execSQL(sb.toString());
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzb("Error incrementing retry count. error", e);
        }
    }

    @VisibleForTesting
    public final Object zzC(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            C0033h.m8883n(this.zzs, "Loaded invalid null value from database");
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
                this.zzs.zzau().zzb().zzb("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            C0033h.m8883n(this.zzs, "Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    public final long zzD() {
        return zzac("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @VisibleForTesting
    public final long zzE(String str, String str2) {
        char c;
        SQLiteException e;
        ContentValues contentValues;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty("first_open_count");
        zzg();
        zzZ();
        SQLiteDatabase zze2 = zze();
        zze2.beginTransaction();
        try {
            try {
                ?? zzac = zzac("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
                c = zzac;
                if (zzac == -1) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put("first_open_count", (Integer) 0);
                    contentValues2.put("previous_install_count", (Integer) 0);
                    if (zze2.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                        this.zzs.zzau().zzb().zzc("Failed to insert column (got -1). appId", zzem.zzl(str), "first_open_count");
                        zze2.endTransaction();
                        return -1L;
                    }
                    c = 0;
                }
            } catch (Throwable th) {
                zze2.endTransaction();
                throw th;
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
            this.zzs.zzau().zzb().zzd("Error inserting column. appId", zzem.zzl(str), "first_open_count", e);
            zze2.endTransaction();
            return c;
        }
        if (zze2.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
            this.zzs.zzau().zzb().zzc("Failed to update column (got 0). appId", zzem.zzl(str), "first_open_count");
            zze2.endTransaction();
            return -1L;
        }
        zze2.setTransactionSuccessful();
        zze2.endTransaction();
        return c;
    }

    public final long zzF() {
        return zzac("select max(timestamp) from raw_events", null, 0L);
    }

    public final boolean zzG() {
        return zzab("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean zzH() {
        return zzab("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    public final long zzI(String str) {
        Preconditions.checkNotEmpty(str);
        return zzac("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final boolean zzJ(String str, Long l, long j, zzfo zzfoVar) {
        zzg();
        zzZ();
        Preconditions.checkNotNull(zzfoVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] zzbp = zzfoVar.zzbp();
        this.zzs.zzau().zzk().zzc("Saving complex main event, appId, data size", this.zzs.zzm().zzc(str), Integer.valueOf(zzbp.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", zzbp);
        try {
            if (zze().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.zzs.zzau().zzb().zzb("Failed to insert complex main event (got -1). appId", zzem.zzl(str));
            return false;
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzc("Error storing complex main event. appId", zzem.zzl(str), e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zzK(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzK(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x04d3, code lost:
        r0.put("filter_id", r16);
        r0.put("property_name", r0.zzc());
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x04ef, code lost:
        if (r0.zzg() == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x04f2, code lost:
        r16 = java.lang.Boolean.valueOf(r0.zzh());
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x04ff, code lost:
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0502, code lost:
        r0.put("session_scoped", r16);
        r0.put("data", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0527, code lost:
        if (zze().insertWithOnConflict("property_filters", null, r0, 5) != (-1)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x052a, code lost:
        r8.zzs.zzau().zzb().zzb("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.zzem.zzl(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0544, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0546, code lost:
        r8.zzs.zzau().zzb().zzc("Error storing property filter. appId", com.google.android.gms.measurement.internal.zzem.zzl(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x055d, code lost:
        zzZ();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9);
        r0 = zze();
        r0.delete("property_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
        r0.delete("event_filters", "app_id=? and audience_id=?", new java.lang.String[]{r9, java.lang.String.valueOf(r0)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0284, code lost:
        r0 = r0.zzc().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0297, code lost:
        if (r0.hasNext() == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02a7, code lost:
        if (r0.next().zza() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02aa, code lost:
        r8.zzs.zzau().zze().zzc("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.zzem.zzl(r9), java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02c6, code lost:
        r0 = r0.zzf().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02dd, code lost:
        if (r0.hasNext() == false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02e0, code lost:
        r0 = r0.next();
        zzZ();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0307, code lost:
        if (android.text.TextUtils.isEmpty(r0.zzc()) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x030a, code lost:
        r0 = r8.zzs.zzau().zze();
        r0 = com.google.android.gms.measurement.internal.zzem.zzl(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0321, code lost:
        if (r0.zza() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0324, code lost:
        r14 = java.lang.Integer.valueOf(r0.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0331, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0334, code lost:
        r0.zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x034b, code lost:
        r0 = r0.zzbp();
        r0 = new android.content.ContentValues();
        r0.put("app_id", r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0377, code lost:
        if (r0.zza() == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x037a, code lost:
        r14 = java.lang.Integer.valueOf(r0.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0387, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x038a, code lost:
        r0.put("filter_id", r14);
        r0.put("event_name", r0.zzc());
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x03a6, code lost:
        if (r0.zzk() == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x03a9, code lost:
        r14 = java.lang.Boolean.valueOf(r0.zzm());
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x03b6, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x03b9, code lost:
        r0.put("session_scoped", r14);
        r0.put("data", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03de, code lost:
        if (zze().insertWithOnConflict("event_filters", null, r0, 5) != (-1)) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03e1, code lost:
        r8.zzs.zzau().zzb().zzb("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.zzem.zzl(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03f8, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03fa, code lost:
        r8.zzs.zzau().zzb().zzc("Error storing event filter. appId", com.google.android.gms.measurement.internal.zzem.zzl(r9), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0413, code lost:
        r0 = r0.zzc().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0426, code lost:
        if (r0.hasNext() == false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0429, code lost:
        r0 = r0.next();
        zzZ();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0450, code lost:
        if (android.text.TextUtils.isEmpty(r0.zzc()) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0453, code lost:
        r0 = r8.zzs.zzau().zze();
        r0 = com.google.android.gms.measurement.internal.zzem.zzl(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x046a, code lost:
        if (r0.zza() == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x046d, code lost:
        r14 = java.lang.Integer.valueOf(r0.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x047a, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x047d, code lost:
        r0.zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r0, java.lang.Integer.valueOf(r0), java.lang.String.valueOf(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0494, code lost:
        r0 = r0.zzbp();
        r0 = new android.content.ContentValues();
        r0.put("app_id", r9);
        r0.put("audience_id", java.lang.Integer.valueOf(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x04c0, code lost:
        if (r0.zza() == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x04c3, code lost:
        r16 = java.lang.Integer.valueOf(r0.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x04d0, code lost:
        r16 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzL(java.lang.String r9, java.util.List<com.google.android.gms.internal.measurement.zzeh> r10) {
        /*
            Method dump skipped, instructions count: 1835
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzL(java.lang.String, java.util.List):void");
    }

    @VisibleForTesting
    public final boolean zzM() {
        Context zzax = this.zzs.zzax();
        this.zzs.zzc();
        return zzax.getDatabasePath("google_app_measurement.db").exists();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzW(String str, long j, long j2, zzkm zzkmVar) {
        Cursor cursor;
        Throwable th;
        String str2;
        SQLiteException e;
        Cursor cursor2;
        String str3;
        Cursor cursor3;
        String str4;
        String[] strArr;
        String[] strArr2;
        Preconditions.checkNotNull(zzkmVar);
        zzg();
        zzZ();
        try {
            try {
                SQLiteDatabase zze2 = zze();
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
                        Cursor rawQuery = zze2.rawQuery(sb.toString(), strArr3);
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
                        Cursor rawQuery2 = zze2.rawQuery(sb2.toString(), strArr2);
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
                        Cursor query = zze2.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str2, str3}, null, null, "rowid", "2");
                        try {
                            if (!query.moveToFirst()) {
                                this.zzs.zzau().zzb().zzb("Raw event metadata record is missing. appId", zzem.zzl(str2));
                                query.close();
                                return;
                            }
                            try {
                                try {
                                    zzfw zzaA = ((zzfv) zzkp.zzt(zzfw.zzaj(), query.getBlob(0))).zzaA();
                                    if (query.moveToNext()) {
                                        this.zzs.zzau().zze().zzb("Get multiple raw event metadata records, expected one. appId", zzem.zzl(str2));
                                    }
                                    query.close();
                                    Preconditions.checkNotNull(zzaA);
                                    zzkmVar.zza = zzaA;
                                    if (j2 != -1) {
                                        strArr = new String[]{str2, str3, String.valueOf(j2)};
                                        str4 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                    } else {
                                        strArr = new String[]{str2, str3};
                                        str4 = "app_id = ? and metadata_fingerprint = ?";
                                    }
                                    Cursor query2 = zze2.query("raw_events", new String[]{"rowid", AppMeasurementSdk.ConditionalUserProperty.NAME, "timestamp", "data"}, str4, strArr, null, null, "rowid", null);
                                    String str6 = str2;
                                    if (!query2.moveToFirst()) {
                                        this.zzs.zzau().zze().zzb("Raw event data disappeared while in transaction. appId", zzem.zzl(str2));
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
                                            zzfn zzfnVar = (zzfn) zzkp.zzt(zzfo.zzk(), blob);
                                            String str10 = str2;
                                            zzfnVar.zzl(query2.getString(1));
                                            String str11 = str2;
                                            zzfnVar.zzo(query2.getLong(2));
                                            String str12 = str2;
                                            if (!zzkmVar.zza(j3, zzfnVar.zzaA())) {
                                                query2.close();
                                                return;
                                            }
                                        } catch (IOException e2) {
                                            this.zzs.zzau().zzb().zzc("Data loss. Failed to merge raw event. appId", zzem.zzl(str2), e2);
                                        }
                                        String str13 = str2;
                                    } while (query2.moveToNext());
                                    query2.close();
                                } catch (IOException e3) {
                                    this.zzs.zzau().zzb().zzc("Data loss. Failed to merge raw event metadata. appId", zzem.zzl(str2), e3);
                                    query.close();
                                }
                            } catch (SQLiteException e4) {
                                e = e4;
                                cursor2 = query;
                                this.zzs.zzau().zzb().zzc("Data loss. Error selecting raw event. appId", zzem.zzl(str2), e);
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
                        cursor = cursor3;
                        th = th4;
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

    @Override // com.google.android.gms.measurement.internal.zzke
    public final boolean zzaA() {
        return false;
    }

    public final void zzb() {
        zzZ();
        zze().beginTransaction();
    }

    public final void zzc() {
        zzZ();
        zze().setTransactionSuccessful();
    }

    public final void zzd() {
        zzZ();
        zze().endTransaction();
    }

    @VisibleForTesting
    public final SQLiteDatabase zze() {
        zzg();
        try {
            return this.zzj.getWritableDatabase();
        } catch (SQLiteException e) {
            this.zzs.zzau().zze().zzb("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x021a  */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzao zzf(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzf(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzao");
    }

    public final void zzh(zzao zzaoVar) {
        Preconditions.checkNotNull(zzaoVar);
        zzg();
        zzZ();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzaoVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzaoVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzaoVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzaoVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzaoVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzaoVar.zzg));
        contentValues.put("last_bundled_day", zzaoVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzaoVar.zzi);
        contentValues.put("last_sampling_rate", zzaoVar.zzj);
        contentValues.put("current_session_count", Long.valueOf(zzaoVar.zze));
        Boolean bool = zzaoVar.zzk;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (zze().insertWithOnConflict("events", null, contentValues, 5) != -1) {
                return;
            }
            this.zzs.zzau().zzb().zzb("Failed to insert/update event aggregates (got -1). appId", zzem.zzl(zzaoVar.zza));
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzc("Error storing event aggregates. appId", zzem.zzl(zzaoVar.zza), e);
        }
    }

    public final void zzi(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzZ();
        try {
            zze().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzd("Error deleting user property. appId", zzem.zzl(str), this.zzs.zzm().zze(str2), e);
        }
    }

    public final boolean zzj(zzks zzksVar) {
        Preconditions.checkNotNull(zzksVar);
        zzg();
        zzZ();
        if (zzk(zzksVar.zza, zzksVar.zzc) == null) {
            if (zzku.zzh(zzksVar.zzc)) {
                if (zzab("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzksVar.zza}) >= this.zzs.zzc().zzl(zzksVar.zza, zzea.zzF, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(zzksVar.zzc)) {
                long zzab = zzab("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzksVar.zza, zzksVar.zzb});
                this.zzs.zzc();
                if (zzab >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzksVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, zzksVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzksVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzksVar.zzd));
        zzX(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, zzksVar.zze);
        try {
            if (zze().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            this.zzs.zzau().zzb().zzb("Failed to insert/update user property (got -1). appId", zzem.zzl(zzksVar.zza));
            return true;
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzc("Error storing user property. appId", zzem.zzl(zzksVar.zza), e);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzks zzk(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzk(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzks");
    }

    public final List<zzks> zzl(String str) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzZ();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase zze2 = zze();
                this.zzs.zzc();
                Cursor query = zze2.query("user_attributes", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.ORIGIN, "set_timestamp", AppMeasurementSdk.ConditionalUserProperty.VALUE}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
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
                    Object zzC = zzC(query, 3);
                    if (zzC == null) {
                        this.zzs.zzau().zzb().zzb("Read invalid user property value, ignoring it. appId", zzem.zzl(str));
                    } else {
                        arrayList.add(new zzks(str, str2, string, j, zzC));
                    }
                } while (query.moveToNext());
                query.close();
                return arrayList;
            } catch (SQLiteException e) {
                this.zzs.zzau().zzb().zzc("Error querying user properties. appId", zzem.zzl(str), e);
                cursor = cursor2;
                List<zzks> emptyList = Collections.emptyList();
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

    /* JADX WARN: Code restructure failed: missing block: B:50:0x01ba, code lost:
        r0 = r10.zzs.zzau().zzb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01d0, code lost:
        r10.zzs.zzc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01da, code lost:
        r16 = r0;
        r23 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01e3, code lost:
        r0.zzb("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0307  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzks> zzm(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzm(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final boolean zzn(zzaa zzaaVar) {
        Preconditions.checkNotNull(zzaaVar);
        zzg();
        zzZ();
        String str = zzaaVar.zza;
        Preconditions.checkNotNull(str);
        if (zzk(str, zzaaVar.zzc.zzb) == null) {
            long zzab = zzab("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.zzs.zzc();
            if (zzab >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, zzaaVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzaaVar.zzc.zzb);
        zzX(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, Preconditions.checkNotNull(zzaaVar.zzc.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzaaVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzaaVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzaaVar.zzh));
        contentValues.put("timed_out_event", this.zzs.zzl().zzX(zzaaVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzaaVar.zzd));
        contentValues.put("triggered_event", this.zzs.zzl().zzX(zzaaVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzaaVar.zzc.zzc));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzaaVar.zzj));
        contentValues.put("expired_event", this.zzs.zzl().zzX(zzaaVar.zzk));
        try {
            if (zze().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            this.zzs.zzau().zzb().zzb("Failed to insert/update conditional user property (got -1)", zzem.zzl(str));
            return true;
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzc("Error storing conditional user property", zzem.zzl(str), e);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0234  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaa zzo(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzo(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzaa");
    }

    public final int zzp(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzZ();
        try {
            return zze().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzd("Error deleting conditional property", zzem.zzl(str), this.zzs.zzm().zze(str2), e);
            return 0;
        }
    }

    public final List<zzaa> zzq(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzZ();
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
        return zzr(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00de, code lost:
        r0 = r16.zzs.zzau().zzb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ef, code lost:
        r16.zzs.zzc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00f8, code lost:
        r22 = r0;
        r23 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00fd, code lost:
        r0.zzb("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzaa> zzr(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzr(java.lang.String, java.lang.String[]):java.util.List");
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzg zzs(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzs(java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    public final void zzt(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzg();
        zzZ();
        String zzc2 = zzgVar.zzc();
        Preconditions.checkNotNull(zzc2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzc2);
        contentValues.put("app_instance_id", zzgVar.zzd());
        contentValues.put("gmp_app_id", zzgVar.zzf());
        contentValues.put("resettable_device_id_hash", zzgVar.zzl());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzI()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzp()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzr()));
        contentValues.put("app_version", zzgVar.zzt());
        contentValues.put("app_store", zzgVar.zzx());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzz()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzB()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.zzF()));
        contentValues.put("day", Long.valueOf(zzgVar.zzO()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzQ()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzS()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzU()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzJ()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzL()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzv()));
        contentValues.put("firebase_instance_id", zzgVar.zzn());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzY()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzW()));
        contentValues.put("health_monitor_sample", zzgVar.zzaa());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzad()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzaf()));
        contentValues.put("admob_app_id", zzgVar.zzh());
        contentValues.put("dynamite_version", Long.valueOf(zzgVar.zzD()));
        List<String> zzaj = zzgVar.zzaj();
        if (zzaj != null) {
            if (zzaj.size() == 0) {
                this.zzs.zzau().zze().zzb("Safelisted events should not be an empty list. appId", zzc2);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", zzaj));
            }
        }
        zzov.zzb();
        if (this.zzs.zzc().zzn(zzc2, zzea.zzag)) {
            contentValues.put("ga_app_id", zzgVar.zzj());
        }
        try {
            SQLiteDatabase zze2 = zze();
            if (zze2.update("apps", contentValues, "app_id = ?", new String[]{zzc2}) != 0 || zze2.insertWithOnConflict("apps", null, contentValues, 5) != -1) {
                return;
            }
            this.zzs.zzau().zzb().zzb("Failed to insert/update app (got -1). appId", zzem.zzl(zzc2));
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzc("Error storing app. appId", zzem.zzl(zzc2), e);
        }
    }

    public final zzag zzu(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return zzv(j, str, 1L, false, false, z3, false, z5);
    }

    public final zzag zzv(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzZ();
        zzag zzagVar = new zzag();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase zze2 = zze();
                Cursor query = zze2.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    this.zzs.zzau().zze().zzb("Not updating daily counts, app is not known. appId", zzem.zzl(str));
                    query.close();
                    return zzagVar;
                }
                if (query.getLong(0) == j) {
                    zzagVar.zzb = query.getLong(1);
                    zzagVar.zza = query.getLong(2);
                    zzagVar.zzc = query.getLong(3);
                    zzagVar.zzd = query.getLong(4);
                    zzagVar.zze = query.getLong(5);
                }
                if (z) {
                    zzagVar.zzb += j2;
                }
                if (z2) {
                    zzagVar.zza += j2;
                }
                if (z3) {
                    zzagVar.zzc += j2;
                }
                if (z4) {
                    zzagVar.zzd += j2;
                }
                if (z5) {
                    zzagVar.zze += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(zzagVar.zza));
                contentValues.put("daily_events_count", Long.valueOf(zzagVar.zzb));
                contentValues.put("daily_conversions_count", Long.valueOf(zzagVar.zzc));
                contentValues.put("daily_error_events_count", Long.valueOf(zzagVar.zzd));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzagVar.zze));
                zze2.update("apps", contentValues, "app_id=?", new String[]{str});
                query.close();
                return zzagVar;
            } catch (SQLiteException e) {
                this.zzs.zzau().zzb().zzc("Error updating daily counts. appId", zzem.zzl(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return zzagVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    public final void zzw(String str, byte[] bArr, String str2) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzZ();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (zze().update("apps", contentValues, "app_id = ?", new String[]{str}) != 0) {
                return;
            }
            this.zzs.zzau().zzb().zzb("Failed to update remote config (got 0). appId", zzem.zzl(str));
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzc("Error storing remote config. appId", zzem.zzl(str), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x005c, code lost:
        if (r0 > (com.google.android.gms.measurement.internal.zzae.zzA() + r0)) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzx(com.google.android.gms.internal.measurement.zzfw r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzx(com.google.android.gms.internal.measurement.zzfw, boolean):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzy() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.zze()
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
            com.google.android.gms.measurement.internal.zzfu r0 = r0.zzs     // Catch: java.lang.Throwable -> L61
            com.google.android.gms.measurement.internal.zzem r0 = r0.zzau()     // Catch: java.lang.Throwable -> L61
            com.google.android.gms.measurement.internal.zzek r0 = r0.zzb()     // Catch: java.lang.Throwable -> L61
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r6
            r0.zzb(r1, r2)     // Catch: java.lang.Throwable -> L61
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zzy():java.lang.String");
    }

    public final boolean zzz() {
        return zzab("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }
}
