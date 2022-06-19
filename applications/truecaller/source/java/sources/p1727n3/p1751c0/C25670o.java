package p1727n3.p1751c0;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import androidx.lifecycle.LiveData;
import com.razorpay.AnalyticsConstants;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import p1727n3.p1746c.p1747a.p1749b.C25635b;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p1727n3.p1781e0.p1782a.C26146a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c0.o */
/* loaded from: classes-dex2jar.jar:n3/c0/o.class */
public class C25670o {

    /* renamed from: m */
    public static final String[] f71893m = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: b */
    public final String[] f71895b;

    /* renamed from: c */
    public Map<String, Set<String>> f71896c;

    /* renamed from: d */
    public final AbstractC25677q f71897d;

    /* renamed from: g */
    public volatile AbstractC26154f f71900g;

    /* renamed from: h */
    public C25672b f71901h;

    /* renamed from: i */
    public final C25669n f71902i;

    /* renamed from: k */
    public C25676p f71904k;

    /* renamed from: e */
    public AtomicBoolean f71898e = new AtomicBoolean(false);

    /* renamed from: f */
    public volatile boolean f71899f = false;

    /* renamed from: j */
    public final C25635b<AbstractC25673c, C25674d> f71903j = new C25635b<>();

    /* renamed from: l */
    public Runnable f71905l = new RunnableC25671a();

    /* renamed from: a */
    public final HashMap<String, Integer> f71894a = new HashMap<>();

