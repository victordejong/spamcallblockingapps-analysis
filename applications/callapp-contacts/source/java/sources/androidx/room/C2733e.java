package androidx.room;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.p010a.p011a.p013b.C0105b;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.sqlite.p082db.AbstractC2795e;
import androidx.sqlite.p082db.C2783a;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: androidx.room.e */
/* loaded from: classes-dex2jar.jar:androidx/room/e.class */
public final class C2733e {

    /* renamed from: j */
    private static final String[] f10368j = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: a */
    final HashMap<String, Integer> f10369a;

    /* renamed from: b */
    final String[] f10370b;

    /* renamed from: c */
    final AbstractC2748h f10371c;

    /* renamed from: d */
    AtomicBoolean f10372d;

    /* renamed from: e */
    volatile boolean f10373e;

    /* renamed from: f */
    volatile AbstractC2795e f10374f;

    /* renamed from: g */
    final C0105b<AbstractC2736b, C2737c> f10375g;

    /* renamed from: h */
    C2739f f10376h;

    /* renamed from: i */
    Runnable f10377i;

    /* renamed from: k */
    private Map<String, Set<String>> f10378k;

    /* renamed from: l */
    private C2735a f10379l;

    /* renamed from: m */
    private final C2732d f10380m;

    /* renamed from: androidx.room.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/e$a.class */
    public static final class C2735a {

        /* renamed from: a */
        final long[] f10382a;

        /* renamed from: b */
        final boolean[] f10383b;

        /* renamed from: c */
        final int[] f10384c;

        /* renamed from: d */
        boolean f10385d;

        /* renamed from: e */
        boolean f10386e;

