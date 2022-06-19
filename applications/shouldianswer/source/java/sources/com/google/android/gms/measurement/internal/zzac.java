package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzac.class */
public final class zzac extends zzkb {
    private static final String[] zzb = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzc = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzd = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"};
    private static final String[] zze = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zzf = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzg = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzjx zzk = new zzjx(zzm());
    private final zzad zzj = new zzad(this, zzn(), "google_app_measurement.db");

    public zzac(zzke zzkeVar) {
        super(zzkeVar);
    }

    private final long zza(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m3774c_().rawQuery(str, strArr);
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
                zzr().zzf().zza("Database error", str, e);
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

    private final Object zza(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            zzr().zzf().zza("Loaded invalid null value from database");
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
                zzr().zzf().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            zzr().zzf().zza("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
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

    private final boolean zza(String str, int i, zzbj.zzb zzbVar) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        if (TextUtils.isEmpty(zzbVar.zzc())) {
            zzey zzi2 = zzr().zzi();
            Object zza = zzew.zza(str);
            Integer num = null;
            if (zzbVar.zza()) {
                num = Integer.valueOf(zzbVar.zzb());
            }
            zzi2.zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zza, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] zzbi = zzbVar.zzbi();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbVar.zza() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzc());
        if (zzt().zze(str, zzap.zzbl)) {
            contentValues.put("session_scoped", zzbVar.zzj() ? Boolean.valueOf(zzbVar.zzk()) : null);
        }
        contentValues.put("data", zzbi);
        try {
            if (m3774c_().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert event filter (got -1). appId", zzew.zza(str));
            return true;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing event filter. appId", zzew.zza(str), e);
            return false;
        }
    }

    private final boolean zza(String str, int i, zzbj.zze zzeVar) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        if (TextUtils.isEmpty(zzeVar.zzc())) {
            zzey zzi2 = zzr().zzi();
            Object zza = zzew.zza(str);
            Integer num = null;
            if (zzeVar.zza()) {
                num = Integer.valueOf(zzeVar.zzb());
            }
            zzi2.zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zza, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] zzbi = zzeVar.zzbi();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzeVar.zza() ? Integer.valueOf(zzeVar.zzb()) : null);
        contentValues.put("property_name", zzeVar.zzc());
        if (zzt().zze(str, zzap.zzbl)) {
            contentValues.put("session_scoped", zzeVar.zzg() ? Boolean.valueOf(zzeVar.zzh()) : null);
        }
        contentValues.put("data", zzbi);
        try {
            if (m3774c_().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert property filter (got -1). appId", zzew.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing property filter. appId", zzew.zza(str), e);
            return false;
        }
    }

    private final boolean zzam() {
        return zzn().getDatabasePath("google_app_measurement.db").exists();
    }

