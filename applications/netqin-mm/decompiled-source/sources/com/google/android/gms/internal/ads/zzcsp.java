package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.internal.ads.zzbbu;
import com.google.android.gms.internal.ads.zzcsp;
import com.google.android.gms.internal.ads.zzcsv;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.util.concurrent.Callable;
import p131c.p161d.p170b.p224d.p252g.p253a.C3478do;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsp.class */
public final class zzcsp extends SQLiteOpenHelper {

    /* renamed from: a */
    public final zzdzb f26477a;

    public zzcsp(Context context, zzdzb zzdzbVar) {
        super(context, "OfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f26477a = zzdzbVar;
    }

    /* renamed from: a */
    public final void m13871a(final SQLiteDatabase sQLiteDatabase, final zzbbu zzbbuVar, final String str) {
        this.f26477a.execute(new Runnable(sQLiteDatabase, str, zzbbuVar) { // from class: c.d.b.d.g.a.bo

            /* renamed from: a */
            public final SQLiteDatabase f12488a;

            /* renamed from: b */
            public final String f12489b;

            /* renamed from: c */
            public final zzbbu f12490c;

            {
                this.f12488a = sQLiteDatabase;
                this.f12489b = str;
                this.f12490c = zzbbuVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                SQLiteDatabase sQLiteDatabase2 = this.f12488a;
                String str2 = this.f12489b;
                zzbbu zzbbuVar2 = this.f12490c;
                ContentValues contentValues = new ContentValues();
                contentValues.put("event_state", (Integer) 1);
                sQLiteDatabase2.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str2});
                sQLiteDatabase2.beginTransaction();
                try {
                    StringBuilder sb = new StringBuilder(25);
                    sb.append("event_state = 1");
                    Cursor query = sQLiteDatabase2.query("offline_buffered_pings", new String[]{"url"}, sb.toString(), null, null, null, "timestamp ASC", null);
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
                    sQLiteDatabase2.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
                    sQLiteDatabase2.setTransactionSuccessful();
                    for (int i2 = 0; i2 < count; i2++) {
                        zzbbuVar2.mo15845a(strArr[i2]);
                    }
                } finally {
                    sQLiteDatabase2.endTransaction();
                }
            }
        });
    }

    /* renamed from: a */
    public final void m13870a(final zzcsv zzcsvVar) {
        zzdyq.m12991a(this.f26477a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.co

            /* renamed from: a */
            public final zzcsp f12572a;

            {
                this.f12572a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12572a.getWritableDatabase();
            }
        }), new C3478do(this, new zzdrp(zzcsvVar) { // from class: c.d.b.d.g.a.eo

            /* renamed from: a */
            public final zzcsv f12849a;

            {
                this.f12849a = zzcsvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdrp
            public final Object apply(Object obj) {
                zzcsv zzcsvVar2 = this.f12849a;
                ContentValues contentValues = new ContentValues();
                contentValues.put(AvidJSONUtil.KEY_TIMESTAMP, Long.valueOf(zzcsvVar2.f26482a));
                contentValues.put("gws_query_id", zzcsvVar2.f26483b);
                contentValues.put("url", zzcsvVar2.f26484c);
                contentValues.put("event_state", Integer.valueOf(zzcsvVar2.f26485d - 1));
                ((SQLiteDatabase) obj).insert("offline_buffered_pings", null, contentValues);
                return null;
            }
        }), this.f26477a);
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
