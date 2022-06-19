package p067d1;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.support.p012v4.media.C0082b;
import androidx.appcompat.widget.C0249l;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p099g1.AbstractC2795a;
import p110h1.C2993a;
import p110h1.C3001f;
import p173n.C3686b;
/* renamed from: d1.e */
/* loaded from: classes-dex2jar.jar:d1/e.class */
public class C2146e {

    /* renamed from: k */
    public static final String[] f7845k = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: b */
    public final String[] f7847b;

    /* renamed from: c */
    public Map<String, Set<String>> f7848c;

    /* renamed from: d */
    public final AbstractC2151f f7849d;

    /* renamed from: g */
    public volatile C3001f f7852g;

    /* renamed from: h */
    public C2148b f7853h;

    /* renamed from: e */
    public AtomicBoolean f7850e = new AtomicBoolean(false);

    /* renamed from: f */
    public volatile boolean f7851f = false;
    @SuppressLint({"RestrictedApi"})

    /* renamed from: i */
    public final C3686b<AbstractC2149c, C2150d> f7854i = new C3686b<>();

    /* renamed from: j */
    public Runnable f7855j = new RunnableC2147a();

    /* renamed from: a */
    public final HashMap<String, Integer> f7846a = new HashMap<>();

    /* renamed from: d1.e$a */
    /* loaded from: classes-dex2jar.jar:d1/e$a.class */
    public class RunnableC2147a implements Runnable {
        public RunnableC2147a() {
            C2146e.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        public final Set<Integer> m3824b() {
            HashSet hashSet = new HashSet();
            Cursor m3812j = C2146e.this.f7849d.m3812j(new C0249l("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null);
            while (m3812j.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(m3812j.getInt(0)));
                } catch (Throwable th) {
                    m3812j.close();
                    throw th;
                }
            }
            m3812j.close();
            if (!hashSet.isEmpty()) {
                C2146e.this.f7852g.m2768d();
            }
            return hashSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r7v10 */
        /* JADX WARN: Type inference failed for: r7v11 */
        /* JADX WARN: Type inference failed for: r7v12 */
        /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Throwable] */
        /* JADX WARN: Type inference failed for: r7v6 */
        /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Throwable] */
        @Override // java.lang.Runnable
        public void run() {
            AbstractC2151f abstractC2151f;
            Throwable th;
            Set<Integer> set;
            ReentrantReadWriteLock.ReadLock readLock = C2146e.this.f7849d.f7873h.readLock();
            try {
                try {
                    readLock.lock();
                } finally {
                    readLock.unlock();
                }
            } catch (SQLiteException | IllegalStateException e) {
                abstractC2151f = null;
            }
            if (!C2146e.this.m3828a()) {
                return;
            }
            if (!C2146e.this.f7850e.compareAndSet(true, false)) {
                return;
            }
            if (C2146e.this.f7849d.m3814h()) {
                return;
            }
            abstractC2151f = C2146e.this.f7849d;
            if (abstractC2151f.f7871f) {
                try {
                    AbstractC2795a mo2773T = abstractC2151f.f7868c.mo2773T();
                    ((C2993a) mo2773T).f10085a.beginTransaction();
                    try {
                        set = m3824b();
                        try {
                            ((C2993a) mo2773T).f10085a.setTransactionSuccessful();
                            ((C2993a) mo2773T).f10085a.endTransaction();
                            abstractC2151f = set;
                        } catch (Throwable th2) {
                            th = th2;
                            ((C2993a) mo2773T).f10085a.endTransaction();
                            Set<Integer> set2 = set;
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        set = null;
                    }
                } catch (SQLiteException | IllegalStateException e2) {
                }
            } else {
                abstractC2151f = m3824b();
            }
            readLock.unlock();
            if ((abstractC2151f == 1 ? 1 : 0) == null || abstractC2151f.isEmpty()) {
                return;
            }
            synchronized (C2146e.this.f7854i) {
                Iterator<Map.Entry<AbstractC2149c, C2150d>> it2 = C2146e.this.f7854i.iterator();
                while (true) {
                    C3686b.AbstractC3691e abstractC3691e = (C3686b.AbstractC3691e) it2;
                    if (abstractC3691e.hasNext()) {
                        C2150d c2150d = (C2150d) ((Map.Entry) abstractC3691e.next()).getValue();
                        int length = c2150d.f7862a.length;
                        Set<String> set3 = null;
                        int i = 0;
                        while (i < length) {
                            Set<String> set4 = set3;
                            if (abstractC2151f.contains(Integer.valueOf(c2150d.f7862a[i]))) {
                                if (length == 1) {
                                    set4 = c2150d.f7865d;
                                } else {
                                    set4 = set3;
                                    if (set3 == null) {
                                        set4 = new HashSet<>(length);
                                    }
                                    set4.add(c2150d.f7863b[i]);
                                }
                            }
                            i++;
                            set3 = set4;
                        }
                        if (set3 != null) {
                            c2150d.f7864c.m3822a(set3);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: d1.e$b */
    /* loaded from: classes-dex2jar.jar:d1/e$b.class */
    public static class C2148b {

        /* renamed from: a */
        public final long[] f7857a;

        /* renamed from: b */
        public final boolean[] f7858b;

        /* renamed from: c */
        public final int[] f7859c;

        /* renamed from: d */
        public boolean f7860d;

        /* renamed from: e */
        public boolean f7861e;

        public C2148b(int i) {
            long[] jArr = new long[i];
            this.f7857a = jArr;
            boolean[] zArr = new boolean[i];
            this.f7858b = zArr;
            this.f7859c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* renamed from: a */
        public int[] m3823a() {
            synchronized (this) {
                if (this.f7860d && !this.f7861e) {
                    int length = this.f7857a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.f7861e = true;
                            this.f7860d = false;
                            return this.f7859c;
                        }
                        boolean z = this.f7857a[i] > 0;
                        boolean[] zArr = this.f7858b;
                        if (z != zArr[i]) {
                            int[] iArr = this.f7859c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.f7859c[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }
    }

    /* renamed from: d1.e$c */
    /* loaded from: classes-dex2jar.jar:d1/e$c.class */
    public static abstract class AbstractC2149c {
        /* renamed from: a */
        public abstract void m3822a(Set<String> set);
    }

    /* renamed from: d1.e$d */
    /* loaded from: classes-dex2jar.jar:d1/e$d.class */
    public static class C2150d {

        /* renamed from: a */
        public final int[] f7862a;

        /* renamed from: b */
        public final String[] f7863b;

        /* renamed from: c */
        public final AbstractC2149c f7864c;

        /* renamed from: d */
        public final Set<String> f7865d;
    }

    public C2146e(AbstractC2151f abstractC2151f, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f7849d = abstractC2151f;
        this.f7853h = new C2148b(strArr.length);
        this.f7848c = map2;
        Collections.newSetFromMap(new IdentityHashMap());
        int length = strArr.length;
        this.f7847b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f7846a.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.f7847b[i] = str2.toLowerCase(locale);
            } else {
                this.f7847b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f7846a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.f7846a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    /* renamed from: a */
    public boolean m3828a() {
        if (!this.f7849d.m3813i()) {
            return false;
        }
        if (!this.f7851f) {
            this.f7849d.f7868c.mo2773T();
        }
        return this.f7851f;
    }

    /* renamed from: b */
    public final void m3827b(AbstractC2795a abstractC2795a, int i) {
        String[] strArr;
        C2993a c2993a = (C2993a) abstractC2795a;
        c2993a.f10085a.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f7847b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f7845k) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            C0082b.m8749m(sb, str, "_", str2, "`");
            C0082b.m8749m(sb, " AFTER ", str2, " ON `", str);
            C0082b.m8749m(sb, "` BEGIN UPDATE ", "room_table_modification_log", " SET ", "invalidated");
            C0082b.m8749m(sb, " = 1", " WHERE ", "table_id", " = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            c2993a.f10085a.execSQL(sb.toString());
        }
    }

    /* renamed from: c */
    public final void m3826c(AbstractC2795a abstractC2795a, int i) {
        String[] strArr;
        String str = this.f7847b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f7845k) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            ((C2993a) abstractC2795a).f10085a.execSQL(C1676a.m4788i(sb, str, "_", str2, "`"));
        }
    }

    /* renamed from: d */
    public void m3825d(AbstractC2795a abstractC2795a) {
        if (((C2993a) abstractC2795a).f10085a.inTransaction()) {
            return;
        }
        while (true) {
            try {
                ReentrantReadWriteLock.ReadLock readLock = this.f7849d.f7873h.readLock();
                readLock.lock();
                int[] m3823a = this.f7853h.m3823a();
                if (m3823a == null) {
                    readLock.unlock();
                    return;
                }
                int length = m3823a.length;
                ((C2993a) abstractC2795a).f10085a.beginTransaction();
                for (int i = 0; i < length; i++) {
                    int i2 = m3823a[i];
                    if (i2 == 1) {
                        m3827b(abstractC2795a, i);
                    } else if (i2 == 2) {
                        m3826c(abstractC2795a, i);
                    }
                }
                ((C2993a) abstractC2795a).f10085a.setTransactionSuccessful();
                ((C2993a) abstractC2795a).f10085a.endTransaction();
                C2148b c2148b = this.f7853h;
                synchronized (c2148b) {
                    c2148b.f7861e = false;
                }
                readLock.unlock();
            } catch (SQLiteException | IllegalStateException e) {
                return;
            }
        }
    }
}
