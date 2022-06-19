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
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.Callable;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brs.class */
public final class brs extends SQLiteOpenHelper {

    /* renamed from: a */
    private final Context f44577a;

    /* renamed from: b */
    private final dbs f44578b;

    public brs(Context context, dbs dbsVar) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) ekb.m14831e().m18571a(C12187aq.f42872eW)).intValue());
        this.f44577a = context;
        this.f44578b = dbsVar;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m17634a(SQLiteDatabase sQLiteDatabase, C13090zc c13090zc) {
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
                c13090zc.zzen(strArr[i2]);
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    /* renamed from: a */
    public static void m17632a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    /* renamed from: a */
    public static final /* synthetic */ void m17631a(SQLiteDatabase sQLiteDatabase, String str, C13090zc c13090zc) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        m17634a(sQLiteDatabase, c13090zc);
    }

    /* renamed from: a */
    public final /* synthetic */ Void m17629a(brz brzVar, SQLiteDatabase sQLiteDatabase) throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put(Reporting.Key.TIMESTAMP, Long.valueOf(brzVar.f44591a));
        contentValues.put("gws_query_id", brzVar.f44592b);
        contentValues.put("url", brzVar.f44593c);
        contentValues.put("event_state", Integer.valueOf(brzVar.f44594d - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        zzr.zzkv();
        zzbg zzbg = zzj.zzbg(this.f44577a);
        if (zzbg != null) {
            try {
                zzbg.zzaq(BinderC12129d.m18979a(this.f44577a));
                return null;
            } catch (RemoteException e) {
                zzd.zza("Failed to schedule offline ping sender.", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m17633a(SQLiteDatabase sQLiteDatabase, C13090zc c13090zc, String str) {
        this.f44578b.execute(new Runnable(sQLiteDatabase, str, c13090zc) { // from class: com.google.android.gms.internal.ads.brt

            /* renamed from: a */
            private final SQLiteDatabase f44579a;

            /* renamed from: b */
            private final String f44580b;

            /* renamed from: c */
            private final C13090zc f44581c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44579a = sQLiteDatabase;
                this.f44580b = str;
                this.f44581c = c13090zc;
            }

            @Override // java.lang.Runnable
            public final void run() {
                brs.m17631a(this.f44579a, this.f44580b, this.f44581c);
            }
        });
    }

    /* renamed from: a */
    public final void m17630a(brz brzVar) {
        m17628a(new css(this, brzVar) { // from class: com.google.android.gms.internal.ads.bry

            /* renamed from: a */
            private final brs f44589a;

            /* renamed from: b */
            private final brz f44590b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44589a = this;
                this.f44590b = brzVar;
            }

            @Override // com.google.android.gms.internal.ads.css
            /* renamed from: a */
            public final Object mo17263a(Object obj) {
                return this.f44589a.m17629a(this.f44590b, (SQLiteDatabase) obj);
            }
        });
    }

    /* renamed from: a */
    public final void m17628a(css<SQLiteDatabase, Void> cssVar) {
        dbh.m16901a(this.f44578b.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.brr

            /* renamed from: a */
            private final brs f44576a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44576a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f44576a.getWritableDatabase();
            }
        }), new brx(this, cssVar), this.f44578b);
    }

    /* renamed from: a */
    public final void m17626a(String str) {
        m17628a(new css(this, str) { // from class: com.google.android.gms.internal.ads.brv

            /* renamed from: a */
            private final brs f44583a;

            /* renamed from: b */
            private final String f44584b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44583a = this;
                this.f44584b = str;
            }

            @Override // com.google.android.gms.internal.ads.css
            /* renamed from: a */
            public final Object mo17263a(Object obj) {
                brs.m17632a((SQLiteDatabase) obj, this.f44584b);
                return null;
            }
        });
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
}
