package p068d2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import p068d2.C2374o1;
/* renamed from: d2.d3 */
/* loaded from: classes-dex2jar.jar:d2/d3.class */
public class C2197d3 {

    /* renamed from: f */
    public static C2197d3 f8016f;

    /* renamed from: b */
    public SQLiteDatabase f8018b;

    /* renamed from: d */
    public AbstractC2199b f8020d;

    /* renamed from: a */
    public final Executor f8017a = Executors.newSingleThreadExecutor();

    /* renamed from: c */
    public boolean f8019c = false;

    /* renamed from: e */
    public Set<String> f8021e = new HashSet();

    /* renamed from: d2.d3$a */
    /* loaded from: classes-dex2jar.jar:d2/d3$a.class */
    public class RunnableC2198a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8022a;

        /* renamed from: b */
        public final /* synthetic */ ContentValues f8023b;

        public RunnableC2198a(String str, ContentValues contentValues) {
            C2197d3.this = r4;
            this.f8022a = str;
            this.f8023b = contentValues;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2197d3 c2197d3 = C2197d3.this;
            String str = this.f8022a;
            ContentValues contentValues = this.f8023b;
            synchronized (c2197d3) {
                C2165a2.m3798a(str, contentValues, c2197d3.f8018b);
            }
        }
    }

    /* renamed from: d2.d3$b */
    /* loaded from: classes-dex2jar.jar:d2/d3$b.class */
    public interface AbstractC2199b {
    }

    /* renamed from: d */
    public static C2197d3 m3765d() {
        if (f8016f == null) {
            synchronized (C2197d3.class) {
                try {
                    if (f8016f == null) {
                        f8016f = new C2197d3();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8016f;
    }

    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* renamed from: a */
    public void m3768a(C2374o1.C2375a c2375a, ContentValues contentValues) {
        char c;
        String str;
        if (!this.f8021e.contains(c2375a.f8399b)) {
            this.f8021e.add(c2375a.f8399b);
            int i = c2375a.f8400c;
            C2374o1.C2378d c2378d = c2375a.f8405h;
            if (c2378d != null) {
                c = contentValues.getAsLong(c2378d.f8413b).longValue() - c2378d.f8412a;
                str = c2378d.f8413b;
            } else {
                str = null;
                c = 65535;
            }
            String str2 = c2375a.f8399b;
            SQLiteDatabase sQLiteDatabase = this.f8018b;
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    if (str == null) {
                        str = "rowid";
                        c = 65535;
                    }
                    char c2 = c;
                    if (i >= 0) {
                        Cursor rawQuery = sQLiteDatabase.rawQuery("select " + str + " from " + str2 + " order by " + str + " desc limit 1 offset " + i, null);
                        c2 = c;
                        if (rawQuery.moveToFirst()) {
                            c2 = Math.max((long) c, rawQuery.getLong(0));
                        }
                        rawQuery.close();
                    }
                    if (c2 >= 0) {
                        sQLiteDatabase.execSQL("delete from " + str2 + " where " + str + " <= " + ((long) c2));
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Throwable th) {
                    StringBuilder m8752j = C0082b.m8752j("Error on deleting excessive rows:");
                    m8752j.append(th.toString());
                    C0082b.m8750l(0, 0, m8752j.toString(), true);
                    return;
                }
            } catch (SQLException e) {
                C2408t.m3591d().m3718p().m3686e(0, 1, "Exception on deleting excessive rows:" + e.toString(), true);
            }
            sQLiteDatabase.endTransaction();
        }
    }

    /* renamed from: b */
    public void m3767b(String str, ContentValues contentValues) {
        if (this.f8019c) {
            try {
                this.f8017a.execute(new RunnableC2198a(str, contentValues));
            } catch (RejectedExecutionException e) {
                StringBuilder sb = new StringBuilder();
                StringBuilder m8752j = C0082b.m8752j("ADCEventsRepository.saveEvent failed with: ");
                m8752j.append(e.toString());
                sb.append(m8752j.toString());
                C0082b.m8750l(0, 0, sb.toString(), true);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public final boolean m3766c(C2374o1 c2374o1) {
        SQLException e;
        SQLiteDatabase sQLiteDatabase = this.f8018b;
        C2404s1 c2404s1 = new C2404s1(sQLiteDatabase, c2374o1);
        int version = sQLiteDatabase.getVersion();
        sQLiteDatabase.beginTransaction();
        boolean z = true;
        try {
            try {
                List<C2374o1.C2375a> list = c2374o1.f8397b;
                ArrayList<String> m3601a = c2404s1.m3601a();
                for (C2374o1.C2375a c2375a : list) {
                    if (m3601a.contains(c2375a.f8399b)) {
                        c2404s1.m3595g(c2375a);
                    } else {
                        c2404s1.m3597e(c2375a);
                        c2404s1.m3600b(c2375a);
                    }
                    m3601a.remove(c2375a.f8399b);
                }
                Iterator<String> it2 = m3601a.iterator();
                while (it2.hasNext()) {
                    c2404s1.m3598d(it2.next());
                }
                c2404s1.f8524a.setVersion(c2404s1.f8525b.f8396a);
                c2404s1.f8524a.setTransactionSuccessful();
            } catch (Throwable th) {
                c2404s1.f8524a.endTransaction();
                throw th;
            }
        } catch (SQLException e2) {
            e = e2;
            z = false;
        }
        try {
            C2408t.m3591d().m3718p().m3686e(0, 2, "Success upgrading database from " + version + " to " + c2404s1.f8525b.f8396a, true);
        } catch (SQLException e3) {
            e = e3;
            z = true;
            C2408t.m3591d().m3718p().m3686e(0, 1, "Upgrading database from " + version + " to " + c2404s1.f8525b.f8396a + "caused: " + e.toString(), true);
            c2404s1.f8524a.endTransaction();
            return z;
        }
        c2404s1.f8524a.endTransaction();
        return z;
    }
}
