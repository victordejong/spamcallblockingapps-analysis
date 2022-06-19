package p000;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;
import java.util.EnumSet;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.q71;
import p000.r71;
/* renamed from: e81 */
/* loaded from: classes3-dex2jar.jar:e81.class */
public class e81 {

    /* renamed from: a */
    public static SQLiteOpenHelper f6311a;

    /* renamed from: b */
    public static ScheduledExecutorService f6312b;

    /* renamed from: c */
    public static ScheduledFuture<?> f6313c;

    /* renamed from: e81$a */
    /* loaded from: classes3-dex2jar.jar:e81$a.class */
    public static final class C1351a extends SQLiteOpenHelper {
        public C1351a(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
            super(context, str, cursorFactory, i);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* renamed from: e81$b */
    /* loaded from: classes3-dex2jar.jar:e81$b.class */
    public static final class RunnableC1352b implements Runnable {

        /* renamed from: e81$b$a */
        /* loaded from: classes3-dex2jar.jar:e81$b$a.class */
        public class RunnableC1353a implements Runnable {
            public RunnableC1353a(RunnableC1352b runnableC1352b) {
            }

            @Override // java.lang.Runnable
            public void run() {
                ScheduledFuture unused = e81.f6313c = null;
                e81.f6312b.shutdownNow();
                ScheduledExecutorService unused2 = e81.f6312b = null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            e81.m2191h();
            new Handler(fa1.m1840j().getMainLooper()).postDelayed(new RunnableC1353a(this), 100L);
        }
    }

    /* renamed from: e81$c */
    /* loaded from: classes3-dex2jar.jar:e81$c.class */
    public static final class RunnableC1354c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            e81.m2195d();
            d81.m2745a();
            e81.m2194e();
        }
    }

    /* renamed from: d */
    public static void m2195d() {
        try {
            f6311a = new C1351a(fa1.m1840j(), "c", null, 4);
            j91.m1499q("Migration", "Migration started");
        } catch (Throwable th) {
            j91.m1504l("Migration", "Unable to open V1 database", th);
            f6311a = null;
        }
    }

    /* renamed from: e */
    public static void m2194e() {
        SQLiteOpenHelper sQLiteOpenHelper = f6311a;
        if (sQLiteOpenHelper != null) {
            try {
                sQLiteOpenHelper.close();
            } catch (Throwable th) {
                j91.m1504l("Migration", "Unable to finish migration", th);
            }
        }
        j91.m1499q("Migration", "Migration finished");
    }

    /* renamed from: f */
    public static EnumSet<q71.EnumC1618e> m2193f(String str) {
        EnumSet<q71.EnumC1618e> enumSet = null;
        if (str != null) {
            enumSet = null;
            if (str.contains(":")) {
                String[] split = str.split(":");
                enumSet = null;
                if (split.length == 2) {
                    int parseInt = Integer.parseInt(split[1]);
                    enumSet = null;
                    if (parseInt == 2) {
                        enumSet = EnumSet.of(q71.EnumC1618e.MMS, q71.EnumC1618e.SMS);
                    }
                    if (parseInt == 1) {
                        enumSet = EnumSet.of(q71.EnumC1618e.CALL);
                    }
                }
            }
        }
        return enumSet == null ? EnumSet.allOf(q71.EnumC1618e.class) : enumSet;
    }

    /* renamed from: g */
    public static SQLiteDatabase m2192g() {
        return f6311a.getReadableDatabase();
    }

    /* renamed from: h */
    public static void m2191h() {
        m2195d();
        if (f6311a == null) {
            j91.m1505k("Migration", "Unable to migrate data until migration begin.");
            return;
        }
        try {
            s71.m622a();
            i81.m1614a();
            h81.m1639b();
            g81.m1688a();
            c81.m5417a();
            f81.m1919a();
            d81.m2745a();
        } catch (Throwable th) {
            j91.m1504l("Migration", "Error migrating database", th);
        }
        m2194e();
        r71.EnumC1638a.f7898H.m685k(Boolean.TRUE);
    }

    /* renamed from: i */
    public static void m2190i() {
        if (r71.EnumC1638a.f7898H.m695a() || f6313c != null) {
            j91.m1499q("Migration", "No need to start migration as it is in progress");
            return;
        }
        ScheduledExecutorService scheduledExecutorService = f6312b;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        f6312b = newSingleThreadScheduledExecutor;
        f6313c = newSingleThreadScheduledExecutor.schedule(new RunnableC1352b(), 0L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: j */
    public static void m2189j() {
        new Handler(fa1.m1840j().getMainLooper()).postDelayed(new RunnableC1354c(), 100L);
    }
}
