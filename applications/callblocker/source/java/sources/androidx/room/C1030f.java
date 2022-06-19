package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.p003a.p004a.p006b.C0068b;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.p042i.p043a.C0739a;
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
/* renamed from: androidx.room.f */
/* loaded from: classes-dex2jar.jar:androidx/room/f.class */
public class C1030f {

    /* renamed from: h */
    private static final String[] f3486h = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: b */
    final String[] f3488b;

    /* renamed from: c */
    final AbstractC1044i f3489c;

    /* renamed from: e */
    volatile AbstractC0757f f3491e;

    /* renamed from: i */
    private Map<String, Set<String>> f3494i;

    /* renamed from: k */
    private C1032a f3496k;

    /* renamed from: l */
    private final C1029e f3497l;

    /* renamed from: m */
    private C1035g f3498m;

    /* renamed from: d */
    AtomicBoolean f3490d = new AtomicBoolean(false);

    /* renamed from: j */
    private volatile boolean f3495j = false;
    @SuppressLint({"RestrictedApi"})

    /* renamed from: f */
    final C0068b<AbstractC1033b, C1034c> f3492f = new C0068b<>();

    /* renamed from: g */
    Runnable f3493g = new Runnable() { // from class: androidx.room.f.1
        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        private Set<Integer> m18314a() {
            HashSet hashSet = new HashSet();
            Cursor m18299a = C1030f.this.f3489c.m18299a(new C0739a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (m18299a.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(m18299a.getInt(0)));
                } catch (Throwable th) {
                    m18299a.close();
                    throw th;
                }
            }
            m18299a.close();
            if (!hashSet.isEmpty()) {
                C1030f.this.f3491e.mo19505a();
            }
            return hashSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:165:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.IllegalStateException] */
        /* JADX WARN: Type inference failed for: r7v8, types: [java.lang.IllegalStateException] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 541
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.C1030f.RunnableC10311.run():void");
        }
    };

    /* renamed from: a */
    final HashMap<String, Integer> f3487a = new HashMap<>();

    /* renamed from: androidx.room.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$a.class */
    public static class C1032a {

        /* renamed from: a */
        final long[] f3500a;

        /* renamed from: b */
        final boolean[] f3501b;

        /* renamed from: c */
        final int[] f3502c;

        /* renamed from: d */
        boolean f3503d;

        /* renamed from: e */
        boolean f3504e;

        C1032a(int i) {
            this.f3500a = new long[i];
            this.f3501b = new boolean[i];
            this.f3502c = new int[i];
            Arrays.fill(this.f3500a, 0L);
            Arrays.fill(this.f3501b, false);
        }

