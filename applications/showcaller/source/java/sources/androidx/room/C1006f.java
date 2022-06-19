package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import p020b.p029b.p030a.p032b.C1475b;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1780f;
import p020b.p070r.p071a.C1771a;
/* renamed from: androidx.room.f */
/* loaded from: classes-dex2jar.jar:androidx/room/f.class */
public class C1006f {

    /* renamed from: a */
    private static final String[] f4456a = {"UPDATE", OkHttpUtils.METHOD.DELETE, "INSERT"};

    /* renamed from: c */
    final String[] f4458c;

    /* renamed from: d */
    private Map<String, Set<String>> f4459d;

    /* renamed from: e */
    final RoomDatabase f4460e;

    /* renamed from: h */
    volatile AbstractC1780f f4463h;

    /* renamed from: i */
    private C1008b f4464i;

    /* renamed from: j */
    private final C1005e f4465j;

    /* renamed from: l */
    private C1011g f4467l;

    /* renamed from: f */
    AtomicBoolean f4461f = new AtomicBoolean(false);

    /* renamed from: g */
    private volatile boolean f4462g = false;
    @SuppressLint({"RestrictedApi"})

    /* renamed from: k */
    final C1475b<AbstractC1009c, C1010d> f4466k = new C1475b<>();

    /* renamed from: m */
    Runnable f4468m = new RunnableC1007a();

    /* renamed from: b */
    final HashMap<String, Integer> f4457b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$a.class */
    public class RunnableC1007a implements Runnable {
        RunnableC1007a() {
            C1006f.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        private Set<Integer> m31245a() {
            HashSet hashSet = new HashSet();
            Cursor m31282p = C1006f.this.f4460e.m31282p(new C1771a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (m31282p.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(m31282p.getInt(0)));
                } catch (Throwable th) {
                    m31282p.close();
                    throw th;
                }
            }
            m31282p.close();
            if (!hashSet.isEmpty()) {
                C1006f.this.f4463h.mo28895r();
            }
            return hashSet;
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x017f A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 393
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.C1006f.RunnableC1007a.run():void");
        }
    }

    /* renamed from: androidx.room.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$b.class */
    public static class C1008b {

        /* renamed from: a */
        final long[] f4470a;

        /* renamed from: b */
        final boolean[] f4471b;

        /* renamed from: c */
        final int[] f4472c;

        /* renamed from: d */
        boolean f4473d;

        /* renamed from: e */
        boolean f4474e;

