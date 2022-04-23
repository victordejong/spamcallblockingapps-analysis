package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Pair;
import com.apptentive.android.sdk.util.Constants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzfu;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzyx;
import com.google.android.gms.internal.measurement.zzyy;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.model.BlockingOptionFields;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzq.class */
public final class zzq extends zzez {
    private static final String[] zzahi = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};
    private static final String[] zzahj = {FirebaseAnalytics.Param.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzahk = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"};
    private static final String[] zzahl = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zzahm = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzahn = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzev zzahp = new zzev(zzbx());
    private final zzt zzaho = new zzt(this, getContext(), "google_app_measurement.db");

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(zzfa zzfaVar) {
        super(zzfaVar);
    }

    @WorkerThread
    private final long zza(String str, String[] strArr) {
        Throwable th;
        SQLiteException e;
        Cursor cursor = null;
        cursor = null;
        try {
            try {
                cursor = getWritableDatabase().rawQuery(str, strArr);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
        }
        try {
            if (cursor.moveToFirst()) {
                long j = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e3) {
            e = e3;
            zzgo().zzjd().zze("Database error", str, e);
            throw e;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    private final long zza(String str, String[] strArr, long j) {
        Throwable th;
        SQLiteException e;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = getWritableDatabase().rawQuery(str, strArr);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
        }
        try {
            if (cursor.moveToFirst()) {
                long j2 = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j2;
            }
            if (cursor != null) {
                cursor.close();
            }
            return j;
        } catch (SQLiteException e3) {
            e = e3;
            zzgo().zzjd().zze("Database error", str, e);
            throw e;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @WorkerThread
    @VisibleForTesting
    private final Object zza(Cursor cursor, int i) {
        int type = cursor.getType(i);
        switch (type) {
            case 0:
                zzgo().zzjd().zzbx("Loaded invalid null value from database");
                return null;
            case 1:
                return Long.valueOf(cursor.getLong(i));
            case 2:
                return Double.valueOf(cursor.getDouble(i));
            case 3:
                return cursor.getString(i);
            case 4:
                zzgo().zzjd().zzbx("Loaded invalid blob type value, ignoring it");
                return null;
            default:
                zzgo().zzjd().zzg("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
        }
    }

    @WorkerThread
    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put(str, (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    @WorkerThread
    private final boolean zza(String str, int i, zzfv zzfvVar) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfvVar);
        if (TextUtils.isEmpty(zzfvVar.zzavf)) {
            zzgo().zzjg().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzap.zzbv(str), Integer.valueOf(i), String.valueOf(zzfvVar.zzave));
            return false;
        }
        try {
            byte[] bArr = new byte[zzfvVar.zzvu()];
            zzyy zzk = zzyy.zzk(bArr, 0, bArr.length);
            zzfvVar.zza(zzk);
            zzk.zzyt();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzfvVar.zzave);
            contentValues.put("event_name", zzfvVar.zzavf);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert event filter (got -1). appId", zzap.zzbv(str));
                return true;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing event filter. appId", zzap.zzbv(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Configuration loss. Failed to serialize event filter. appId", zzap.zzbv(str), e2);
            return false;
        }
    }

    @WorkerThread
    private final boolean zza(String str, int i, zzfy zzfyVar) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfyVar);
        if (TextUtils.isEmpty(zzfyVar.zzavu)) {
            zzgo().zzjg().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzap.zzbv(str), Integer.valueOf(i), String.valueOf(zzfyVar.zzave));
            return false;
        }
        try {
            byte[] bArr = new byte[zzfyVar.zzvu()];
            zzyy zzk = zzyy.zzk(bArr, 0, bArr.length);
            zzfyVar.zza(zzk);
            zzk.zzyt();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzfyVar.zzave);
            contentValues.put("property_name", zzfyVar.zzavu);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert property filter (got -1). appId", zzap.zzbv(str));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing property filter. appId", zzap.zzbv(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Configuration loss. Failed to serialize property filter. appId", zzap.zzbv(str), e2);
            return false;
        }
    }

    private final boolean zza(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        zzcl();
        zzaf();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            long zza = zza("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, zzgq().zzb(str, zzaf.zzaki)));
            if (zza <= max) {
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
            return writableDatabase.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Database error querying filters. appId", zzap.zzbv(str), e);
            return false;
        }
    }

    private final boolean zzil() {
        return getContext().getDatabasePath("google_app_measurement.db").exists();
    }

    @WorkerThread
    public final void beginTransaction() {
        zzcl();
        getWritableDatabase().beginTransaction();
    }

    @WorkerThread
    public final void endTransaction() {
        zzcl();
        getWritableDatabase().endTransaction();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    @VisibleForTesting
    public final SQLiteDatabase getWritableDatabase() {
        zzaf();
        try {
            return this.zzaho.getWritableDatabase();
        } catch (SQLiteException e) {
            zzgo().zzjg().zzg("Error opening database", e);
            throw e;
        }
    }

    @WorkerThread
    public final void setTransactionSuccessful() {
        zzcl();
        getWritableDatabase().setTransactionSuccessful();
    }

    public final long zza(zzgi zzgiVar) throws IOException {
        long j;
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzgiVar);
        Preconditions.checkNotEmpty(zzgiVar.zztt);
        try {
            byte[] bArr = new byte[zzgiVar.zzvu()];
            zzyy zzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgiVar.zza(zzk);
            zzk.zzyt();
            zzfg zzjo = zzjo();
            Preconditions.checkNotNull(bArr);
            zzjo.zzgm().zzaf();
            MessageDigest messageDigest = zzfk.getMessageDigest();
            if (messageDigest == null) {
                zzjo.zzgo().zzjd().zzbx("Failed to get MD5");
                j = 0;
            } else {
                j = zzfk.zzc(messageDigest.digest(bArr));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzgiVar.zztt);
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("metadata", bArr);
            try {
                getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return j;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing raw event metadata. appId", zzap.zzbv(zzgiVar.zztt), e);
                throw e;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Data loss. Failed to serialize event metadata. appId", zzap.zzbv(zzgiVar.zztt), e2);
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzgf, java.lang.Long> zza(java.lang.String r8, java.lang.Long r9) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    @WorkerThread
    public final zzr zza(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Throwable th;
        SQLiteException e;
        SQLiteDatabase writableDatabase;
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        zzr zzrVar = new zzr();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                writableDatabase = getWritableDatabase();
                cursor = writableDatabase.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
            } catch (SQLiteException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (!cursor.moveToFirst()) {
                zzgo().zzjg().zzg("Not updating daily counts, app is not known. appId", zzap.zzbv(str));
                if (cursor != null) {
                    cursor.close();
                }
                return zzrVar;
            }
            if (cursor.getLong(0) == j) {
                zzrVar.zzahr = cursor.getLong(1);
                zzrVar.zzahq = cursor.getLong(2);
                zzrVar.zzahs = cursor.getLong(3);
                zzrVar.zzaht = cursor.getLong(4);
                zzrVar.zzahu = cursor.getLong(5);
            }
            if (z) {
                zzrVar.zzahr++;
            }
            if (z2) {
                zzrVar.zzahq++;
            }
            if (z3) {
                zzrVar.zzahs++;
            }
            if (z4) {
                zzrVar.zzaht++;
            }
            if (z5) {
                zzrVar.zzahu++;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("day", Long.valueOf(j));
            contentValues.put("daily_public_events_count", Long.valueOf(zzrVar.zzahq));
            contentValues.put("daily_events_count", Long.valueOf(zzrVar.zzahr));
            contentValues.put("daily_conversions_count", Long.valueOf(zzrVar.zzahs));
            contentValues.put("daily_error_events_count", Long.valueOf(zzrVar.zzaht));
            contentValues.put("daily_realtime_events_count", Long.valueOf(zzrVar.zzahu));
            writableDatabase.update("apps", contentValues, "app_id=?", new String[]{str});
            if (cursor != null) {
                cursor.close();
            }
            return zzrVar;
        } catch (SQLiteException e3) {
            e = e3;
            cursor2 = cursor;
            zzgo().zzjd().zze("Error updating daily counts. appId", zzap.zzbv(str), e);
            if (cursor != null) {
                cursor.close();
            }
            return zzrVar;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public final void zza(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzaf();
        zzcl();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzal());
        contentValues.put("app_instance_id", zzgVar.getAppInstanceId());
        contentValues.put("gmp_app_id", zzgVar.getGmpAppId());
        contentValues.put("resettable_device_id_hash", zzgVar.zzgx());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzhe()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzgy()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzgz()));
        contentValues.put("app_version", zzgVar.zzak());
        contentValues.put("app_store", zzgVar.zzhb());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzhc()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzhd()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.isMeasurementEnabled()));
        contentValues.put("day", Long.valueOf(zzgVar.zzhi()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzhj()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzhk()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzhl()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzhf()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzhg()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzha()));
        contentValues.put("firebase_instance_id", zzgVar.getFirebaseInstanceId());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzhn()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzhm()));
        contentValues.put("health_monitor_sample", zzgVar.zzho());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzhq()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzhr()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(zzgVar.zzhs()));
        contentValues.put("admob_app_id", zzgVar.zzgw());
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase.update("apps", contentValues, "app_id = ?", new String[]{zzgVar.zzal()}) == 0 && writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzgo().zzjd().zzg("Failed to insert/update app (got -1). appId", zzap.zzbv(zzgVar.zzal()));
            }
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing app. appId", zzap.zzbv(zzgVar.zzal()), e);
        }
    }

    @WorkerThread
    public final void zza(zzz zzzVar) {
        Preconditions.checkNotNull(zzzVar);
        zzaf();
        zzcl();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzzVar.zztt);
        contentValues.put("name", zzzVar.name);
        contentValues.put("lifetime_count", Long.valueOf(zzzVar.zzaie));
        contentValues.put("current_bundle_count", Long.valueOf(zzzVar.zzaif));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzzVar.zzaig));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzzVar.zzaih));
        contentValues.put("last_bundled_day", zzzVar.zzaii);
        contentValues.put("last_sampled_complex_event_id", zzzVar.zzaij);
        contentValues.put("last_sampling_rate", zzzVar.zzaik);
        contentValues.put("last_exempt_from_sampling", (zzzVar.zzail == null || !zzzVar.zzail.booleanValue()) ? null : 1L);
        try {
            if (getWritableDatabase().insertWithOnConflict(Constants.PREF_KEY_RATING_EVENTS, null, contentValues, 5) == -1) {
                zzgo().zzjd().zzg("Failed to insert/update event aggregates (got -1). appId", zzap.zzbv(zzzVar.zztt));
            }
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing event aggregates. appId", zzap.zzbv(zzzVar.zztt), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zza(String str, zzfu[] zzfuVarArr) {
        boolean z;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfuVarArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzcl();
            zzaf();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase writableDatabase2 = getWritableDatabase();
            writableDatabase2.delete("property_filters", "app_id=?", new String[]{str});
            writableDatabase2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzfu zzfuVar : zzfuVarArr) {
                zzcl();
                zzaf();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzfuVar);
                Preconditions.checkNotNull(zzfuVar.zzava);
                Preconditions.checkNotNull(zzfuVar.zzauz);
                if (zzfuVar.zzauy == null) {
                    zzgo().zzjg().zzg("Audience with no ID. appId", zzap.zzbv(str));
                } else {
                    int intValue = zzfuVar.zzauy.intValue();
                    zzfv[] zzfvVarArr = zzfuVar.zzava;
                    int length = zzfvVarArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            zzfy[] zzfyVarArr = zzfuVar.zzauz;
                            int length2 = zzfyVarArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length2) {
                                    zzfv[] zzfvVarArr2 = zzfuVar.zzava;
                                    int length3 = zzfvVarArr2.length;
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= length3) {
                                            z = true;
                                            break;
                                        } else if (!zza(str, intValue, zzfvVarArr2[i3])) {
                                            z = false;
                                            break;
                                        } else {
                                            i3++;
                                        }
                                    }
                                    boolean z2 = z;
                                    if (z) {
                                        zzfy[] zzfyVarArr2 = zzfuVar.zzauz;
                                        int length4 = zzfyVarArr2.length;
                                        int i4 = 0;
                                        while (true) {
                                            z2 = z;
                                            if (i4 >= length4) {
                                                break;
                                            } else if (!zza(str, intValue, zzfyVarArr2[i4])) {
                                                z2 = false;
                                                break;
                                            } else {
                                                i4++;
                                            }
                                        }
                                    }
                                    if (!z2) {
                                        zzcl();
                                        zzaf();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase writableDatabase3 = getWritableDatabase();
                                        writableDatabase3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                                        writableDatabase3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                                    }
                                } else if (zzfyVarArr[i2].zzave == null) {
                                    zzgo().zzjg().zze("Property filter with no ID. Audience definition ignored. appId, audienceId", zzap.zzbv(str), zzfuVar.zzauy);
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                        } else if (zzfvVarArr[i].zzave == null) {
                            zzgo().zzjg().zze("Event filter with no ID. Audience definition ignored. appId, audienceId", zzap.zzbv(str), zzfuVar.zzauy);
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (zzfu zzfuVar2 : zzfuVarArr) {
                arrayList.add(zzfuVar2.zzauy);
            }
            zza(str, arrayList);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    @WorkerThread
    public final boolean zza(zzgi zzgiVar, boolean z) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzgiVar);
        Preconditions.checkNotEmpty(zzgiVar.zztt);
        Preconditions.checkNotNull(zzgiVar.zzaxf);
        zzif();
        long currentTimeMillis = zzbx().currentTimeMillis();
        if (zzgiVar.zzaxf.longValue() < currentTimeMillis - zzn.zzhw() || zzgiVar.zzaxf.longValue() > zzn.zzhw() + currentTimeMillis) {
            zzgo().zzjg().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzap.zzbv(zzgiVar.zztt), Long.valueOf(currentTimeMillis), zzgiVar.zzaxf);
        }
        try {
            byte[] bArr = new byte[zzgiVar.zzvu()];
            zzyy zzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgiVar.zza(zzk);
            zzk.zzyt();
            byte[] zzb = zzjo().zzb(bArr);
            zzgo().zzjl().zzg("Saving bundle, size", Integer.valueOf(zzb.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzgiVar.zztt);
            contentValues.put("bundle_end_timestamp", zzgiVar.zzaxf);
            contentValues.put("data", zzb);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzgiVar.zzayc != null) {
                contentValues.put("retry_count", zzgiVar.zzayc);
            }
            try {
                if (getWritableDatabase().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert bundle (got -1). appId", zzap.zzbv(zzgiVar.zztt));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing bundle. appId", zzap.zzbv(zzgiVar.zztt), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Data loss. Failed to serialize bundle. appId", zzap.zzbv(zzgiVar.zztt), e2);
            return false;
        }
    }

    @WorkerThread
    public final boolean zza(zzfj zzfjVar) {
        Preconditions.checkNotNull(zzfjVar);
        zzaf();
        zzcl();
        if (zzi(zzfjVar.zztt, zzfjVar.name) == null) {
            if (!zzfk.zzcq(zzfjVar.name)) {
                long zza = zza("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzfjVar.zztt, zzfjVar.origin});
                if (zzgq().zze(zzfjVar.zztt, zzaf.zzalj)) {
                    if (!"_ap".equals(zzfjVar.name) && zza >= 25) {
                        return false;
                    }
                } else if (zza >= 25) {
                    return false;
                }
            } else if (zza("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzfjVar.zztt}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzfjVar.zztt);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, zzfjVar.origin);
        contentValues.put("name", zzfjVar.name);
        contentValues.put("set_timestamp", Long.valueOf(zzfjVar.zzaue));
        zza(contentValues, FirebaseAnalytics.Param.VALUE, zzfjVar.value);
        try {
            if (getWritableDatabase().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzgo().zzjd().zzg("Failed to insert/update user property (got -1). appId", zzap.zzbv(zzfjVar.zztt));
            return true;
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing user property. appId", zzap.zzbv(zzfjVar.zztt), e);
            return true;
        }
    }

    @WorkerThread
    public final boolean zza(zzl zzlVar) {
        Preconditions.checkNotNull(zzlVar);
        zzaf();
        zzcl();
        if (zzi(zzlVar.packageName, zzlVar.zzahb.name) == null && zza("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzlVar.packageName}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzlVar.packageName);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, zzlVar.origin);
        contentValues.put("name", zzlVar.zzahb.name);
        zza(contentValues, FirebaseAnalytics.Param.VALUE, zzlVar.zzahb.getValue());
        contentValues.put(BlockingOptionFields.ACTIVE, Boolean.valueOf(zzlVar.active));
        contentValues.put("trigger_event_name", zzlVar.triggerEventName);
        contentValues.put("trigger_timeout", Long.valueOf(zzlVar.triggerTimeout));
        zzgm();
        contentValues.put("timed_out_event", zzfk.zza(zzlVar.zzahc));
        contentValues.put("creation_timestamp", Long.valueOf(zzlVar.creationTimestamp));
        zzgm();
        contentValues.put("triggered_event", zzfk.zza(zzlVar.zzahd));
        contentValues.put("triggered_timestamp", Long.valueOf(zzlVar.zzahb.zzaue));
        contentValues.put("time_to_live", Long.valueOf(zzlVar.timeToLive));
        zzgm();
        contentValues.put("expired_event", zzfk.zza(zzlVar.zzahe));
        try {
            if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzgo().zzjd().zzg("Failed to insert/update conditional user property (got -1)", zzap.zzbv(zzlVar.packageName));
            return true;
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing conditional user property", zzap.zzbv(zzlVar.packageName), e);
            return true;
        }
    }

    public final boolean zza(zzy zzyVar, long j, boolean z) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzyVar);
        Preconditions.checkNotEmpty(zzyVar.zztt);
        zzgf zzgfVar = new zzgf();
        zzgfVar.zzawv = Long.valueOf(zzyVar.zzaic);
        zzgfVar.zzawt = new zzgg[zzyVar.zzaid.size()];
        Iterator<String> it = zzyVar.zzaid.iterator();
        int i = 0;
        while (it.hasNext()) {
            String next = it.next();
            zzgg zzggVar = new zzgg();
            zzgfVar.zzawt[i] = zzggVar;
            zzggVar.name = next;
            zzjo().zza(zzggVar, zzyVar.zzaid.get(next));
            i++;
        }
        try {
            byte[] bArr = new byte[zzgfVar.zzvu()];
            zzyy zzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgfVar.zza(zzk);
            zzk.zzyt();
            zzgo().zzjl().zze("Saving event, name, data size", zzgl().zzbs(zzyVar.name), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzyVar.zztt);
            contentValues.put("name", zzyVar.name);
            contentValues.put(AppMeasurement.Param.TIMESTAMP, Long.valueOf(zzyVar.timestamp));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (getWritableDatabase().insert("raw_events", null, contentValues) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert raw event (got -1). appId", zzap.zzbv(zzyVar.zztt));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing raw event. appId", zzap.zzbv(zzyVar.zztt), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Data loss. Failed to serialize event params/data. appId", zzap.zzbv(zzyVar.zztt), e2);
            return false;
        }
    }

    public final boolean zza(String str, Long l, long j, zzgf zzgfVar) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzgfVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        try {
            byte[] bArr = new byte[zzgfVar.zzvu()];
            zzyy zzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgfVar.zza(zzk);
            zzk.zzyt();
            zzgo().zzjl().zze("Saving complex main event, appId, data size", zzgl().zzbs(str), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("event_id", l);
            contentValues.put("children_to_process", Long.valueOf(j));
            contentValues.put("main_event", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert complex main event (got -1). appId", zzap.zzbv(str));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing complex main event. appId", zzap.zzbv(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zzd("Data loss. Failed to serialize event params/data. appId, eventId", zzap.zzbv(str), l, e2);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzah(long r9) {
        /*
            r8 = this;
            r0 = r8
            r0.zzaf()
            r0 = r8
            r0.zzcl()
            r0 = r8
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            java.lang.String r1 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            r3 = r2
            r4 = 0
            r5 = r9
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            r3[r4] = r5     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            if (r0 != 0) goto L_0x0046
            r0 = r11
            r12 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzgo()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjl()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            java.lang.String r1 = "No expired configs for apps with pending events"
            r0.zzbx(r1)     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            r0 = r11
            if (r0 == 0) goto L_0x0044
            r0 = r11
            r0.close()
        L_0x0044:
            r0 = 0
            return r0
        L_0x0046:
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x005c
            r0 = r11
            r0.close()
        L_0x005c:
            r0 = r13
            return r0
        L_0x005f:
            r13 = move-exception
            goto L_0x006f
        L_0x0064:
            r11 = move-exception
            r0 = 0
            r12 = r0
            goto L_0x008e
        L_0x006b:
            r13 = move-exception
            r0 = 0
            r11 = r0
        L_0x006f:
            r0 = r11
            r12 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzgo()     // Catch: all -> 0x008d
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjd()     // Catch: all -> 0x008d
            java.lang.String r1 = "Error selecting expired configs"
            r2 = r13
            r0.zzg(r1, r2)     // Catch: all -> 0x008d
            r0 = r11
            if (r0 == 0) goto L_0x008b
            r0 = r11
            r0.close()
        L_0x008b:
            r0 = 0
            return r0
        L_0x008d:
            r11 = move-exception
        L_0x008e:
            r0 = r12
            if (r0 == 0) goto L_0x009a
            r0 = r12
            r0.close()
        L_0x009a:
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzah(long):java.lang.String");
    }

    @WorkerThread
    public final List<Pair<zzgi, Long>> zzb(String str, int i, int i2) {
        Throwable th;
        SQLiteException e;
        int i3;
        byte[] zza;
        zzaf();
        zzcl();
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = getWritableDatabase().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
        }
        try {
            if (!cursor.moveToFirst()) {
                List<Pair<zzgi, Long>> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            do {
                long j = cursor.getLong(0);
                try {
                    zza = zzjo().zza(cursor.getBlob(1));
                } catch (IOException e3) {
                    zzgo().zzjd().zze("Failed to unzip queued bundle. appId", zzap.zzbv(str), e3);
                    i3 = i4;
                }
                if (!arrayList.isEmpty() && zza.length + i4 > i2) {
                    break;
                }
                zzyx zzj = zzyx.zzj(zza, 0, zza.length);
                zzgi zzgiVar = new zzgi();
                try {
                    zzgiVar.zza(zzj);
                    if (!cursor.isNull(2)) {
                        zzgiVar.zzayc = Integer.valueOf(cursor.getInt(2));
                    }
                    i3 = i4 + zza.length;
                    arrayList.add(Pair.create(zzgiVar, Long.valueOf(j)));
                } catch (IOException e4) {
                    zzgo().zzjd().zze("Failed to merge queued bundle. appId", zzap.zzbv(str), e4);
                    i3 = i4;
                }
                if (!cursor.moveToNext()) {
                    break;
                }
                i4 = i3;
            } while (i3 <= i2);
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (SQLiteException e5) {
            e = e5;
            zzgo().zzjd().zze("Error querying bundles. appId", zzap.zzbv(str), e);
            cursor2 = cursor;
            List<Pair<zzgi, Long>> emptyList2 = Collections.emptyList();
            if (cursor != null) {
                cursor.close();
            }
            return emptyList2;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x010c, code lost:
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x010e, code lost:
        zzgo().zzjd().zzg("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0211: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:74:0x0211 */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzfj> zzb(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzb(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a9, code lost:
        zzgo().zzjd().zzg("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzl> zzb(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzb(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x013c  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzfj> zzbk(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzbk(java.lang.String):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01ff A[Catch: all -> 0x02f0, SQLiteException -> 0x02f4, TRY_ENTER, TryCatch #7 {SQLiteException -> 0x02f4, all -> 0x02f0, blocks: (B:15:0x00ec, B:17:0x017f, B:22:0x0197, B:26:0x01ff, B:28:0x020c, B:32:0x0257, B:34:0x0263, B:36:0x0274, B:41:0x028c, B:45:0x02a1, B:49:0x02b0, B:51:0x02d1), top: B:79:0x00ec }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0257 A[Catch: all -> 0x02f0, SQLiteException -> 0x02f4, TRY_ENTER, TryCatch #7 {SQLiteException -> 0x02f4, all -> 0x02f0, blocks: (B:15:0x00ec, B:17:0x017f, B:22:0x0197, B:26:0x01ff, B:28:0x020c, B:32:0x0257, B:34:0x0263, B:36:0x0274, B:41:0x028c, B:45:0x02a1, B:49:0x02b0, B:51:0x02d1), top: B:79:0x00ec }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02d1 A[Catch: all -> 0x02f0, SQLiteException -> 0x02f4, TryCatch #7 {SQLiteException -> 0x02f4, all -> 0x02f0, blocks: (B:15:0x00ec, B:17:0x017f, B:22:0x0197, B:26:0x01ff, B:28:0x020c, B:32:0x0257, B:34:0x0263, B:36:0x0274, B:41:0x028c, B:45:0x02a1, B:49:0x02b0, B:51:0x02d1), top: B:79:0x00ec }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x033b  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzg zzbl(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 835
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzbl(java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    public final long zzbm(String str) {
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        try {
            return getWritableDatabase().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzgq().zzb(str, zzaf.zzajs))))});
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error deleting over the limit events. appId", zzap.zzbv(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b5  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] zzbn(java.lang.String r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            r0 = r9
            r0.zzaf()
            r0 = r9
            r0.zzcl()
            r0 = r9
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            java.lang.String r1 = "apps"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r3 = r2
            r4 = 0
            java.lang.String r5 = "remote_config"
            r3[r4] = r5     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            java.lang.String r3 = "app_id=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x004a
            r0 = r11
            if (r0 == 0) goto L_0x0048
            r0 = r11
            r0.close()
        L_0x0048:
            r0 = 0
            return r0
        L_0x004a:
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = 0
            byte[] r0 = r0.getBlob(r1)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            r14 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToNext()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            if (r0 == 0) goto L_0x0073
            r0 = r11
            r12 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzgo()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjd()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            java.lang.String r1 = "Got multiple records for app config, expected one. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzap.zzbv(r2)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            r0.zzg(r1, r2)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
        L_0x0073:
            r0 = r11
            if (r0 == 0) goto L_0x007d
            r0 = r11
            r0.close()
        L_0x007d:
            r0 = r14
            return r0
        L_0x0080:
            r14 = move-exception
            goto L_0x008f
        L_0x0085:
            r10 = move-exception
            r0 = 0
            r12 = r0
            goto L_0x00b1
        L_0x008b:
            r14 = move-exception
            r0 = 0
            r11 = r0
        L_0x008f:
            r0 = r11
            r12 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzgo()     // Catch: all -> 0x00b0
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjd()     // Catch: all -> 0x00b0
            java.lang.String r1 = "Error querying remote config. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzap.zzbv(r2)     // Catch: all -> 0x00b0
            r3 = r14
            r0.zze(r1, r2, r3)     // Catch: all -> 0x00b0
            r0 = r11
            if (r0 == 0) goto L_0x00ae
            r0 = r11
            r0.close()
        L_0x00ae:
            r0 = 0
            return r0
        L_0x00b0:
            r10 = move-exception
        L_0x00b1:
            r0 = r12
            if (r0 == 0) goto L_0x00bb
            r0 = r12
            r0.close()
        L_0x00bb:
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzbn(java.lang.String):byte[]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.zzgj> zzbo(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzbo(java.lang.String):java.util.Map");
    }

    public final long zzbp(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    @WorkerThread
    public final List<zzl> zzc(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
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
        return zzb(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    @VisibleForTesting
    public final void zzc(List<Long> list) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzil()) {
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
            if (zza(sb3.toString(), (String[]) null) > 0) {
                zzgo().zzjg().zzbx("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                writableDatabase.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                zzgo().zzjd().zzg("Error incrementing retry count. error", e);
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 34, insn: 0x01e5: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r34 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:76:0x01e5 */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzz zzg(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzg(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzz");
    }

    @Override // com.google.android.gms.measurement.internal.zzez
    protected final boolean zzgt() {
        return false;
    }

    @WorkerThread
    public final void zzh(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            zzgo().zzjl().zzg("Deleted user attribute rows", Integer.valueOf(getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzgo().zzjd().zzd("Error deleting user attribute. appId", zzap.zzbv(str), zzgl().zzbu(str2), e);
        }
    }

    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0109: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:45:0x0109 */
    @WorkerThread
    public final zzfj zzi(String str, String str2) {
        Cursor cursor;
        Throwable th;
        SQLiteException e;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            try {
                cursor = getWritableDatabase().query("user_attributes", new String[]{"set_timestamp", FirebaseAnalytics.Param.VALUE, FirebaseAnalytics.Param.ORIGIN}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        try {
            if (cursor.moveToFirst()) {
                try {
                    zzfj zzfjVar = new zzfj(str, cursor.getString(2), str2, cursor.getLong(0), zza(cursor, 1));
                    if (cursor.moveToNext()) {
                        zzgo().zzjd().zzg("Got multiple records for user property, expected one. appId", zzap.zzbv(str));
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return zzfjVar;
                } catch (SQLiteException e3) {
                    e = e3;
                    zzgo().zzjd().zzd("Error querying user property. appId", zzap.zzbv(str), zzgl().zzbu(str2), e);
                    if (cursor == null) {
                        return null;
                    }
                    cursor.close();
                    return null;
                }
            } else if (cursor == null) {
                return null;
            } else {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzid() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x003f, SQLiteException -> 0x0045
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x003b, all -> 0x0064
            if (r0 == 0) goto L_0x002f
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SQLiteException -> 0x003b, all -> 0x0064
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002d
            r0 = r6
            r0.close()
        L_0x002d:
            r0 = r7
            return r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0039
            r0 = r6
            r0.close()
        L_0x0039:
            r0 = 0
            return r0
        L_0x003b:
            r7 = move-exception
            goto L_0x0048
        L_0x003f:
            r6 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0065
        L_0x0045:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x0048:
            r0 = r6
            r5 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzgo()     // Catch: all -> 0x0064
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjd()     // Catch: all -> 0x0064
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.zzg(r1, r2)     // Catch: all -> 0x0064
            r0 = r6
            if (r0 == 0) goto L_0x0062
            r0 = r6
            r0.close()
        L_0x0062:
            r0 = 0
            return r0
        L_0x0064:
            r6 = move-exception
        L_0x0065:
            r0 = r5
            if (r0 == 0) goto L_0x006f
            r0 = r5
            r0.close()
        L_0x006f:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzid():java.lang.String");
    }

    public final boolean zzie() {
        return zza("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzif() {
        int delete;
        zzaf();
        zzcl();
        if (zzil()) {
            long j = zzgp().zzanh.get();
            long elapsedRealtime = zzbx().elapsedRealtime();
            if (Math.abs(elapsedRealtime - j) > zzaf.zzakb.get().longValue()) {
                zzgp().zzanh.set(elapsedRealtime);
                zzaf();
                zzcl();
                if (zzil() && (delete = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzbx().currentTimeMillis()), String.valueOf(zzn.zzhw())})) > 0) {
                    zzgo().zzjl().zzg("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
    }

    @WorkerThread
    public final long zzig() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    @WorkerThread
    public final long zzih() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final boolean zzii() {
        return zza("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzij() {
        return zza("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long zzik() {
        Throwable th;
        SQLiteException e;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = getWritableDatabase().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
        }
        try {
            if (cursor.moveToFirst()) {
                long j = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            } else if (cursor == null) {
                return -1L;
            } else {
                cursor.close();
                return -1L;
            }
        } catch (SQLiteException e3) {
            e = e3;
            zzgo().zzjd().zzg("Error querying raw events", e);
            if (cursor == null) {
                return -1L;
            }
            cursor.close();
            return -1L;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 22, insn: 0x0201: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r22 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:69:0x0201 */
    @WorkerThread
    public final zzl zzj(String str, String str2) {
        Cursor cursor;
        Throwable th;
        SQLiteException e;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            try {
                cursor = getWritableDatabase().query("conditional_properties", new String[]{FirebaseAnalytics.Param.ORIGIN, FirebaseAnalytics.Param.VALUE, BlockingOptionFields.ACTIVE, "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    try {
                        Object zza = zza(cursor, 1);
                        boolean z = cursor.getInt(2) != 0;
                        String string2 = cursor.getString(3);
                        long j = cursor.getLong(4);
                        zzl zzlVar = new zzl(str, string, new zzfh(str2, cursor.getLong(8), zza, string), cursor.getLong(6), z, string2, (zzad) zzjo().zza(cursor.getBlob(5), zzad.CREATOR), j, (zzad) zzjo().zza(cursor.getBlob(7), zzad.CREATOR), cursor.getLong(9), (zzad) zzjo().zza(cursor.getBlob(10), zzad.CREATOR));
                        if (cursor.moveToNext()) {
                            zzgo().zzjd().zze("Got multiple records for conditional property, expected one", zzap.zzbv(str), zzgl().zzbu(str2));
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        return zzlVar;
                    } catch (SQLiteException e2) {
                        e = e2;
                        zzgo().zzjd().zzd("Error querying conditional property", zzap.zzbv(str), zzgl().zzbu(str2), e);
                        if (cursor == null) {
                            return null;
                        }
                        cursor.close();
                        return null;
                    }
                } else if (cursor == null) {
                    return null;
                } else {
                    cursor.close();
                    return null;
                }
            } catch (SQLiteException e3) {
                e = e3;
            } catch (Throwable th3) {
                th = th3;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            cursor = null;
        }
    }

    @WorkerThread
    public final int zzk(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            return getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzgo().zzjd().zzd("Error deleting conditional property", zzap.zzbv(str), zzgl().zzbu(str2), e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0170  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzfv>> zzl(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzl(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0170  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzfy>> zzm(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzm(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @android.support.annotation.WorkerThread
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzn(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzq.zzn(java.lang.String, java.lang.String):long");
    }
}