        C2735a(int i) {
            long[] jArr = new long[i];
            this.f10382a = jArr;
            boolean[] zArr = new boolean[i];
            this.f10383b = zArr;
            this.f10384c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* renamed from: a */
        final boolean m39971a(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f10382a;
                    long j = jArr[i];
                    jArr[i] = 1 + j;
                    if (j == 0) {
                        this.f10385d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: a */
        final int[] m39972a() {
            synchronized (this) {
                if (this.f10385d && !this.f10386e) {
                    int length = this.f10382a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.f10386e = true;
                            this.f10385d = false;
                            return this.f10384c;
                        }
                        boolean z = this.f10382a[i] > 0;
                        boolean[] zArr = this.f10383b;
                        if (z != zArr[i]) {
                            int[] iArr = this.f10384c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.f10384c[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }

        /* renamed from: b */
        final boolean m39970b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f10382a;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        this.f10385d = true;
                        z = true;
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: androidx.room.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/e$b.class */
    public static abstract class AbstractC2736b {

        /* renamed from: a */
        final String[] f10387a;

        protected AbstractC2736b(String str, String... strArr) {
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
            this.f10387a = strArr2;
            strArr2[strArr.length] = str;
        }

        public AbstractC2736b(String[] strArr) {
            this.f10387a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        /* renamed from: a */
        public abstract void mo39941a(Set<String> set);

        /* renamed from: a */
        public boolean mo39968a() {
            return false;
        }
    }

    /* renamed from: androidx.room.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/e$c.class */
    public static final class C2737c {

        /* renamed from: a */
        final int[] f10388a;

        /* renamed from: b */
        final String[] f10389b;

        /* renamed from: c */
        final AbstractC2736b f10390c;

        /* renamed from: d */
        final Set<String> f10391d;

        C2737c(AbstractC2736b abstractC2736b, int[] iArr, String[] strArr) {
            this.f10390c = abstractC2736b;
            this.f10388a = iArr;
            this.f10389b = strArr;
            if (iArr.length != 1) {
                this.f10391d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.f10391d = Collections.unmodifiableSet(hashSet);
        }
    }

    /* renamed from: androidx.room.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/e$d.class */
    static final class C2738d extends AbstractC2736b {

        /* renamed from: b */
        final C2733e f10392b;

        /* renamed from: c */
        final WeakReference<AbstractC2736b> f10393c;

        public C2738d(C2733e c2733e, AbstractC2736b abstractC2736b) {
            super(abstractC2736b.f10387a);
            this.f10392b = c2733e;
            this.f10393c = new WeakReference<>(abstractC2736b);
        }

        @Override // androidx.room.C2733e.AbstractC2736b
        /* renamed from: a */
        public final void mo39941a(Set<String> set) {
            AbstractC2736b abstractC2736b = this.f10393c.get();
            if (abstractC2736b == null) {
                this.f10392b.m39974b(this);
            } else {
                abstractC2736b.mo39941a(set);
            }
        }
    }

    public C2733e(AbstractC2748h abstractC2748h, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f10372d = new AtomicBoolean(false);
        this.f10373e = false;
        this.f10375g = new C0105b<>();
        this.f10377i = new Runnable() { // from class: androidx.room.e.1
            /* JADX WARN: Finally extract failed */
            /* renamed from: a */
            private Set<Integer> m39973a() {
                HashSet hashSet = new HashSet();
                Cursor m39964a = C2733e.this.f10371c.m39964a(new C2783a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null);
                while (m39964a.moveToNext()) {
                    try {
                        hashSet.add(Integer.valueOf(m39964a.getInt(0)));
                    } catch (Throwable th) {
                        m39964a.close();
                        throw th;
                    }
                }
                m39964a.close();
                if (!hashSet.isEmpty()) {
                    C2733e.this.f10374f.mo39882a();
                }
                return hashSet;
            }

            /* JADX WARN: Not initialized variable reg: 10, insn: 0x00ef: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:45:0x00ef */
            /* JADX WARN: Not initialized variable reg: 11, insn: 0x00f7: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:47:0x00f7 */
            /* JADX WARN: Removed duplicated region for block: B:17:0x0054 A[DONT_GENERATE] */
            /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[Catch: all -> 0x0105, SQLiteException -> 0x0109, SQLiteException | IllegalStateException -> 0x010e, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0105, blocks: (B:3:0x000e, B:7:0x0028, B:9:0x002f, B:11:0x003d, B:13:0x0043, B:19:0x005b, B:23:0x0075, B:27:0x008d, B:29:0x009a, B:35:0x00c4, B:40:0x00dd, B:43:0x00ec, B:48:0x00fd, B:52:0x0112), top: B:100:0x000e }] */
            /* JADX WARN: Removed duplicated region for block: B:56:0x0126  */
            /* JADX WARN: Removed duplicated region for block: B:93:0x01e6 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 495
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.C2733e.RunnableC27341.run():void");
            }
        };
        this.f10371c = abstractC2748h;
        this.f10379l = new C2735a(strArr.length);
        this.f10369a = new HashMap<>();
        this.f10378k = map2;
        this.f10380m = new C2732d(abstractC2748h);
        int length = strArr.length;
        this.f10370b = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.f10369a.put(lowerCase, Integer.valueOf(i));
            String str = map.get(strArr[i]);
            if (str != null) {
                this.f10370b[i] = str.toLowerCase(Locale.US);
            } else {
                this.f10370b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String lowerCase2 = entry.getValue().toLowerCase(Locale.US);
            if (this.f10369a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(Locale.US);
                HashMap<String, Integer> hashMap = this.f10369a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    public C2733e(AbstractC2748h abstractC2748h, String... strArr) {
        this(abstractC2748h, new HashMap(), Collections.emptyMap(), strArr);
    }

    /* renamed from: a */
    private void m39981a() {
        if (!this.f10371c.m39962b()) {
            return;
        }
        m39979a(this.f10371c.f10418d.mo39906b());
    }

    /* renamed from: a */
    private void m39978a(AbstractC2792b abstractC2792b, int i) {
        String[] strArr;
        String str = this.f10370b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f10368j) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            m39977a(sb, str, str2);
            abstractC2792b.mo39894c(sb.toString());
        }
    }

    /* renamed from: a */
    private static void m39977a(StringBuilder sb, String str, String str2) {
        sb.append("`room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    /* renamed from: a */
    private String[] m39976a(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f10378k.containsKey(lowerCase)) {
                hashSet.addAll(this.f10378k.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: a */
    public final <T> LiveData<T> m39975a(String[] strArr, boolean z, Callable<T> callable) {
        C2732d c2732d = this.f10380m;
        String[] m39976a = m39976a(strArr);
        for (String str : m39976a) {
            if (!this.f10369a.containsKey(str.toLowerCase(Locale.US))) {
                throw new IllegalArgumentException("There is no table with name ".concat(String.valueOf(str)));
            }
        }
        return new C2758l(c2732d.f10367b, c2732d, z, callable, m39976a);
    }

    /* renamed from: a */
    public final void m39980a(AbstractC2736b abstractC2736b) {
        C2737c mo46402a;
        String[] m39976a = m39976a(abstractC2736b.f10387a);
        int[] iArr = new int[m39976a.length];
        int length = m39976a.length;
        for (int i = 0; i < length; i++) {
            Integer num = this.f10369a.get(m39976a[i].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + m39976a[i]);
            }
            iArr[i] = num.intValue();
        }
        C2737c c2737c = new C2737c(abstractC2736b, iArr, m39976a);
        synchronized (this.f10375g) {
            mo46402a = this.f10375g.mo46402a(abstractC2736b, c2737c);
        }
        if (mo46402a != null || !this.f10379l.m39971a(iArr)) {
            return;
        }
        m39981a();
    }

    /* renamed from: a */
    public final void m39979a(AbstractC2792b abstractC2792b) {
        String[] strArr;
        if (abstractC2792b.mo39893d()) {
            return;
        }
        while (true) {
            try {
                ReentrantReadWriteLock.ReadLock readLock = this.f10371c.f10422h.readLock();
                readLock.lock();
                int[] m39972a = this.f10379l.m39972a();
                if (m39972a == null) {
                    readLock.unlock();
                    return;
                }
                int length = m39972a.length;
                abstractC2792b.mo39901a();
                for (int i = 0; i < length; i++) {
                    int i2 = m39972a[i];
                    if (i2 == 1) {
                        abstractC2792b.mo39894c("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
                        String str = this.f10370b[i];
                        StringBuilder sb = new StringBuilder();
                        for (String str2 : f10368j) {
                            sb.setLength(0);
                            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
                            m39977a(sb, str, str2);
                            sb.append(" AFTER ");
                            sb.append(str2);
                            sb.append(" ON `");
                            sb.append(str);
                            sb.append("` BEGIN UPDATE room_table_modification_log SET invalidated");
                            sb.append(" = 1 WHERE table_id = ");
                            sb.append(i);
                            sb.append(" AND invalidated = 0; END");
                            abstractC2792b.mo39894c(sb.toString());
                        }
                    } else if (i2 == 2) {
                        m39978a(abstractC2792b, i);
                    }
                }
                abstractC2792b.mo39895c();
                abstractC2792b.mo39897b();
                C2735a c2735a = this.f10379l;
                synchronized (c2735a) {
                    c2735a.f10386e = false;
                }
                readLock.unlock();
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m39974b(AbstractC2736b abstractC2736b) {
        C2737c mo46401b;
        synchronized (this.f10375g) {
            mo46401b = this.f10375g.mo46401b(abstractC2736b);
        }
        if (mo46401b == null || !this.f10379l.m39970b(mo46401b.f10388a)) {
            return;
        }
        m39981a();
    }
}