    /* renamed from: n3.c0.o$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/o$a.class */
    public class RunnableC25671a implements Runnable {
        public RunnableC25671a() {
            C25670o.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        public final Set<Integer> m3068a() {
            HashSet hashSet = new HashSet();
            Cursor query = C25670o.this.f71897d.query(new C26146a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (query.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(query.getInt(0)));
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            query.close();
            if (!hashSet.isEmpty()) {
                C25670o.this.f71900g.m2673A();
            }
            return hashSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15 */
        /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Throwable] */
        /* JADX WARN: Type inference failed for: r7v10 */
        /* JADX WARN: Type inference failed for: r7v11 */
        /* JADX WARN: Type inference failed for: r7v12 */
        /* JADX WARN: Type inference failed for: r7v9 */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Throwable] */
        @Override // java.lang.Runnable
        public void run() {
            AbstractC25677q abstractC25677q;
            Set<String> set;
            Throwable th;
            Set<Integer> set2;
            Lock closeLock = C25670o.this.f71897d.getCloseLock();
            closeLock.lock();
            try {
                try {
                } catch (SQLiteException | IllegalStateException e) {
                    abstractC25677q = null;
                }
                if (!C25670o.this.m3075c()) {
                    return;
                }
                if (!C25670o.this.f71898e.compareAndSet(true, false)) {
                    return;
                }
                if (C25670o.this.f71897d.inTransaction()) {
                    return;
                }
                abstractC25677q = C25670o.this.f71897d;
                if (abstractC25677q.mWriteAheadLoggingEnabled) {
                    try {
                        AbstractC26147b writableDatabase = abstractC25677q.getOpenHelper().getWritableDatabase();
                        writableDatabase.mo2669M();
                        try {
                            set2 = m3068a();
                            try {
                                writableDatabase.mo2663b1();
                                writableDatabase.mo2659f1();
                                abstractC25677q = set2;
                            } catch (Throwable th2) {
                                th = th2;
                                writableDatabase.mo2659f1();
                                Set<Integer> set3 = set2;
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            set2 = null;
                        }
                    } catch (SQLiteException | IllegalStateException e2) {
                    }
                } else {
                    abstractC25677q = m3068a();
                }
                if ((abstractC25677q == 1 ? 1 : 0) == null || abstractC25677q.isEmpty()) {
                    return;
                }
                synchronized (C25670o.this.f71903j) {
                    Iterator<Map.Entry<AbstractC25673c, C25674d>> it = C25670o.this.f71903j.iterator();
                    while (true) {
                        C25635b.AbstractC25638e abstractC25638e = (C25635b.AbstractC25638e) it;
                        if (abstractC25638e.hasNext()) {
                            C25674d c25674d = (C25674d) ((Map.Entry) abstractC25638e.next()).getValue();
                            int length = c25674d.f71913a.length;
                            int i = 0;
                            Set<String> set4 = null;
                            while (true) {
                                set = set4;
                                if (i >= length) {
                                    break;
                                }
                                Set<String> set5 = set;
                                if (abstractC25677q.contains(Integer.valueOf(c25674d.f71913a[i]))) {
                                    if (length == 1) {
                                        set5 = c25674d.f71916d;
                                    } else {
                                        set5 = set;
                                        if (set == null) {
                                            set5 = new HashSet<>(length);
                                        }
                                        set5.add(c25674d.f71914b[i]);
                                    }
                                }
                                i++;
                                set4 = set5;
                            }
                            if (set != null) {
                                c25674d.f71915c.mo3054a(set);
                            }
                        }
                    }
                }
            } finally {
                closeLock.unlock();
                Objects.requireNonNull(C25670o.this);
            }
        }
    }

    /* renamed from: n3.c0.o$b */
    /* loaded from: classes-dex2jar.jar:n3/c0/o$b.class */
    public static class C25672b {

        /* renamed from: a */
        public final long[] f71907a;

        /* renamed from: b */
        public final boolean[] f71908b;

        /* renamed from: c */
        public final int[] f71909c;

        /* renamed from: d */
        public boolean f71910d;

        /* renamed from: e */
        public boolean f71911e;

        public C25672b(int i) {
            long[] jArr = new long[i];
            this.f71907a = jArr;
            boolean[] zArr = new boolean[i];
            this.f71908b = zArr;
            this.f71909c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* renamed from: a */
        public int[] m3067a() {
            synchronized (this) {
                if (this.f71910d && !this.f71911e) {
                    int length = this.f71907a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.f71911e = true;
                            this.f71910d = false;
                            return this.f71909c;
                        }
                        boolean z = this.f71907a[i] > 0;
                        boolean[] zArr = this.f71908b;
                        if (z != zArr[i]) {
                            int[] iArr = this.f71909c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.f71909c[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }
    }

    /* renamed from: n3.c0.o$c */
    /* loaded from: classes-dex2jar.jar:n3/c0/o$c.class */
    public static abstract class AbstractC25673c {

        /* renamed from: a */
        public final String[] f71912a;

        public AbstractC25673c(String[] strArr) {
            this.f71912a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        /* renamed from: a */
        public abstract void mo3054a(Set<String> set);
    }

    /* renamed from: n3.c0.o$d */
    /* loaded from: classes-dex2jar.jar:n3/c0/o$d.class */
    public static class C25674d {

        /* renamed from: a */
        public final int[] f71913a;

        /* renamed from: b */
        public final String[] f71914b;

        /* renamed from: c */
        public final AbstractC25673c f71915c;

        /* renamed from: d */
        public final Set<String> f71916d;

        public C25674d(AbstractC25673c abstractC25673c, int[] iArr, String[] strArr) {
            this.f71915c = abstractC25673c;
            this.f71913a = iArr;
            this.f71914b = strArr;
            if (iArr.length != 1) {
                this.f71916d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.f71916d = Collections.unmodifiableSet(hashSet);
        }
    }

    /* renamed from: n3.c0.o$e */
    /* loaded from: classes-dex2jar.jar:n3/c0/o$e.class */
    public static class C25675e extends AbstractC25673c {

        /* renamed from: b */
        public final C25670o f71917b;

        /* renamed from: c */
        public final WeakReference<AbstractC25673c> f71918c;

        public C25675e(C25670o c25670o, AbstractC25673c abstractC25673c) {
            super(abstractC25673c.f71912a);
            this.f71917b = c25670o;
            this.f71918c = new WeakReference<>(abstractC25673c);
        }

        @Override // p1727n3.p1751c0.C25670o.AbstractC25673c
        /* renamed from: a */
        public void mo3054a(Set<String> set) {
            AbstractC25673c abstractC25673c = this.f71918c.get();
            if (abstractC25673c == null) {
                this.f71917b.m3074d(this);
            } else {
                abstractC25673c.mo3054a(set);
            }
        }
    }

    public C25670o(AbstractC25677q abstractC25677q, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f71897d = abstractC25677q;
        this.f71901h = new C25672b(strArr.length);
        this.f71896c = map2;
        this.f71902i = new C25669n(abstractC25677q);
        int length = strArr.length;
        this.f71895b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f71894a.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.f71895b[i] = str2.toLowerCase(locale);
            } else {
                this.f71895b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f71894a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.f71894a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    /* renamed from: a */
    public void m3077a(AbstractC25673c abstractC25673c) {
        C25674d mo3104d;
        boolean z;
        String[] m3073e = m3073e(abstractC25673c.f71912a);
        int length = m3073e.length;
        int[] iArr = new int[length];
        int length2 = m3073e.length;
        for (int i = 0; i < length2; i++) {
            Integer num = this.f71894a.get(m3073e[i].toLowerCase(Locale.US));
            if (num == null) {
                StringBuilder m8728C = C22128a.m8728C("There is no table with name ");
                m8728C.append(m3073e[i]);
                throw new IllegalArgumentException(m8728C.toString());
            }
            iArr[i] = num.intValue();
        }
        C25674d c25674d = new C25674d(abstractC25673c, iArr, m3073e);
        synchronized (this.f71903j) {
            mo3104d = this.f71903j.mo3104d(abstractC25673c, c25674d);
        }
        if (mo3104d == null) {
            C25672b c25672b = this.f71901h;
            synchronized (c25672b) {
                z = false;
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = iArr[i2];
                    long[] jArr = c25672b.f71907a;
                    long j = jArr[i3];
                    jArr[i3] = 1 + j;
                    if (j == 0) {
                        c25672b.f71910d = true;
                        z = true;
                    }
                }
            }
            if (!z) {
                return;
            }
            m3070h();
        }
    }

    /* renamed from: b */
    public <T> LiveData<T> m3076b(String[] strArr, boolean z, Callable<T> callable) {
        C25669n c25669n = this.f71902i;
        String[] m3073e = m3073e(strArr);
        for (String str : m3073e) {
            if (!this.f71894a.containsKey(str.toLowerCase(Locale.US))) {
                throw new IllegalArgumentException(C22128a.m8543z2("There is no table with name ", str));
            }
        }
        Objects.requireNonNull(c25669n);
        return new C25687z(c25669n.f71892b, c25669n, z, callable, m3073e);
    }

    /* renamed from: c */
    public boolean m3075c() {
        if (!this.f71897d.isOpen()) {
            return false;
        }
        if (!this.f71899f) {
            this.f71897d.getOpenHelper().getWritableDatabase();
        }
        return this.f71899f;
    }

    /* renamed from: d */
    public void m3074d(AbstractC25673c abstractC25673c) {
        C25674d mo3103e;
        boolean z;
        synchronized (this.f71903j) {
            mo3103e = this.f71903j.mo3103e(abstractC25673c);
        }
        if (mo3103e != null) {
            C25672b c25672b = this.f71901h;
            int[] iArr = mo3103e.f71913a;
            synchronized (c25672b) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = c25672b.f71907a;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        c25672b.f71910d = true;
                        z = true;
                    }
                }
            }
            if (!z) {
                return;
            }
            m3070h();
        }
    }

    /* renamed from: e */
    public final String[] m3073e(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f71896c.containsKey(lowerCase)) {
                hashSet.addAll(this.f71896c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: f */
    public final void m3072f(AbstractC26147b abstractC26147b, int i) {
        String[] strArr;
        abstractC26147b.mo2668S0("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f71895b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f71893m) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            C22128a.m8666T0(sb, str, AnalyticsConstants.DELIMITER_MAIN, str2, "`");
            C22128a.m8666T0(sb, " AFTER ", str2, " ON `", str);
            C22128a.m8666T0(sb, "` BEGIN UPDATE ", "room_table_modification_log", " SET ", "invalidated");
            C22128a.m8666T0(sb, " = 1", " WHERE ", "table_id", " = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            abstractC26147b.mo2668S0(sb.toString());
        }
    }

    /* renamed from: g */
    public final void m3071g(AbstractC26147b abstractC26147b, int i) {
        String[] strArr;
        String str = this.f71895b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f71893m) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            abstractC26147b.mo2668S0(C22128a.m8606k(sb, str, AnalyticsConstants.DELIMITER_MAIN, str2, "`"));
        }
    }

    /* renamed from: h */
    public void m3070h() {
        if (!this.f71897d.isOpen()) {
            return;
        }
        m3069i(this.f71897d.getOpenHelper().getWritableDatabase());
    }

    /* renamed from: i */
    public void m3069i(AbstractC26147b abstractC26147b) {
        if (abstractC26147b.mo2665X1()) {
            return;
        }
        while (true) {
            try {
                Lock closeLock = this.f71897d.getCloseLock();
                closeLock.lock();
                int[] m3067a = this.f71901h.m3067a();
                if (m3067a == null) {
                    closeLock.unlock();
                    return;
                }
                int length = m3067a.length;
                if (abstractC26147b.mo2660e2()) {
                    abstractC26147b.mo2669M();
                } else {
                    abstractC26147b.mo2657w();
                }
                for (int i = 0; i < length; i++) {
                    int i2 = m3067a[i];
                    if (i2 == 1) {
                        m3072f(abstractC26147b, i);
                    } else if (i2 == 2) {
                        m3071g(abstractC26147b, i);
                    }
                }
                abstractC26147b.mo2663b1();
                abstractC26147b.mo2659f1();
                C25672b c25672b = this.f71901h;
                synchronized (c25672b) {
                    c25672b.f71911e = false;
                }
                closeLock.unlock();
            } catch (SQLiteException | IllegalStateException e) {
                return;
            }
        }
    }
}
