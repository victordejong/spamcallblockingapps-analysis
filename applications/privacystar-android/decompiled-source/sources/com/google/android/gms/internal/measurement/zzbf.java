package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.HttpUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.privacystar.core.util.DateUtil;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbf.class */
public final class zzbf extends zzau implements Closeable {
    private static final String zzxf = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private static final String zzxg = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final zzbg zzxh;
    private final zzdc zzxi = new zzdc(zzbx());
    private final zzdc zzxj = new zzdc(zzbx());

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbf(zzaw zzawVar) {
        super(zzawVar);
        this.zzxh = new zzbg(this, zzawVar.getContext(), "google_analytics_v4.db");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006b  */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.measurement.zzat, com.google.android.gms.internal.measurement.zzbf] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zza(java.lang.String r6, java.lang.String[] r7) {
        /*
            r5 = this;
            r0 = r5
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()
            r7 = r0
            r0 = r7
            r1 = r6
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x004d, SQLiteException -> 0x0053
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            if (r0 == 0) goto L_0x002f
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x002c
            r0 = r8
            r0.close()
        L_0x002c:
            r0 = r9
            return r0
        L_0x002f:
            r0 = r8
            r7 = r0
            android.database.sqlite.SQLiteException r0 = new android.database.sqlite.SQLiteException     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            r11 = r0
            r0 = r8
            r7 = r0
            r0 = r11
            java.lang.String r1 = "Database returned empty set"
            r0.<init>(r1)     // Catch: all -> 0x0044, SQLiteException -> 0x0048
            r0 = r8
            r7 = r0
            r0 = r11
            throw r0     // Catch: all -> 0x0044, SQLiteException -> 0x0048
        L_0x0044:
            r6 = move-exception
            goto L_0x0067
        L_0x0048:
            r11 = move-exception
            goto L_0x0057
        L_0x004d:
            r6 = move-exception
            r0 = 0
            r7 = r0
            goto L_0x0067
        L_0x0053:
            r11 = move-exception
            r0 = 0
            r8 = r0
        L_0x0057:
            r0 = r8
            r7 = r0
            r0 = r5
            java.lang.String r1 = "Database error"
            r2 = r6
            r3 = r11
            r0.zzd(r1, r2, r3)     // Catch: all -> 0x0044
            r0 = r8
            r7 = r0
            r0 = r11
            throw r0     // Catch: all -> 0x0044
        L_0x0067:
            r0 = r7
            if (r0 == 0) goto L_0x0071
            r0 = r7
            r0.close()
        L_0x0071:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zza(java.lang.String, java.lang.String[]):long");
    }

    private final long zza(String str, String[] strArr, long j) {
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
                long j2 = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j2;
            } else if (cursor == null) {
                return 0L;
            } else {
                cursor.close();
                return 0L;
            }
        } catch (SQLiteException e3) {
            e = e3;
            zzd("Database error", str, e);
            throw e;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.Long> zzc(long r11) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zzc(long):java.util.List");
    }

    private final long zzcv() {
        zzk.zzaf();
        zzcl();
        return zza("SELECT COUNT(*) FROM hits2", (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzdd() {
        return "google_analytics_v4.db";
    }

    @VisibleForTesting
    private final Map<String, String> zzv(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                String valueOf = String.valueOf(str);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            return HttpUtils.parse(new URI(str), "UTF-8");
        } catch (URISyntaxException e) {
            zze("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    @VisibleForTesting
    private final Map<String, String> zzw(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String valueOf = String.valueOf(str);
            return HttpUtils.parse(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), "UTF-8");
        } catch (URISyntaxException e) {
            zze("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    public final void beginTransaction() {
        zzcl();
        getWritableDatabase().beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.zzxh.close();
        } catch (SQLiteException e) {
            zze("Sql error closing database", e);
        } catch (IllegalStateException e2) {
            zze("Error closing database", e2);
        }
    }

    public final void endTransaction() {
        zzcl();
        getWritableDatabase().endTransaction();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzxh.getWritableDatabase();
        } catch (SQLiteException e) {
            zzd("Error opening database", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isEmpty() {
        return zzcv() == 0;
    }

    public final void setTransactionSuccessful() {
        zzcl();
        getWritableDatabase().setTransactionSuccessful();
    }

    public final long zza(long j, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzcl();
        zzk.zzaf();
        return zza("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0L);
    }

    public final void zza(List<Long> list) {
        Preconditions.checkNotNull(list);
        zzk.zzaf();
        zzcl();
        if (!list.isEmpty()) {
            StringBuilder sb = new StringBuilder("hit_id");
            sb.append(" in (");
            for (int i = 0; i < list.size(); i++) {
                Long l = list.get(i);
                if (l == null || l.longValue() == 0) {
                    throw new SQLiteException("Invalid hit id");
                }
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(l);
            }
            sb.append(")");
            String sb2 = sb.toString();
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                int delete = writableDatabase.delete("hits2", sb2, null);
                if (delete != list.size()) {
                    zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
                }
            } catch (SQLiteException e) {
                zze("Error deleting hits", e);
                throw e;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
    }

    public final void zzc(zzck zzckVar) {
        Preconditions.checkNotNull(zzckVar);
        zzk.zzaf();
        zzcl();
        Preconditions.checkNotNull(zzckVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzckVar.zzcw().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        String str = encodedQuery;
        if (encodedQuery == null) {
            str = "";
        }
        if (str.length() > 8192) {
            zzby().zza(zzckVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        int intValue = zzcf.zzza.get().intValue();
        long zzcv = zzcv();
        if (zzcv > intValue - 1) {
            List<Long> zzc = zzc((zzcv - intValue) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(zzc.size()));
            zza(zzc);
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", str);
        contentValues.put("hit_time", Long.valueOf(zzckVar.zzer()));
        contentValues.put("hit_app_id", Integer.valueOf(zzckVar.zzep()));
        contentValues.put("hit_url", zzckVar.zzet() ? zzbx.zzed() : zzbx.zzee());
        try {
            long insert = writableDatabase.insert("hits2", null, contentValues);
            if (insert == -1) {
                zzu("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(insert), zzckVar);
            }
        } catch (SQLiteException e) {
            zze("Error storing a hit", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzck> zzd(long r11) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zzd(long):java.util.List");
    }

    public final int zzdb() {
        zzk.zzaf();
        zzcl();
        if (!this.zzxi.zzj(DateUtil.DAY_IN_MILLIS)) {
            return 0;
        }
        this.zzxi.start();
        zzq("Deleting stale hits (if any)");
        int delete = getWritableDatabase().delete("hits2", "hit_time < ?", new String[]{Long.toString(zzbx().currentTimeMillis() - 2592000000L)});
        zza("Deleted stale hits, count", Integer.valueOf(delete));
        return delete;
    }

    public final long zzdc() {
        zzk.zzaf();
        zzcl();
        return zza(zzxg, (String[]) null, 0L);
    }

    public final void zze(long j) {
        zzk.zzaf();
        zzcl();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        zza(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzaz> zzf(long r11) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zzf(long):java.util.List");
    }
}
