package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehh.class */
public final class zzehh extends SQLiteOpenHelper {
    private final Context zza;
    private final zzfxb zzb;

    public zzehh(Context context, zzfxb zzfxbVar) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) zzbgq.zzc().zzb(zzblj.zzgh)).intValue());
        this.zza = context;
        this.zzb = zzfxbVar;
    }

    public static /* synthetic */ void zzf(SQLiteDatabase sQLiteDatabase, String str, zzcje zzcjeVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        zzj(sQLiteDatabase, zzcjeVar);
    }

    public static final void zzi(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    /* JADX WARN: Finally extract failed */
    public static void zzj(SQLiteDatabase sQLiteDatabase, zzcje zzcjeVar) {
        sQLiteDatabase.beginTransaction();
        try {
            Cursor query = sQLiteDatabase.query("offline_buffered_pings", new String[]{ImagesContract.URL}, "event_state = 1", null, null, null, "timestamp ASC", null);
            int count = query.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (query.moveToNext()) {
                int columnIndex = query.getColumnIndex(ImagesContract.URL);
                if (columnIndex != -1) {
                    strArr[i] = query.getString(columnIndex);
                }
                i++;
            }
            query.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (int i2 = 0; i2 < count; i2++) {
                zzcjeVar.zza(strArr[i2]);
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    public final /* synthetic */ Void zza(zzehj zzehjVar, SQLiteDatabase sQLiteDatabase) throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(zzehjVar.zza));
        contentValues.put("gws_query_id", zzehjVar.zzb);
        contentValues.put(ImagesContract.URL, zzehjVar.zzc);
        contentValues.put("event_state", Integer.valueOf(zzehjVar.zzd - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        zzt.zzp();
        zzbv zzE = com.google.android.gms.ads.internal.util.zzt.zzE(this.zza);
        if (zzE != null) {
            try {
                zzE.zze(ObjectWrapper.wrap(this.zza));
                return null;
            } catch (RemoteException e) {
                zze.zzb("Failed to schedule offline ping sender.", e);
                return null;
            }
        }
        return null;
    }

    public final void zzc(final String str) {
        zze(new zzfhh() { // from class: com.google.android.gms.internal.ads.zzehd
            @Override // com.google.android.gms.internal.ads.zzfhh
            public final Object zza(Object obj) {
                zzehh.zzi((SQLiteDatabase) obj, str);
                return null;
            }
        });
    }

    public final void zzd(final zzehj zzehjVar) {
        zze(new zzfhh() { // from class: com.google.android.gms.internal.ads.zzehc
            @Override // com.google.android.gms.internal.ads.zzfhh
            public final Object zza(Object obj) {
                zzehh.this.zza(zzehjVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    public final void zze(zzfhh<SQLiteDatabase, Void> zzfhhVar) {
        zzfwq.zzr(this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzehf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzehh.this.getWritableDatabase();
            }
        }), new zzehg(this, zzfhhVar), this.zzb);
    }

    public final void zzg(final SQLiteDatabase sQLiteDatabase, final zzcje zzcjeVar, final String str) {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehe
            @Override // java.lang.Runnable
            public final void run() {
                zzehh.zzf(sQLiteDatabase, str, zzcjeVar);
            }
        });
    }

    public final void zzh(final zzcje zzcjeVar, final String str) {
        zze(new zzfhh() { // from class: com.google.android.gms.internal.ads.zzehb
            @Override // com.google.android.gms.internal.ads.zzfhh
            public final Object zza(Object obj) {
                zzehh.this.zzg((SQLiteDatabase) obj, zzcjeVar, str);
                return null;
            }
        });
    }
}