        /* renamed from: a */
        boolean m18312a(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long j = this.f3500a[i];
                    this.f3500a[i] = 1 + j;
                    if (j == 0) {
                        this.f3503d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: a */
        int[] m18313a() {
            int[] iArr;
            synchronized (this) {
                if (!this.f3503d || this.f3504e) {
                    iArr = null;
                } else {
                    int length = this.f3500a.length;
                    for (int i = 0; i < length; i++) {
                        boolean z = this.f3500a[i] > 0;
                        if (z != this.f3501b[i]) {
                            this.f3502c[i] = z ? 1 : 2;
                        } else {
                            this.f3502c[i] = 0;
                        }
                        this.f3501b[i] = z;
                    }
                    this.f3504e = true;
                    this.f3503d = false;
                    iArr = this.f3502c;
                }
            }
            return iArr;
        }

        /* renamed from: b */
        void m18311b() {
            synchronized (this) {
                this.f3504e = false;
            }
        }

        /* renamed from: b */
        boolean m18310b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long j = this.f3500a[i];
                    this.f3500a[i] = j - 1;
                    if (j == 1) {
                        this.f3503d = true;
                        z = true;
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: androidx.room.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$b.class */
    public static abstract class AbstractC1033b {

        /* renamed from: a */
        final String[] f3505a;

        public AbstractC1033b(String[] strArr) {
            this.f3505a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        /* renamed from: a */
        public abstract void mo18305a(Set<String> set);

        /* renamed from: a */
        boolean mo18306a() {
            return false;
        }
    }

    /* renamed from: androidx.room.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/f$c.class */
    public static class C1034c {

        /* renamed from: a */
        final int[] f3506a;

        /* renamed from: b */
        final AbstractC1033b f3507b;

        /* renamed from: c */
        private final String[] f3508c;

        /* renamed from: d */
        private final Set<String> f3509d;

        C1034c(AbstractC1033b abstractC1033b, int[] iArr, String[] strArr) {
            this.f3507b = abstractC1033b;
            this.f3506a = iArr;
            this.f3508c = strArr;
            if (iArr.length != 1) {
                this.f3509d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(this.f3508c[0]);
            this.f3509d = Collections.unmodifiableSet(hashSet);
        }

        /* renamed from: a */
        void m18309a(Set<Integer> set) {
            HashSet hashSet = null;
            int length = this.f3506a.length;
            int i = 0;
            while (i < length) {
                HashSet hashSet2 = hashSet;
                if (set.contains(Integer.valueOf(this.f3506a[i]))) {
                    if (length == 1) {
                        hashSet2 = this.f3509d;
                    } else {
                        hashSet2 = hashSet;
                        if (hashSet == null) {
                            hashSet2 = new HashSet(length);
                        }
                        hashSet2.add(this.f3508c[i]);
                    }
                }
                i++;
                hashSet = hashSet2;
            }
            if (hashSet != null) {
                this.f3507b.mo18305a(hashSet);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m18308a(String[] strArr) {
            Set set;
            if (this.f3508c.length == 1) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    set = null;
                    if (i >= length) {
                        break;
                    } else if (strArr[i].equalsIgnoreCase(this.f3508c[0])) {
                        set = this.f3509d;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f3508c;
                    int length2 = strArr2.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length2) {
                            String str2 = strArr2[i2];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet.add(str2);
                                break;
                            }
                            i2++;
                        }
                    }
                }
                set = null;
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.f3507b.mo18305a(set);
            }
        }
    }

    public C1030f(AbstractC1044i abstractC1044i, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f3489c = abstractC1044i;
        this.f3496k = new C1032a(strArr.length);
        this.f3494i = map2;
        this.f3497l = new C1029e(this.f3489c);
        int length = strArr.length;
        this.f3488b = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.f3487a.put(lowerCase, Integer.valueOf(i));
            String str = map.get(strArr[i]);
            if (str != null) {
                this.f3488b[i] = str.toLowerCase(Locale.US);
            } else {
                this.f3488b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String lowerCase2 = entry.getValue().toLowerCase(Locale.US);
            if (this.f3487a.containsKey(lowerCase2)) {
                this.f3487a.put(entry.getKey().toLowerCase(Locale.US), this.f3487a.get(lowerCase2));
            }
        }
    }

    /* renamed from: a */
    private void m18324a(AbstractC0749b abstractC0749b, int i) {
        String[] strArr;
        String str = this.f3488b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3486h) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            m18322a(sb, str, str2);
            abstractC0749b.mo19517c(sb.toString());
        }
    }

    /* renamed from: a */
    private static void m18322a(StringBuilder sb, String str, String str2) {
        sb.append("`").append("room_table_modification_trigger_").append(str).append("_").append(str2).append("`");
    }

    /* renamed from: b */
    private void m18318b(AbstractC0749b abstractC0749b, int i) {
        String[] strArr;
        abstractC0749b.mo19517c("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f3488b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3486h) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            m18322a(sb, str, str2);
            sb.append(" AFTER ").append(str2).append(" ON `").append(str).append("` BEGIN UPDATE ").append("room_table_modification_log").append(" SET ").append("invalidated").append(" = 1").append(" WHERE ").append("table_id").append(" = ").append(i).append(" AND ").append("invalidated").append(" = 0").append("; END");
            abstractC0749b.mo19517c(sb.toString());
        }
    }

    /* renamed from: b */
    private String[] m18316b(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f3494i.containsKey(lowerCase)) {
                hashSet.addAll(this.f3494i.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: a */
    public void m18326a(Context context, String str) {
        this.f3498m = new C1035g(context, str, this, this.f3489c.m18289i());
    }

    /* renamed from: a */
    public void m18325a(AbstractC0749b abstractC0749b) {
        synchronized (this) {
            if (this.f3495j) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            abstractC0749b.mo19517c("PRAGMA temp_store = MEMORY;");
            abstractC0749b.mo19517c("PRAGMA recursive_triggers='ON';");
            abstractC0749b.mo19517c("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            m18319b(abstractC0749b);
            this.f3491e = abstractC0749b.mo19522a("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f3495j = true;
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void m18323a(AbstractC1033b abstractC1033b) {
        C1034c mo22303a;
        String[] m18316b = m18316b(abstractC1033b.f3505a);
        int[] iArr = new int[m18316b.length];
        int length = m18316b.length;
        for (int i = 0; i < length; i++) {
            Integer num = this.f3487a.get(m18316b[i].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + m18316b[i]);
            }
            iArr[i] = num.intValue();
        }
        C1034c c1034c = new C1034c(abstractC1033b, iArr, m18316b);
        synchronized (this.f3492f) {
            mo22303a = this.f3492f.mo22303a(abstractC1033b, c1034c);
        }
        if (mo22303a != null || !this.f3496k.m18312a(iArr)) {
            return;
        }
        m18315c();
    }

    /* renamed from: a */
    public void m18321a(String... strArr) {
        synchronized (this.f3492f) {
            Iterator<Map.Entry<AbstractC1033b, C1034c>> it = this.f3492f.iterator();
            while (it.hasNext()) {
                Map.Entry<AbstractC1033b, C1034c> next = it.next();
                if (!next.getKey().mo18306a()) {
                    next.getValue().m18308a(strArr);
                }
            }
        }
    }

    /* renamed from: a */
    boolean m18327a() {
        boolean z = false;
        if (this.f3489c.m18294d()) {
            if (!this.f3495j) {
                this.f3489c.m18295b().mo18243b();
            }
            if (!this.f3495j) {
                Log.e("ROOM", "database is not initialized even though it is open");
            } else {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m18320b() {
        if (this.f3490d.compareAndSet(false, true)) {
            this.f3489c.m18289i().execute(this.f3493g);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public void m18319b(AbstractC0749b abstractC0749b) {
        if (abstractC0749b.mo19516d()) {
            return;
        }
        while (true) {
            Lock m18301a = this.f3489c.m18301a();
            m18301a.lock();
            int[] m18313a = this.f3496k.m18313a();
            if (m18313a == null) {
                m18301a.unlock();
                return;
            }
            int length = m18313a.length;
            abstractC0749b.mo19525a();
            for (int i = 0; i < length; i++) {
                switch (m18313a[i]) {
                    case 1:
                        m18318b(abstractC0749b, i);
                        break;
                    case 2:
                        m18324a(abstractC0749b, i);
                        break;
                }
            }
            abstractC0749b.mo19518c();
            try {
                abstractC0749b.mo19520b();
                this.f3496k.m18311b();
                try {
                    m18301a.unlock();
                } catch (SQLiteException | IllegalStateException e) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                    return;
                }
            } catch (Throwable th) {
                m18301a.unlock();
                throw th;
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: b */
    public void m18317b(AbstractC1033b abstractC1033b) {
        C1034c mo22301b;
        synchronized (this.f3492f) {
            mo22301b = this.f3492f.mo22301b(abstractC1033b);
        }
        if (mo22301b == null || !this.f3496k.m18310b(mo22301b.f3506a)) {
            return;
        }
        m18315c();
    }

    /* renamed from: c */
    void m18315c() {
        if (!this.f3489c.m18294d()) {
            return;
        }
        m18319b(this.f3489c.m18295b().mo18243b());
    }
}
