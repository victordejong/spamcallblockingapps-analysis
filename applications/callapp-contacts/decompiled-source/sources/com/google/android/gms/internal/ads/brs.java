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
import com.google.android.gms.dynamic.d;
import java.util.concurrent.Callable;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brs.class */
public final class brs extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24961a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f24962b;

    public brs(Context context, dbs dbsVar) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) ekb.e().a(aq.eW)).intValue());
        this.f24961a = context;
        this.f24962b = dbsVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(SQLiteDatabase sQLiteDatabase, zc zcVar) {
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
            for (int i2 = 0; i2 < count; i2++) {
                zcVar.zzen(strArr[i2]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(SQLiteDatabase sQLiteDatabase, String str, zc zcVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        a(sQLiteDatabase, zcVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void a(brz brzVar, SQLiteDatabase sQLiteDatabase) throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put(Reporting.Key.TIMESTAMP, Long.valueOf(brzVar.f24975a));
        contentValues.put("gws_query_id", brzVar.f24976b);
        contentValues.put("url", brzVar.f24977c);
        contentValues.put("event_state", Integer.valueOf(brzVar.f24978d - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        zzr.zzkv();
        zzbg zzbg = zzj.zzbg(this.f24961a);
        if (zzbg == null) {
            return null;
        }
        try {
            zzbg.zzaq(d.a(this.f24961a));
            return null;
        } catch (RemoteException e) {
            zzd.zza("Failed to schedule offline ping sender.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final SQLiteDatabase sQLiteDatabase, final zc zcVar, final String str) {
        this.f24962b.execute(new Runnable(sQLiteDatabase, str, zcVar) { // from class: com.google.android.gms.internal.ads.brt

            /* renamed from: a  reason: collision with root package name */
            private final SQLiteDatabase f24963a;

            /* renamed from: b  reason: collision with root package name */
            private final String f24964b;

            /* renamed from: c  reason: collision with root package name */
            private final zc f24965c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24963a = sQLiteDatabase;
                this.f24964b = str;
                this.f24965c = zcVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                brs.a(this.f24963a, this.f24964b, this.f24965c);
            }
        });
    }

    public final void a(final brz brzVar) {
        a(new css(this, brzVar) { // from class: com.google.android.gms.internal.ads.bry

            /* renamed from: a  reason: collision with root package name */
            private final brs f24973a;

            /* renamed from: b  reason: collision with root package name */
            private final brz f24974b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24973a = this;
                this.f24974b = brzVar;
            }

            @Override // com.google.android.gms.internal.ads.css
            public final Object a(Object obj) {
                return this.f24973a.a(this.f24974b, (SQLiteDatabase) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(css<SQLiteDatabase, Void> cssVar) {
        dbh.a(this.f24962b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.brr

            /* renamed from: a  reason: collision with root package name */
            private final brs f24960a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24960a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f24960a.getWritableDatabase();
            }
        }), new brx(this, cssVar), this.f24962b);
    }

    public final void a(final String str) {
        a(new css(this, str) { // from class: com.google.android.gms.internal.ads.brv

            /* renamed from: a  reason: collision with root package name */
            private final brs f24967a;

            /* renamed from: b  reason: collision with root package name */
            private final String f24968b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24967a = this;
                this.f24968b = str;
            }

            @Override // com.google.android.gms.internal.ads.css
            public final Object a(Object obj) {
                brs.a((SQLiteDatabase) obj, this.f24968b);
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
