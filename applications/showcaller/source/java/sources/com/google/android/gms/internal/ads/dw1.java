package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5739u0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dw1.class */
public final class dw1 extends SQLiteOpenHelper {

    /* renamed from: d */
    private final Context f21892d;

    /* renamed from: e */
    private final s03 f21893e;

    public dw1(Context context, s03 s03Var) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25641Z5)).intValue());
        this.f21892d = context;
        this.f21893e = s03Var;
    }

    /* renamed from: q */
    public static final /* synthetic */ void m15667q(SQLiteDatabase sQLiteDatabase, String str, ii0 ii0Var) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        m15664z(sQLiteDatabase, ii0Var);
    }

    /* renamed from: y */
    public static final void m15665y(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: z */
    public static void m15664z(SQLiteDatabase sQLiteDatabase, ii0 ii0Var) {
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
            sQLiteDatabase.endTransaction();
            for (int i2 = 0; i2 < count; i2++) {
                ii0Var.mo9583n(strArr[i2]);
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    /* renamed from: a */
    public final void m15673a(cn2<SQLiteDatabase, Void> cn2Var) {
        k03.m13988p(this.f21893e.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.wv1

            /* renamed from: a */
            private final dw1 f31801a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31801a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f31801a.getWritableDatabase();
            }
        }), new cw1(this, cn2Var), this.f21893e);
    }

    /* renamed from: e */
    public final void m15672e(SQLiteDatabase sQLiteDatabase, ii0 ii0Var, String str) {
        this.f21893e.execute(new Runnable(sQLiteDatabase, str, ii0Var) { // from class: com.google.android.gms.internal.ads.yv1

            /* renamed from: d */
            private final SQLiteDatabase f32662d;

            /* renamed from: e */
            private final String f32663e;

            /* renamed from: f */
            private final ii0 f32664f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32662d = sQLiteDatabase;
                this.f32663e = str;
                this.f32664f = ii0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                dw1.m15667q(this.f32662d, this.f32663e, this.f32664f);
            }
        });
    }

    /* renamed from: f */
    public final void m15671f(ii0 ii0Var, String str) {
        m15673a(new cn2(this, ii0Var, str) { // from class: com.google.android.gms.internal.ads.zv1

            /* renamed from: a */
            private final dw1 f33427a;

            /* renamed from: b */
            private final ii0 f33428b;

            /* renamed from: c */
            private final String f33429c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f33427a = this;
                this.f33428b = ii0Var;
                this.f33429c = str;
            }

            @Override // com.google.android.gms.internal.ads.cn2
            /* renamed from: a */
            public final Object mo8162a(Object obj) {
                this.f33427a.m15672e((SQLiteDatabase) obj, this.f33428b, this.f33429c);
                return null;
            }
        });
    }

    /* renamed from: g */
    public final void m15670g(String str) {
        m15673a(new cn2(this, str) { // from class: com.google.android.gms.internal.ads.aw1

            /* renamed from: a */
            private final dw1 f20151a;

            /* renamed from: b */
            private final String f20152b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20151a = this;
                this.f20152b = str;
            }

            @Override // com.google.android.gms.internal.ads.cn2
            /* renamed from: a */
            public final Object mo8162a(Object obj) {
                dw1.m15665y((SQLiteDatabase) obj, this.f20152b);
                return null;
            }
        });
    }

    /* renamed from: k */
    public final void m15669k(fw1 fw1Var) {
        m15673a(new cn2(this, fw1Var) { // from class: com.google.android.gms.internal.ads.bw1

            /* renamed from: a */
            private final dw1 f20977a;

            /* renamed from: b */
            private final fw1 f20978b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20977a = this;
                this.f20978b = fw1Var;
            }

            @Override // com.google.android.gms.internal.ads.cn2
            /* renamed from: a */
            public final Object mo8162a(Object obj) {
                this.f20977a.m15668p(this.f20978b, (SQLiteDatabase) obj);
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
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    /* renamed from: p */
    public final /* synthetic */ Void m15668p(fw1 fw1Var, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(fw1Var.f23171a));
        contentValues.put("gws_query_id", fw1Var.f23172b);
        contentValues.put("url", fw1Var.f23173c);
        contentValues.put("event_state", Integer.valueOf(fw1Var.f23174d - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        C5667s.m18160d();
        AbstractC5739u0 m18075d = C5679c2.m18075d(this.f21892d);
        if (m18075d != null) {
            try {
                m18075d.zzf(BinderC6255b.m16744m2(this.f21892d));
                return null;
            } catch (RemoteException e) {
                C5722o1.m17989l("Failed to schedule offline ping sender.", e);
                return null;
            }
        }
        return null;
    }
}