        C1008b(int i) {
            long[] jArr = new long[i];
            this.f4470a = jArr;
            boolean[] zArr = new boolean[i];
            this.f4471b = zArr;
            this.f4472c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* renamed from: a */
        int[] m31244a() {
            synchronized (this) {
                if (this.f4473d && !this.f4474e) {
                    int length = this.f4470a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.f4474e = true;
                            this.f4473d = false;
                            return this.f4472c;
                        }
                        boolean z = this.f4470a[i] > 0;
                        boolean[] zArr = this.f4471b;
                        if (z != zArr[i]) {
                            int[] iArr = this.f4472c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.f4472c[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }

        /* renamed from: b */
        boolean m31243b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f4470a;
                    long j = jArr[i];
                    jArr[i] = 1 + j;
                    if (j == 0) {
                        this.f4473d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: c */
        boolean m31242c(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f4470a;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        this.f4473d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: d */
        void m31241d() {
            synchronized (this) {
                this.f4474e = false;
            }
        }
    }

    /* renamed from: androidx.room.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$c.class */
    public static abstract class AbstractC1009c {

        /* renamed from: a */
        final String[] f4475a;

        public AbstractC1009c(String[] strArr) {
            this.f4475a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        /* renamed from: a */
        boolean mo31237a() {
            return false;
        }

        /* renamed from: b */
        public abstract void mo31236b(Set<String> set);
    }

    /* renamed from: androidx.room.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$d.class */
    public static class C1010d {

        /* renamed from: a */
        final int[] f4476a;

        /* renamed from: b */
        private final String[] f4477b;

        /* renamed from: c */
        final AbstractC1009c f4478c;

        /* renamed from: d */
        private final Set<String> f4479d;

        C1010d(AbstractC1009c abstractC1009c, int[] iArr, String[] strArr) {
            this.f4478c = abstractC1009c;
            this.f4476a = iArr;
            this.f4477b = strArr;
            if (iArr.length != 1) {
                this.f4479d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.f4479d = Collections.unmodifiableSet(hashSet);
        }

        /* renamed from: a */
        void m31240a(Set<Integer> set) {
            int length = this.f4476a.length;
            HashSet hashSet = null;
            int i = 0;
            while (i < length) {
                HashSet hashSet2 = hashSet;
                if (set.contains(Integer.valueOf(this.f4476a[i]))) {
                    if (length == 1) {
                        hashSet2 = this.f4479d;
                    } else {
                        hashSet2 = hashSet;
                        if (hashSet == null) {
                            hashSet2 = new HashSet(length);
                        }
                        hashSet2.add(this.f4477b[i]);
                    }
                }
                i++;
                hashSet = hashSet2;
            }
            if (hashSet != null) {
                this.f4478c.mo31236b(hashSet);
            }
        }

        /* renamed from: b */
        void m31239b(String[] strArr) {
            HashSet hashSet;
            if (this.f4477b.length == 1) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    hashSet = null;
                    if (i >= length) {
                        break;
                    } else if (strArr[i].equalsIgnoreCase(this.f4477b[0])) {
                        hashSet = this.f4479d;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                HashSet hashSet2 = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f4477b;
                    int length2 = strArr2.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length2) {
                            String str2 = strArr2[i2];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet2.add(str2);
                                break;
                            }
                            i2++;
                        }
                    }
                }
                hashSet = null;
                if (hashSet2.size() > 0) {
                    hashSet = hashSet2;
                }
            }
            if (hashSet != null) {
                this.f4478c.mo31236b(hashSet);
            }
        }
    }

    public C1006f(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f4460e = roomDatabase;
        this.f4464i = new C1008b(strArr.length);
        this.f4459d = map2;
        this.f4465j = new C1005e(roomDatabase);
        int length = strArr.length;
        this.f4458c = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f4457b.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.f4458c[i] = str2.toLowerCase(locale);
            } else {
                this.f4458c[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f4457b.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.f4457b;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    /* renamed from: b */
    private static void m31257b(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    /* renamed from: h */
    private String[] m31251h(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f4459d.containsKey(lowerCase)) {
                hashSet.addAll(this.f4459d.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: j */
    private void m31249j(AbstractC1772b abstractC1772b, int i) {
        String[] strArr;
        abstractC1772b.mo28910n("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f4458c[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f4456a) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            m31257b(sb, str, str2);
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
            abstractC1772b.mo28910n(sb.toString());
        }
    }

    /* renamed from: k */
    private void m31248k(AbstractC1772b abstractC1772b, int i) {
        String[] strArr;
        String str = this.f4458c[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f4456a) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            m31257b(sb, str, str2);
            abstractC1772b.mo28910n(sb.toString());
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void m31258a(AbstractC1009c abstractC1009c) {
        C1010d mo29982j;
        String[] m31251h = m31251h(abstractC1009c.f4475a);
        int[] iArr = new int[m31251h.length];
        int length = m31251h.length;
        for (int i = 0; i < length; i++) {
            Integer num = this.f4457b.get(m31251h[i].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + m31251h[i]);
            }
            iArr[i] = num.intValue();
        }
        C1010d c1010d = new C1010d(abstractC1009c, iArr, m31251h);
        synchronized (this.f4466k) {
            mo29982j = this.f4466k.mo29982j(abstractC1009c, c1010d);
        }
        if (mo29982j != null || !this.f4464i.m31243b(iArr)) {
            return;
        }
        m31247l();
    }

    /* renamed from: c */
    boolean m31256c() {
        if (!this.f4460e.m31283o()) {
            return false;
        }
        if (!this.f4462g) {
            this.f4460e.m31289i().mo28907K();
        }
        if (this.f4462g) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    /* renamed from: d */
    public void m31255d(AbstractC1772b abstractC1772b) {
        synchronized (this) {
            if (this.f4462g) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            abstractC1772b.mo28910n("PRAGMA temp_store = MEMORY;");
            abstractC1772b.mo28910n("PRAGMA recursive_triggers='ON';");
            abstractC1772b.mo28910n("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            m31246m(abstractC1772b);
            this.f4463h = abstractC1772b.mo28909s("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f4462g = true;
        }
    }

    /* renamed from: e */
    public void m31254e(String... strArr) {
        synchronized (this.f4466k) {
            Iterator<Map.Entry<AbstractC1009c, C1010d>> it = this.f4466k.iterator();
            while (it.hasNext()) {
                Map.Entry<AbstractC1009c, C1010d> next = it.next();
                if (!next.getKey().mo31237a()) {
                    next.getValue().m31239b(strArr);
                }
            }
        }
    }

    /* renamed from: f */
    public void m31253f() {
        if (this.f4461f.compareAndSet(false, true)) {
            this.f4460e.m31288j().execute(this.f4468m);
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: g */
    public void m31252g(AbstractC1009c abstractC1009c) {
        C1010d mo29981l;
        synchronized (this.f4466k) {
            mo29981l = this.f4466k.mo29981l(abstractC1009c);
        }
        if (mo29981l == null || !this.f4464i.m31242c(mo29981l.f4476a)) {
            return;
        }
        m31247l();
    }

    /* renamed from: i */
    public void m31250i(Context context, String str) {
        this.f4467l = new C1011g(context, str, this, this.f4460e.m31288j());
    }

    /* renamed from: l */
    void m31247l() {
        if (!this.f4460e.m31283o()) {
            return;
        }
        m31246m(this.f4460e.m31289i().mo28907K());
    }

    /* renamed from: m */
    public void m31246m(AbstractC1772b abstractC1772b) {
        if (abstractC1772b.mo28914V()) {
            return;
        }
        while (true) {
            try {
                Lock m31290h = this.f4460e.m31290h();
                m31290h.lock();
                int[] m31244a = this.f4464i.m31244a();
                if (m31244a == null) {
                    m31290h.unlock();
                    return;
                }
                int length = m31244a.length;
                abstractC1772b.mo28912h();
                for (int i = 0; i < length; i++) {
                    int i2 = m31244a[i];
                    if (i2 == 1) {
                        m31249j(abstractC1772b, i);
                    } else if (i2 == 2) {
                        m31248k(abstractC1772b, i);
                    }
                }
                abstractC1772b.mo28919G();
                abstractC1772b.mo28916O();
                this.f4464i.m31241d();
                m31290h.unlock();
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }
}
