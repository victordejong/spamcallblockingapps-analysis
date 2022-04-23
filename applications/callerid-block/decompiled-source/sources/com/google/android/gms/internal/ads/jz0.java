package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1419g0;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.dynamic.b;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jz0.class */
public final class jz0 extends SQLiteOpenHelper {

    /* renamed from: b */
    private final Context f6946b;

    /* renamed from: c */
    private final sz1 f6947c;

    public jz0(Context context, sz1 sz1Var) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) C1674c.m7906c().m6878b(C1842m3.f7351W4)).intValue());
        this.f6946b = context;
        this.f6947c = sz1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public static final /* synthetic */ void m6901K(SQLiteDatabase sQLiteDatabase, String str, to toVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        m6898V(sQLiteDatabase, toVar);
    }

    /* renamed from: U */
    static final void m6899U(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public static void m6898V(SQLiteDatabase sQLiteDatabase, to toVar) {
        sQLiteDatabase.beginTransaction();
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("event_state = ");
            sb.append(1);
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
                toVar.g(strArr[i2]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    /* renamed from: B */
    public final void m6904B(String str) {
        m6897a(new gz0(this, str));
    }

    /* renamed from: C */
    public final void m6903C(lz0 lz0Var) {
        m6897a(new hz0(this, lz0Var));
    }

    /* renamed from: F */
    final /* synthetic */ Void m6902F(lz0 lz0Var, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(lz0Var.f7192a));
        contentValues.put("gws_query_id", lz0Var.f7193b);
        contentValues.put("url", lz0Var.f7194c);
        contentValues.put("event_state", Integer.valueOf(lz0Var.f7195d - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        C1407r.m8920d();
        AbstractC1419g0 c = C1433l1.m8767c(this.f6946b);
        if (c == null) {
            return null;
        }
        try {
            c.zzf(b.g3(this.f6946b));
            return null;
        } catch (RemoteException e) {
            y0.l("Failed to schedule offline ping sender.", e);
            return null;
        }
    }

    /* renamed from: a */
    final void m6897a(uo1<SQLiteDatabase, Void> uo1Var) {
        kz1.o(this.f6947c.m5553a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cz0

            /* renamed from: a */
            private final jz0 f6307a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6307a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f6307a.getWritableDatabase();
            }
        }), new iz0(this, uo1Var), this.f6947c);
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

    /* renamed from: p */
    final void m6896p(final SQLiteDatabase sQLiteDatabase, final to toVar, final String str) {
        this.f6947c.execute(new Runnable(sQLiteDatabase, str, toVar) { // from class: com.google.android.gms.internal.ads.ez0

            /* renamed from: b */
            private final SQLiteDatabase f6466b;

            /* renamed from: c */
            private final String f6467c;

            /* renamed from: d */
            private final to f6468d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6466b = sQLiteDatabase;
                this.f6467c = str;
                this.f6468d = toVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                jz0.m6901K(this.f6466b, this.f6467c, this.f6468d);
            }
        });
    }

    /* renamed from: x */
    public final void m6895x(to toVar, String str) {
        m6897a(new fz0(this, toVar, str));
    }
}