    private final long zzb(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m3774c_().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzr().zzf().zza("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final boolean zzc(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        zzak();
        zzd();
        SQLiteDatabase m3774c_ = m3774c_();
        try {
            long zzb2 = zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, zzt().zzb(str, zzap.zzaf)));
            if (zzb2 <= max) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String join = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 140);
            sb3.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb3.append(sb2);
            sb3.append(" order by rowid desc limit -1 offset ?)");
            return m3774c_.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Database error querying filters. appId", zzew.zza(str), e);
            return false;
        }
    }

    /* renamed from: b_ */
    public final void m3775b_() {
        zzak();
        m3774c_().setTransactionSuccessful();
    }

    /* renamed from: c_ */
    public final SQLiteDatabase m3774c_() {
        zzd();
        try {
            return this.zzj.getWritableDatabase();
        } catch (SQLiteException e) {
            zzr().zzi().zza("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006d  */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /* renamed from: d_ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m3773d_() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m3774c_()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L47
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3b java.lang.Throwable -> L66
            if (r0 == 0) goto L2f
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: android.database.sqlite.SQLiteException -> L3b java.lang.Throwable -> L66
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L2d
            r0 = r6
            r0.close()
        L2d:
            r0 = r7
            return r0
        L2f:
            r0 = r6
            if (r0 == 0) goto L39
            r0 = r6
            r0.close()
        L39:
            r0 = 0
            return r0
        L3b:
            r7 = move-exception
            goto L4a
        L3f:
            r5 = move-exception
            r0 = 0
            r6 = r0
            r0 = r5
            r7 = r0
            goto L69
        L47:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L4a:
            r0 = r6
            r5 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: java.lang.Throwable -> L66
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.zza(r1, r2)     // Catch: java.lang.Throwable -> L66
            r0 = r6
            if (r0 == 0) goto L64
            r0 = r6
            r0.close()
        L64:
            r0 = 0
            return r0
        L66:
            r7 = move-exception
            r0 = r5
            r6 = r0
        L69:
            r0 = r6
            if (r0 == 0) goto L73
            r0 = r6
            r0.close()
        L73:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m3773d_():java.lang.String");
    }

    public final long zza(zzbr.zzg zzgVar) {
        zzd();
        zzak();
        Preconditions.checkNotNull(zzgVar);
        Preconditions.checkNotEmpty(zzgVar.zzx());
        byte[] zzbi = zzgVar.zzbi();
        long zza = zzg().zza(zzbi);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzx());
        contentValues.put("metadata_fingerprint", Long.valueOf(zza));
        contentValues.put("metadata", zzbi);
        try {
            m3774c_().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return zza;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing raw event metadata. appId", zzew.zza(zzgVar.zzx()), e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzbr.zzc, java.lang.Long> zza(java.lang.String r8, java.lang.Long r9) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final zzab zza(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
        zzab zzabVar = new zzab();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase m3774c_ = m3774c_();
                Cursor query = m3774c_.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    zzr().zzi().zza("Not updating daily counts, app is not known. appId", zzew.zza(str));
                    if (query != null) {
                        query.close();
                    }
                    return zzabVar;
                }
                if (query.getLong(0) == j) {
                    zzabVar.zzb = query.getLong(1);
                    zzabVar.zza = query.getLong(2);
                    zzabVar.zzc = query.getLong(3);
                    zzabVar.zzd = query.getLong(4);
                    zzabVar.zze = query.getLong(5);
                }
                if (z) {
                    zzabVar.zzb++;
                }
                if (z2) {
                    zzabVar.zza++;
                }
                if (z3) {
                    zzabVar.zzc++;
                }
                if (z4) {
                    zzabVar.zzd++;
                }
                if (z5) {
                    zzabVar.zze++;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(zzabVar.zza));
                contentValues.put("daily_events_count", Long.valueOf(zzabVar.zzb));
                contentValues.put("daily_conversions_count", Long.valueOf(zzabVar.zzc));
                contentValues.put("daily_error_events_count", Long.valueOf(zzabVar.zzd));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzabVar.zze));
                m3774c_.update("apps", contentValues, "app_id=?", new String[]{str});
                if (query != null) {
                    query.close();
                }
                return zzabVar;
            } catch (SQLiteException e) {
                zzr().zzf().zza("Error updating daily counts. appId", zzew.zza(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return zzabVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0243  */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r40v0 */
    /* JADX WARN: Type inference failed for: r40v1 */
    /* JADX WARN: Type inference failed for: r40v2 */
    /* JADX WARN: Type inference failed for: r40v3 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r7v3, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaj zza(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzaj");
    }

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0093: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:30:0x0093 */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zza(long r9) {
        /*
            r8 = this;
            r0 = r8
            r0.zzd()
            r0 = r8
            r0.zzak()
            r0 = r8
            android.database.sqlite.SQLiteDatabase r0 = r0.m3774c_()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteException -> L6f
            java.lang.String r1 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteException -> L6f
            r3 = r2
            r4 = 0
            r5 = r9
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteException -> L6f
            r3[r4] = r5     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteException -> L6f
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteException -> L6f
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L5f java.lang.Throwable -> L91
            if (r0 != 0) goto L46
            r0 = r11
            r12 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: android.database.sqlite.SQLiteException -> L5f java.lang.Throwable -> L91
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzx()     // Catch: android.database.sqlite.SQLiteException -> L5f java.lang.Throwable -> L91
            java.lang.String r1 = "No expired configs for apps with pending events"
            r0.zza(r1)     // Catch: android.database.sqlite.SQLiteException -> L5f java.lang.Throwable -> L91
            r0 = r11
            if (r0 == 0) goto L44
            r0 = r11
            r0.close()
        L44:
            r0 = 0
            return r0
        L46:
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: android.database.sqlite.SQLiteException -> L5f java.lang.Throwable -> L91
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L5c
            r0 = r11
            r0.close()
        L5c:
            r0 = r13
            return r0
        L5f:
            r13 = move-exception
            goto L73
        L64:
            r12 = move-exception
            r0 = 0
            r11 = r0
            r0 = r12
            r13 = r0
            goto L96
        L6f:
            r13 = move-exception
            r0 = 0
            r11 = r0
        L73:
            r0 = r11
            r12 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: java.lang.Throwable -> L91
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: java.lang.Throwable -> L91
            java.lang.String r1 = "Error selecting expired configs"
            r2 = r13
            r0.zza(r1, r2)     // Catch: java.lang.Throwable -> L91
            r0 = r11
            if (r0 == 0) goto L8f
            r0 = r11
            r0.close()
        L8f:
            r0 = 0
            return r0
        L91:
            r13 = move-exception
            r0 = r12
            r11 = r0
        L96:
            r0 = r11
            if (r0 == 0) goto La0
            r0 = r11
            r0.close()
        La0:
            r0 = r13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(long):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzkn> zza(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String):java.util.List");
    }

    public final List<Pair<zzbr.zzg, Long>> zza(String str, int i, int i2) {
        int i3;
        byte[] zzb2;
        zzd();
        zzak();
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m3774c_().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
                if (!query.moveToFirst()) {
                    List<Pair<zzbr.zzg, Long>> emptyList = Collections.emptyList();
                    if (query != null) {
                        query.close();
                    }
                    return emptyList;
                }
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                do {
                    long j = query.getLong(0);
                    try {
                        zzb2 = zzg().zzb(query.getBlob(1));
                    } catch (IOException e) {
                        zzr().zzf().zza("Failed to unzip queued bundle. appId", zzew.zza(str), e);
                        i3 = i4;
                    }
                    if (!arrayList.isEmpty() && zzb2.length + i4 > i2) {
                        break;
                    }
                    try {
                        zzbr.zzg.zza zzaVar = (zzbr.zzg.zza) zzki.zza(zzbr.zzg.zzbf(), zzb2);
                        if (!query.isNull(2)) {
                            zzaVar.zzi(query.getInt(2));
                        }
                        i3 = i4 + zzb2.length;
                        arrayList.add(Pair.create((zzbr.zzg) ((zzfd) zzaVar.zzu()), Long.valueOf(j)));
                    } catch (IOException e2) {
                        zzr().zzf().zza("Failed to merge queued bundle. appId", zzew.zza(str), e2);
                        i3 = i4;
                    }
                    if (!query.moveToNext()) {
                        break;
                    }
                    i4 = i3;
                } while (i3 <= i2);
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e3) {
                zzr().zzf().zza("Error querying bundles. appId", zzew.zza(str), e3);
                List<Pair<zzbr.zzg, Long>> emptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyList2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0108, code lost:
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x010a, code lost:
        zzr().zzf().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0211: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:74:0x0211 */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzkn> zza(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b6, code lost:
        r21 = r0;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bb, code lost:
        zzr().zzf().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzv> zza(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0191  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> zza(java.lang.String r10, java.util.List<java.lang.String> r11) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.util.List):java.util.Map");
    }

    public final void zza(zzaj zzajVar) {
        Preconditions.checkNotNull(zzajVar);
        zzd();
        zzak();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzajVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzajVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzajVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzajVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzajVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzajVar.zzg));
        contentValues.put("last_bundled_day", zzajVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzajVar.zzi);
        contentValues.put("last_sampling_rate", zzajVar.zzj);
        if (zzt().zze(zzajVar.zza, zzap.zzbm)) {
            contentValues.put("current_session_count", Long.valueOf(zzajVar.zze));
        }
        contentValues.put("last_exempt_from_sampling", (zzajVar.zzk == null || !zzajVar.zzk.booleanValue()) ? null : 1L);
        try {
            if (m3774c_().insertWithOnConflict("events", null, contentValues, 5) != -1) {
                return;
            }
            zzr().zzf().zza("Failed to insert/update event aggregates (got -1). appId", zzew.zza(zzajVar.zza));
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing event aggregates. appId", zzew.zza(zzajVar.zza), e);
        }
    }

    public final void zza(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzd();
        zzak();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzc());
        contentValues.put("app_instance_id", zzgVar.zzd());
        contentValues.put("gmp_app_id", zzgVar.zze());
        contentValues.put("resettable_device_id_hash", zzgVar.zzh());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzs()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzj()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzk()));
        contentValues.put("app_version", zzgVar.zzl());
        contentValues.put("app_store", zzgVar.zzn());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzo()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzp()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.zzr()));
        contentValues.put("day", Long.valueOf(zzgVar.zzw()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzx()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzy()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzz()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzt()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzu()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzm()));
        contentValues.put("firebase_instance_id", zzgVar.zzi());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzab()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzaa()));
        contentValues.put("health_monitor_sample", zzgVar.zzac());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzae()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzaf()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(zzgVar.zzag()));
        contentValues.put("admob_app_id", zzgVar.zzf());
        contentValues.put("dynamite_version", Long.valueOf(zzgVar.zzq()));
        if (zzgVar.zzai() != null) {
            if (zzgVar.zzai().size() == 0) {
                zzr().zzi().zza("Safelisted events should not be an empty list. appId", zzgVar.zzc());
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", zzgVar.zzai()));
            }
        }
        if (zzle.zzb() && zzt().zze(zzgVar.zzc(), zzap.zzcc)) {
            contentValues.put("ga_app_id", zzgVar.zzg());
        }
        try {
            SQLiteDatabase m3774c_ = m3774c_();
            if (m3774c_.update("apps", contentValues, "app_id = ?", new String[]{zzgVar.zzc()}) != 0 || m3774c_.insertWithOnConflict("apps", null, contentValues, 5) != -1) {
                return;
            }
            zzr().zzf().zza("Failed to insert/update app (got -1). appId", zzew.zza(zzgVar.zzc()));
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing app. appId", zzew.zza(zzgVar.zzc()), e);
        }
    }

    public final void zza(List<Long> list) {
        zzd();
        zzak();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (!zzam()) {
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
        if (zzb(sb3.toString(), (String[]) null) > 0) {
            zzr().zzi().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            SQLiteDatabase m3774c_ = m3774c_();
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
            sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
            sb4.append(sb2);
            sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
            m3774c_.execSQL(sb4.toString());
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error incrementing retry count. error", e);
        }
    }

    public final boolean zza(zzbr.zzg zzgVar, boolean z) {
        zzd();
        zzak();
        Preconditions.checkNotNull(zzgVar);
        Preconditions.checkNotEmpty(zzgVar.zzx());
        Preconditions.checkState(zzgVar.zzk());
        zzv();
        long currentTimeMillis = zzm().currentTimeMillis();
        if (zzgVar.zzl() < currentTimeMillis - zzx.zzj() || zzgVar.zzl() > zzx.zzj() + currentTimeMillis) {
            zzr().zzi().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzew.zza(zzgVar.zzx()), Long.valueOf(currentTimeMillis), Long.valueOf(zzgVar.zzl()));
        }
        try {
            byte[] zzc2 = zzg().zzc(zzgVar.zzbi());
            zzr().zzx().zza("Saving bundle, size", Integer.valueOf(zzc2.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzgVar.zzx());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzgVar.zzl()));
            contentValues.put("data", zzc2);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzgVar.zzaz()) {
                contentValues.put("retry_count", Integer.valueOf(zzgVar.zzba()));
            }
            try {
                if (m3774c_().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzr().zzf().zza("Failed to insert bundle (got -1). appId", zzew.zza(zzgVar.zzx()));
                return false;
            } catch (SQLiteException e) {
                zzr().zzf().zza("Error storing bundle. appId", zzew.zza(zzgVar.zzx()), e);
                return false;
            }
        } catch (IOException e2) {
            zzr().zzf().zza("Data loss. Failed to serialize bundle. appId", zzew.zza(zzgVar.zzx()), e2);
            return false;
        }
    }

    public final boolean zza(zzak zzakVar, long j, boolean z) {
        zzd();
        zzak();
        Preconditions.checkNotNull(zzakVar);
        Preconditions.checkNotEmpty(zzakVar.zza);
        zzbr.zzc.zza zzb2 = zzbr.zzc.zzj().zzb(zzakVar.zzd);
        Iterator<String> it = zzakVar.zze.iterator();
        while (it.hasNext()) {
            String next = it.next();
            zzbr.zze.zza zza = zzbr.zze.zzh().zza(next);
            zzg().zza(zza, zzakVar.zze.zza(next));
            zzb2.zza(zza);
        }
        byte[] zzbi = ((zzbr.zzc) ((zzfd) zzb2.zzu())).zzbi();
        zzr().zzx().zza("Saving event, name, data size", zzo().zza(zzakVar.zzb), Integer.valueOf(zzbi.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzakVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzakVar.zzb);
        contentValues.put("timestamp", Long.valueOf(zzakVar.zzc));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", zzbi);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m3774c_().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert raw event (got -1). appId", zzew.zza(zzakVar.zza));
            return false;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing raw event. appId", zzew.zza(zzakVar.zza), e);
            return false;
        }
    }

    public final boolean zza(zzkn zzknVar) {
        Preconditions.checkNotNull(zzknVar);
        zzd();
        zzak();
        if (zzc(zzknVar.zza, zzknVar.zzc) == null) {
            if (zzkm.zza(zzknVar.zzc)) {
                if (zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzknVar.zza}) >= 25) {
                    return false;
                }
            } else if (zzt().zze(zzknVar.zza, zzap.zzba)) {
                if (!"_npa".equals(zzknVar.zzc) && zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzknVar.zza, zzknVar.zzb}) >= 25) {
                    return false;
                }
            } else if (zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzknVar.zza, zzknVar.zzb}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzknVar.zza);
        contentValues.put("origin", zzknVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzknVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzknVar.zzd));
        zza(contentValues, "value", zzknVar.zze);
        try {
            if (m3774c_().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert/update user property (got -1). appId", zzew.zza(zzknVar.zza));
            return true;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing user property. appId", zzew.zza(zzknVar.zza), e);
            return true;
        }
    }

    public final boolean zza(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        zzd();
        zzak();
        if (zzc(zzvVar.zza, zzvVar.zzc.zza) != null || zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzvVar.zza}) < 1000) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzvVar.zza);
            contentValues.put("origin", zzvVar.zzb);
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzvVar.zzc.zza);
            zza(contentValues, "value", zzvVar.zzc.zza());
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzvVar.zze));
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzvVar.zzf);
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzvVar.zzh));
            zzp();
            contentValues.put("timed_out_event", zzkm.zza((Parcelable) zzvVar.zzg));
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzvVar.zzd));
            zzp();
            contentValues.put("triggered_event", zzkm.zza((Parcelable) zzvVar.zzi));
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzvVar.zzc.zzb));
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzvVar.zzj));
            zzp();
            contentValues.put("expired_event", zzkm.zza((Parcelable) zzvVar.zzk));
            try {
                if (m3774c_().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                    return true;
                }
                zzr().zzf().zza("Failed to insert/update conditional user property (got -1)", zzew.zza(zzvVar.zza));
                return true;
            } catch (SQLiteException e) {
                zzr().zzf().zza("Error storing conditional user property", zzew.zza(zzvVar.zza), e);
                return true;
            }
        }
        return false;
    }

    public final boolean zza(String str, Long l, long j, zzbr.zzc zzcVar) {
        zzd();
        zzak();
        Preconditions.checkNotNull(zzcVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] zzbi = zzcVar.zzbi();
        zzr().zzx().zza("Saving complex main event, appId, data size", zzo().zza(str), Integer.valueOf(zzbi.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", zzbi);
        try {
            if (m3774c_().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert complex main event (got -1). appId", zzew.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing complex main event. appId", zzew.zza(str), e);
            return false;
        }
    }

    public final long zzaa() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m3774c_().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!rawQuery.moveToFirst()) {
                    if (rawQuery == null) {
                        return -1L;
                    }
                    rawQuery.close();
                    return -1L;
                }
                cursor2 = rawQuery;
                cursor = rawQuery;
                long j = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzr().zzf().zza("Error querying raw events", e);
                if (cursor == null) {
                    return -1L;
                }
                cursor.close();
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 15, insn: 0x0438: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:168:0x0438 */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02bf  */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzg zzb(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1095
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzb(java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    public final List<zzv> zzb(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
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
        return zza(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void zzb(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        try {
            zzr().zzx().zza("Deleted user attribute rows", Integer.valueOf(m3774c_().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error deleting user attribute. appId", zzew.zza(str), zzo().zzc(str2), e);
        }
    }

    public final void zzb(String str, List<zzbj.zza> list) {
        boolean z;
        boolean z2;
        Preconditions.checkNotNull(list);
        for (int i = 0; i < list.size(); i++) {
            zzbj.zza.C3160zza zzbm = list.get(i).zzbm();
            zzbj.zza.C3160zza c3160zza = zzbm;
            if (zzbm.zzb() != 0) {
                c3160zza = zzbm;
                int i2 = 0;
                while (i2 < c3160zza.zzb()) {
                    zzbj.zzb.zza zzbm2 = c3160zza.zzb(i2).zzbm();
                    zzbj.zzb.zza zzaVar = (zzbj.zzb.zza) ((zzfd.zzb) zzbm2.clone());
                    String zzb2 = zzgv.zzb(zzbm2.zza());
                    if (zzb2 != null) {
                        zzaVar.zza(zzb2);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    boolean z3 = z2;
                    for (int i3 = 0; i3 < zzbm2.zzb(); i3++) {
                        zzbj.zzc zza = zzbm2.zza(i3);
                        String zza2 = zzgy.zza(zza.zzg());
                        if (zza2 != null) {
                            zzaVar.zza(i3, (zzbj.zzc) ((zzfd) zza.zzbm().zza(zza2).zzu()));
                            z3 = true;
                        }
                    }
                    zzbj.zza.C3160zza c3160zza2 = c3160zza;
                    if (z3) {
                        c3160zza2 = c3160zza.zza(i2, zzaVar);
                        list.set(i, (zzbj.zza) ((zzfd) c3160zza2.zzu()));
                    }
                    i2++;
                    c3160zza = c3160zza2;
                }
            }
            if (c3160zza.zza() != 0) {
                int i4 = 0;
                while (i4 < c3160zza.zza()) {
                    zzbj.zze zza3 = c3160zza.zza(i4);
                    String zza4 = zzgx.zza(zza3.zzc());
                    zzbj.zza.C3160zza c3160zza3 = c3160zza;
                    if (zza4 != null) {
                        c3160zza3 = c3160zza.zza(i4, zza3.zzbm().zza(zza4));
                        list.set(i, (zzbj.zza) ((zzfd) c3160zza3.zzu()));
                    }
                    i4++;
                    c3160zza = c3160zza3;
                }
            }
        }
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        SQLiteDatabase m3774c_ = m3774c_();
        m3774c_.beginTransaction();
        try {
            zzak();
            zzd();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase m3774c_2 = m3774c_();
            m3774c_2.delete("property_filters", "app_id=?", new String[]{str});
            m3774c_2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzbj.zza zzaVar2 : list) {
                zzak();
                zzd();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzaVar2);
                if (zzaVar2.zza()) {
                    int zzb3 = zzaVar2.zzb();
                    Iterator<zzbj.zzb> it = zzaVar2.zze().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!it.next().zza()) {
                                zzr().zzi().zza("Event filter with no ID. Audience definition ignored. appId, audienceId", zzew.zza(str), Integer.valueOf(zzb3));
                                break;
                            }
                        } else {
                            Iterator<zzbj.zze> it2 = zzaVar2.zzc().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (!it2.next().zza()) {
                                        zzr().zzi().zza("Property filter with no ID. Audience definition ignored. appId, audienceId", zzew.zza(str), Integer.valueOf(zzb3));
                                        break;
                                    }
                                } else {
                                    Iterator<zzbj.zzb> it3 = zzaVar2.zze().iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if (!zza(str, zzb3, it3.next())) {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            z = true;
                                            break;
                                        }
                                    }
                                    boolean z4 = z;
                                    if (z) {
                                        Iterator<zzbj.zze> it4 = zzaVar2.zzc().iterator();
                                        while (true) {
                                            z4 = z;
                                            if (!it4.hasNext()) {
                                                break;
                                            } else if (!zza(str, zzb3, it4.next())) {
                                                z4 = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z4) {
                                        zzak();
                                        zzd();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase m3774c_3 = m3774c_();
                                        m3774c_3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(zzb3)});
                                        m3774c_3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(zzb3)});
                                    }
                                }
                            }
                        }
                    }
                } else {
                    zzr().zzi().zza("Audience with no ID. appId", zzew.zza(str));
                }
            }
            ArrayList arrayList = new ArrayList();
            for (zzbj.zza zzaVar3 : list) {
                arrayList.add(zzaVar3.zza() ? Integer.valueOf(zzaVar3.zzb()) : null);
            }
            zzc(str, arrayList);
            m3774c_.setTransactionSuccessful();
        } finally {
            m3774c_.endTransaction();
        }
    }

    public final long zzc(String str) {
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
        try {
            return m3774c_().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzt().zzb(str, zzap.zzp))))});
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error deleting over the limit events. appId", zzew.zza(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0105: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:44:0x0105 */
    public final zzkn zzc(String str, String str2) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        SQLiteException e;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        try {
            try {
                cursor = m3774c_().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        try {
            if (!cursor.moveToFirst()) {
                if (cursor == null) {
                    return null;
                }
                cursor.close();
                return null;
            }
            try {
                zzkn zzknVar = new zzkn(str, cursor.getString(2), str2, cursor.getLong(0), zza(cursor, 1));
                if (cursor.moveToNext()) {
                    zzr().zzf().zza("Got multiple records for user property, expected one. appId", zzew.zza(str));
                }
                if (cursor != null) {
                    cursor.close();
                }
                return zzknVar;
            } catch (SQLiteException e3) {
                e = e3;
                zzr().zzf().zza("Error querying user property. appId", zzew.zza(str), zzo().zzc(str2), e);
                if (cursor == null) {
                    return null;
                }
                cursor.close();
                return null;
            }
        } catch (SQLiteException e4) {
            e = e4;
        } catch (Throwable th4) {
            th = th4;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0204  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzv zzd(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzd(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzv");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] zzd(java.lang.String r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            r0 = r9
            r0.zzd()
            r0 = r9
            r0.zzak()
            r0 = r9
            android.database.sqlite.SQLiteDatabase r0 = r0.m3774c_()     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteException -> L8b
            java.lang.String r1 = "apps"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteException -> L8b
            r3 = r2
            r4 = 0
            java.lang.String r5 = "remote_config"
            r3[r4] = r5     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteException -> L8b
            java.lang.String r3 = "app_id=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteException -> L8b
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteException -> L8b
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteException -> L8b
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> Lb0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L4a
            r0 = r11
            if (r0 == 0) goto L48
            r0 = r11
            r0.close()
        L48:
            r0 = 0
            return r0
        L4a:
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = 0
            byte[] r0 = r0.getBlob(r1)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> Lb0
            r14 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> Lb0
            if (r0 == 0) goto L73
            r0 = r11
            r12 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> Lb0
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> Lb0
            java.lang.String r1 = "Got multiple records for app config, expected one. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzew.zza(r2)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> Lb0
            r0.zza(r1, r2)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> Lb0
        L73:
            r0 = r11
            if (r0 == 0) goto L7d
            r0 = r11
            r0.close()
        L7d:
            r0 = r14
            return r0
        L80:
            r14 = move-exception
            goto L8f
        L85:
            r10 = move-exception
            r0 = 0
            r12 = r0
            goto Lb1
        L8b:
            r14 = move-exception
            r0 = 0
            r11 = r0
        L8f:
            r0 = r11
            r12 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: java.lang.Throwable -> Lb0
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r1 = "Error querying remote config. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzew.zza(r2)     // Catch: java.lang.Throwable -> Lb0
            r3 = r14
            r0.zza(r1, r2, r3)     // Catch: java.lang.Throwable -> Lb0
            r0 = r11
            if (r0 == 0) goto Lae
            r0 = r11
            r0.close()
        Lae:
            r0 = 0
            return r0
        Lb0:
            r10 = move-exception
        Lb1:
            r0 = r12
            if (r0 == 0) goto Lbb
            r0 = r12
            r0.close()
        Lbb:
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzd(java.lang.String):byte[]");
    }

    public final int zze(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        try {
            return m3774c_().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error deleting conditional property", zzew.zza(str), zzo().zzc(str2), e);
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010b  */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> zze(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zze(java.lang.String):java.util.Map");
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0110  */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.zzbr.zzi> zzf(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzf(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0160  */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbj.zzb>> zzf(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzf(java.lang.String, java.lang.String):java.util.Map");
    }

    public final void zzf() {
        zzak();
        m3774c_().beginTransaction();
    }

    public final long zzg(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0160  */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbj.zze>> zzg(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzg(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    public final long zzh(String str, String str2) {
        char c;
        SQLiteException e;
        ContentValues contentValues;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        SQLiteDatabase m3774c_ = m3774c_();
        m3774c_.beginTransaction();
        try {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 32);
                sb.append("select ");
                sb.append(str2);
                sb.append(" from app2 where app_id=?");
                ?? zza = zza(sb.toString(), new String[]{str}, -1L);
                c = zza;
                if (zza == -1) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put("first_open_count", (Integer) 0);
                    contentValues2.put("previous_install_count", (Integer) 0);
                    if (m3774c_.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                        zzr().zzf().zza("Failed to insert column (got -1). appId", zzew.zza(str), str2);
                        m3774c_.endTransaction();
                        return -1L;
                    }
                    c = 0;
                }
                try {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put(str2, Long.valueOf(1 + c));
                } catch (SQLiteException e2) {
                    e = e2;
                    zzr().zzf().zza("Error inserting column. appId", zzew.zza(str), str2, e);
                    m3774c_.endTransaction();
                    return c;
                }
            } catch (SQLiteException e3) {
                e = e3;
                c = 0;
            }
            if (m3774c_.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzr().zzf().zza("Failed to update column (got 0). appId", zzew.zza(str), str2);
                m3774c_.endTransaction();
                return -1L;
            }
            m3774c_.setTransactionSuccessful();
            m3774c_.endTransaction();
            return c;
        } catch (Throwable th) {
            m3774c_.endTransaction();
            throw th;
        }
    }

    public final void zzh() {
        zzak();
        m3774c_().endTransaction();
    }

    public final boolean zzk() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    public final void zzv() {
        int delete;
        zzd();
        zzak();
        if (!zzam()) {
            return;
        }
        long zza = zzs().zzf.zza();
        long elapsedRealtime = zzm().elapsedRealtime();
        if (Math.abs(elapsedRealtime - zza) <= zzap.zzy.zza(null).longValue()) {
            return;
        }
        zzs().zzf.zza(elapsedRealtime);
        zzd();
        zzak();
        if (!zzam() || (delete = m3774c_().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzm().currentTimeMillis()), String.valueOf(zzx.zzj())})) <= 0) {
            return;
        }
        zzr().zzx().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
    }

    public final long zzw() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    public final long zzx() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final boolean zzy() {
        return zzb("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzz() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }
}
