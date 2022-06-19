package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqr.class */
public final class zzcqr extends SQLiteOpenHelper {
    private final Context context;
    private final zzdzv zzgql;

    public zzcqr(Context context, zzdzv zzdzvVar) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) zzwr.zzqr().zzd(zzabp.zzdad)).intValue());
        this.context = context;
        this.zzgql = zzdzvVar;
    }

    /* JADX WARN: Finally extract failed */
    public static void zza(SQLiteDatabase sQLiteDatabase, zzazo zzazoVar) {
        sQLiteDatabase.beginTransaction();
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("event_state = 1");
            Cursor query = sQLiteDatabase.query("offline_buffered_pings", new String[]{"url"}, sb.toString(), null, null, null, "timestamp ASC", null);
            int count = query.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (query.moveToNext()) {
                int columnIndex = query.getColumnIndex("url");
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
                zzazoVar.zzel(strArr[i2]);
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public static void zza(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    public static final /* synthetic */ void zza(SQLiteDatabase sQLiteDatabase, String str, zzazo zzazoVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        zza(sQLiteDatabase, zzazoVar);
    }

    private final void zza(zzdqu<SQLiteDatabase, Void> zzdquVar) {
        zzdzk.zza(this.zzgql.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcqu
            private final zzcqr zzgrw;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgrw = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgrw.getWritableDatabase();
            }
        }), new zzcra(this, zzdquVar), this.zzgql);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    public final /* synthetic */ Void zza(zzazo zzazoVar, String str, SQLiteDatabase sQLiteDatabase) throws Exception {
        zza(sQLiteDatabase, zzazoVar, str);
        return null;
    }

    public final /* synthetic */ Void zza(zzcrc zzcrcVar, SQLiteDatabase sQLiteDatabase) throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(zzcrcVar.timestamp));
        contentValues.put("gws_query_id", zzcrcVar.zzbvs);
        contentValues.put("url", zzcrcVar.url);
        contentValues.put("event_state", Integer.valueOf(zzcrcVar.zzgsb - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        zzr.zzkr();
        zzbg zzbd = zzj.zzbd(this.context);
        if (zzbd != null) {
            try {
                zzbd.zzap(ObjectWrapper.wrap(this.context));
                return null;
            } catch (RemoteException e) {
                zzd.zza("Failed to schedule offline ping sender.", e);
                return null;
            }
        }
        return null;
    }

    public final void zza(SQLiteDatabase sQLiteDatabase, zzazo zzazoVar, String str) {
        this.zzgql.execute(new Runnable(sQLiteDatabase, str, zzazoVar) { // from class: com.google.android.gms.internal.ads.zzcqw
            private final String zzdjf;
            private final SQLiteDatabase zzgry;
            private final zzazo zzgrz;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgry = sQLiteDatabase;
                this.zzdjf = str;
                this.zzgrz = zzazoVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzcqr.zza(this.zzgry, this.zzdjf, this.zzgrz);
            }
        });
    }

    public final void zza(zzazo zzazoVar) {
        zza(new zzdqu(zzazoVar) { // from class: com.google.android.gms.internal.ads.zzcqt
            private final zzazo zzdua;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdua = zzazoVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqu
            public final Object apply(Object obj) {
                return zzcqr.zza((SQLiteDatabase) obj, this.zzdua);
            }
        });
    }

    public final void zza(zzcrc zzcrcVar) {
        zza(new zzdqu(this, zzcrcVar) { // from class: com.google.android.gms.internal.ads.zzcqx
            private final zzcqr zzgrw;
            private final zzcrc zzgsa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgrw = this;
                this.zzgsa = zzcrcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqu
            public final Object apply(Object obj) {
                return this.zzgrw.zza(this.zzgsa, (SQLiteDatabase) obj);
            }
        });
    }

    public final void zzb(zzazo zzazoVar, String str) {
        zza(new zzdqu(this, zzazoVar, str) { // from class: com.google.android.gms.internal.ads.zzcqv
            private final String zzdlo;
            private final zzcqr zzgrw;
            private final zzazo zzgrx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgrw = this;
                this.zzgrx = zzazoVar;
                this.zzdlo = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdqu
            public final Object apply(Object obj) {
                return this.zzgrw.zza(this.zzgrx, this.zzdlo, (SQLiteDatabase) obj);
            }
        });
    }

    public final void zzgm(String str) {
        zza(new zzdqu(this, str) { // from class: com.google.android.gms.internal.ads.zzcqy
            private final String zzdjf;
            private final zzcqr zzgrw;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgrw = this;
                this.zzdjf = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdqu
            public final Object apply(Object obj) {
                zzcqr.zza((SQLiteDatabase) obj, this.zzdjf);
                return null;
            }
        });
    }
}
