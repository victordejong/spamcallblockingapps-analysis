package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.zhy.http.okhttp.OkHttpUtils;
import d.b.a.b.b;
import d.e.a;
import d.r.a.f;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
/* renamed from: androidx.room.f */
/* loaded from: classes-dex2jar.jar:androidx/room/f.class */
public class C0446f {

    /* renamed from: k */
    private static final String[] f2465k = {"UPDATE", OkHttpUtils.METHOD.DELETE, "INSERT"};

    /* renamed from: b */
    final String[] f2467b;

    /* renamed from: c */
    private Map<String, Set<String>> f2468c;

    /* renamed from: d */
    final RoomDatabase f2469d;

    /* renamed from: g */
    volatile f f2472g;

    /* renamed from: h */
    private C0448b f2473h;

    /* renamed from: e */
    AtomicBoolean f2470e = new AtomicBoolean(false);

    /* renamed from: f */
    private volatile boolean f2471f = false;
    @SuppressLint({"RestrictedApi"})

    /* renamed from: i */
    final b<AbstractC0449c, C0450d> f2474i = new b<>();

    /* renamed from: j */
    Runnable f2475j = new RunnableC0447a();

    /* renamed from: a */
    final a<String, Integer> f2466a = new a<>();

    /* renamed from: androidx.room.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$a.class */
    class RunnableC0447a implements Runnable {
        RunnableC0447a() {
            C0446f.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        private Set<Integer> m12274a() {
            d.e.b bVar = new d.e.b();
            Cursor m12306p = C0446f.this.f2469d.m12306p(new d.r.a.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (m12306p.moveToNext()) {
                try {
                    bVar.add(Integer.valueOf(m12306p.getInt(0)));
                } catch (Throwable th) {
                    m12306p.close();
                    throw th;
                }
            }
            m12306p.close();
            if (!bVar.isEmpty()) {
                C0446f.this.f2472g.r();
            }
            return bVar;
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:54:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x017f A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 399
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.C0446f.RunnableC0447a.run():void");
        }
    }

    /* renamed from: androidx.room.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$b.class */
    public static class C0448b {

        /* renamed from: a */
        final long[] f2477a;

        /* renamed from: b */
        final boolean[] f2478b;

        /* renamed from: c */
        final int[] f2479c;

        /* renamed from: d */
        boolean f2480d;

        /* renamed from: e */
        boolean f2481e;

        C0448b(int i) {
            long[] jArr = new long[i];
            this.f2477a = jArr;
            boolean[] zArr = new boolean[i];
            this.f2478b = zArr;
            this.f2479c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* renamed from: a */
        int[] m12273a() {
            synchronized (this) {
                try {
                    if (this.f2480d && !this.f2481e) {
                        int length = this.f2477a.length;
                        int i = 0;
                        while (true) {
                            int i2 = 1;
                            if (i >= length) {
                                this.f2481e = true;
                                this.f2480d = false;
                                return this.f2479c;
                            }
                            boolean z = this.f2477a[i] > 0;
                            boolean[] zArr = this.f2478b;
                            if (z != zArr[i]) {
                                int[] iArr = this.f2479c;
                                if (!z) {
                                    i2 = 2;
                                }
                                iArr[i] = i2;
                            } else {
                                this.f2479c[i] = 0;
                            }
                            zArr[i] = z;
                            i++;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* renamed from: b */
        boolean m12272b(int... iArr) {
            boolean z;
            synchronized (this) {
                try {
                    z = false;
                    for (int i : iArr) {
                        long[] jArr = this.f2477a;
                        long j = jArr[i];
                        jArr[i] = 1 + j;
                        if (j == 0) {
                            this.f2480d = true;
                            z = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        /* renamed from: c */
        boolean m12271c(int... iArr) {
            boolean z;
            synchronized (this) {
                try {
                    z = false;
                    for (int i : iArr) {
                        long[] jArr = this.f2477a;
                        long j = jArr[i];
                        jArr[i] = j - 1;
                        if (j == 1) {
                            this.f2480d = true;
                            z = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        /* renamed from: d */
        void m12270d() {
            synchronized (this) {
                this.f2481e = false;
            }
        }
    }

    /* renamed from: androidx.room.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$c.class */
    public static abstract class AbstractC0449c {

        /* renamed from: a */
        final String[] f2482a;

        public AbstractC0449c(String[] strArr) {
            this.f2482a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        /* renamed from: a */
        boolean m12269a() {
            return false;
        }

        /* renamed from: b */
        public abstract void m12268b(Set<String> set);
    }

    /* renamed from: androidx.room.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$d.class */
    public static class C0450d {

        /* renamed from: a */
        final int[] f2483a;

        /* renamed from: b */
        private final String[] f2484b;

        /* renamed from: c */
        final AbstractC0449c f2485c;

        /* renamed from: d */
        private final Set<String> f2486d;

        C0450d(AbstractC0449c abstractC0449c, int[] iArr, String[] strArr) {
            Set<String> set;
            this.f2485c = abstractC0449c;
            this.f2483a = iArr;
            this.f2484b = strArr;
            if (iArr.length == 1) {
                d.e.b bVar = new d.e.b();
                bVar.add(strArr[0]);
                set = Collections.unmodifiableSet(bVar);
            } else {
                set = null;
            }
            this.f2486d = set;
        }

        /* renamed from: a */
        void m12267a(Set<Integer> set) {
            int length = this.f2483a.length;
            Set<String> set2 = null;
            int i = 0;
            while (i < length) {
                Set<String> set3 = set2;
                if (set.contains(Integer.valueOf(this.f2483a[i]))) {
                    if (length == 1) {
                        set3 = this.f2486d;
                    } else {
                        set3 = set2;
                        if (set2 == null) {
                            set3 = new d.e.b<>(length);
                        }
                        set3.add(this.f2484b[i]);
                    }
                }
                i++;
                set2 = set3;
            }
            if (set2 != null) {
                this.f2485c.m12268b(set2);
            }
        }

        /* renamed from: b */
        void m12266b(String[] strArr) {
            Set<String> set;
            if (this.f2484b.length == 1) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    set = null;
                    if (i >= length) {
                        break;
                    } else if (strArr[i].equalsIgnoreCase(this.f2484b[0])) {
                        set = this.f2486d;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                Set<String> bVar = new d.e.b<>();
                for (String str : strArr) {
                    String[] strArr2 = this.f2484b;
                    int length2 = strArr2.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length2) {
                            String str2 = strArr2[i2];
                            if (str2.equalsIgnoreCase(str)) {
                                bVar.add(str2);
                                break;
                            }
                            i2++;
                        }
                    }
                }
                set = null;
                if (bVar.size() > 0) {
                    set = bVar;
                }
            }
            if (set != null) {
                this.f2485c.m12268b(set);
            }
        }
    }

    public C0446f(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f2469d = roomDatabase;
        this.f2473h = new C0448b(strArr.length);
        this.f2468c = map2;
        new C0445e(roomDatabase);
        int length = strArr.length;
        this.f2467b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f2466a.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.f2467b[i] = str2.toLowerCase(locale);
            } else {
                this.f2467b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f2466a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                a<String, Integer> aVar = this.f2466a;
                aVar.put(lowerCase3, aVar.get(lowerCase2));
            }
        }
    }

    /* renamed from: b */
    private static void m12286b(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    /* renamed from: h */
    private String[] m12280h(String[] strArr) {
        d.e.b bVar = new d.e.b();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f2468c.containsKey(lowerCase)) {
                bVar.addAll(this.f2468c.get(lowerCase));
            } else {
                bVar.add(str);
            }
        }
        return (String[]) bVar.toArray(new String[bVar.size()]);
    }

    /* renamed from: j */
    private void m12278j(d.r.a.b bVar, int i) {
        String[] strArr;
        bVar.n("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f2467b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f2465k) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            m12286b(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            bVar.n(sb.toString());
        }
    }

    /* renamed from: k */
    private void m12277k(d.r.a.b bVar, int i) {
        String[] strArr;
        String str = this.f2467b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f2465k) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            m12286b(sb, str, str2);
            bVar.n(sb.toString());
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void m12287a(AbstractC0449c abstractC0449c) {
        C0450d c0450d;
        String[] m12280h = m12280h(abstractC0449c.f2482a);
        int[] iArr = new int[m12280h.length];
        int length = m12280h.length;
        for (int i = 0; i < length; i++) {
            Integer num = (Integer) this.f2466a.get(m12280h[i].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + m12280h[i]);
            }
            iArr[i] = num.intValue();
        }
        C0450d c0450d2 = new C0450d(abstractC0449c, iArr, m12280h);
        synchronized (this.f2474i) {
            try {
                c0450d = (C0450d) this.f2474i.x(abstractC0449c, c0450d2);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c0450d != null || !this.f2473h.m12272b(iArr)) {
            return;
        }
        m12276l();
    }

    /* renamed from: c */
    boolean m12285c() {
        if (!this.f2469d.m12307o()) {
            return false;
        }
        if (!this.f2471f) {
            this.f2469d.m12313i().b();
        }
        if (this.f2471f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    /* renamed from: d */
    public void m12284d(d.r.a.b bVar) {
        synchronized (this) {
            if (this.f2471f) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            bVar.n("PRAGMA temp_store = MEMORY;");
            bVar.n("PRAGMA recursive_triggers='ON';");
            bVar.n("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            m12275m(bVar);
            this.f2472g = bVar.s("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f2471f = true;
        }
    }

    /* renamed from: e */
    public void m12283e(String... strArr) {
        synchronized (this.f2474i) {
            try {
                Iterator it = this.f2474i.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (!((AbstractC0449c) entry.getKey()).m12269a()) {
                        ((C0450d) entry.getValue()).m12266b(strArr);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public void m12282f() {
        if (this.f2470e.compareAndSet(false, true)) {
            this.f2469d.m12312j().execute(this.f2475j);
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: g */
    public void m12281g(AbstractC0449c abstractC0449c) {
        C0450d c0450d;
        synchronized (this.f2474i) {
            c0450d = (C0450d) this.f2474i.A(abstractC0449c);
        }
        if (c0450d == null || !this.f2473h.m12271c(c0450d.f2483a)) {
            return;
        }
        m12276l();
    }

    /* renamed from: i */
    public void m12279i(Context context, String str) {
        new C0451g(context, str, this, this.f2469d.m12312j());
    }

    /* renamed from: l */
    void m12276l() {
        if (!this.f2469d.m12307o()) {
            return;
        }
        m12275m(this.f2469d.m12313i().b());
    }

    /* renamed from: m */
    public void m12275m(d.r.a.b bVar) {
        if (bVar.A()) {
            return;
        }
        while (true) {
            try {
                Lock m12314h = this.f2469d.m12314h();
                m12314h.lock();
                int[] m12273a = this.f2473h.m12273a();
                if (m12273a == null) {
                    m12314h.unlock();
                    return;
                }
                int length = m12273a.length;
                bVar.i();
                for (int i = 0; i < length; i++) {
                    int i2 = m12273a[i];
                    if (i2 == 1) {
                        m12278j(bVar, i);
                    } else if (i2 == 2) {
                        m12277k(bVar, i);
                    }
                }
                bVar.I();
                bVar.h();
                this.f2473h.m12270d();
                m12314h.unlock();
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }
}
