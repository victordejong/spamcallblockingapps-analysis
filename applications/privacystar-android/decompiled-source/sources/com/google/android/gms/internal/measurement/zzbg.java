package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import com.google.android.gms.common.util.VisibleForTesting;
import com.privacystar.core.util.DateUtil;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbg.class */
public final class zzbg extends SQLiteOpenHelper {
    private final /* synthetic */ zzbf zzxk;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbg(zzbf zzbfVar, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.zzxk = zzbfVar;
    }

    private final boolean zza(SQLiteDatabase sQLiteDatabase, String str) {
        Throwable th;
        SQLiteException e;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            } catch (SQLiteException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            boolean moveToFirst = cursor.moveToFirst();
            if (cursor != null) {
                cursor.close();
            }
            return moveToFirst;
        } catch (SQLiteException e3) {
            e = e3;
            cursor2 = cursor;
            this.zzxk.zzc("Error querying for table", str, e);
            if (cursor == null) {
                return false;
            }
            cursor.close();
            return false;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            for (String str2 : rawQuery.getColumnNames()) {
                hashSet.add(str2);
            }
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        zzdc zzdcVar;
        zzdc zzdcVar2;
        String zzdd;
        zzdc zzdcVar3;
        zzdcVar = this.zzxk.zzxj;
        if (!zzdcVar.zzj(DateUtil.HOUR_IN_MILLIS)) {
            throw new SQLiteException("Database open failed");
        }
        try {
            return super.getWritableDatabase();
        } catch (SQLiteException e) {
            zzdcVar2 = this.zzxk.zzxj;
            zzdcVar2.start();
            this.zzxk.zzu("Opening the database failed, dropping the table and recreating it");
            zzbf zzbfVar = this.zzxk;
            zzdd = zzbf.zzdd();
            this.zzxk.getContext().getDatabasePath(zzdd).delete();
            try {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                zzdcVar3 = this.zzxk.zzxj;
                zzdcVar3.clear();
                return writableDatabase;
            } catch (SQLiteException e2) {
                this.zzxk.zze("Failed to open freshly created database", e2);
                throw e2;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (zzce.version() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String str;
        if (Build.VERSION.SDK_INT < 15) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
            try {
                rawQuery.moveToFirst();
            } finally {
                rawQuery.close();
            }
        }
        if (!zza(sQLiteDatabase, "hits2")) {
            str = zzbf.zzxf;
            sQLiteDatabase.execSQL(str);
        } else {
            Set<String> zzb = zzb(sQLiteDatabase, "hits2");
            for (int i = 0; i < 4; i++) {
                String str2 = new String[]{"hit_id", "hit_string", "hit_time", "hit_url"}[i];
                if (!zzb.remove(str2)) {
                    String valueOf = String.valueOf(str2);
                    throw new SQLiteException(valueOf.length() != 0 ? "Database hits2 is missing required column: ".concat(valueOf) : new String("Database hits2 is missing required column: "));
                }
            }
            boolean remove = zzb.remove("hit_app_id");
            if (!zzb.isEmpty()) {
                throw new SQLiteException("Database hits2 has extra columns");
            } else if (!remove) {
                sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
            }
        }
        if (!zza(sQLiteDatabase, "properties")) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            return;
        }
        Set<String> zzb2 = zzb(sQLiteDatabase, "properties");
        for (int i2 = 0; i2 < 6; i2++) {
            String str3 = new String[]{"app_uid", "cid", "tid", "params", "adid", "hits_count"}[i2];
            if (!zzb2.remove(str3)) {
                String valueOf2 = String.valueOf(str3);
                throw new SQLiteException(valueOf2.length() != 0 ? "Database properties is missing required column: ".concat(valueOf2) : new String("Database properties is missing required column: "));
            }
        }
        if (!zzb2.isEmpty()) {
            throw new SQLiteException("Database properties table has extra columns");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
