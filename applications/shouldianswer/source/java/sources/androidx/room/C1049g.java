package androidx.room;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.p002a.p003a.p005b.C0037b;
import androidx.p042i.p043a.AbstractC0778b;
import androidx.p042i.p043a.AbstractC0786f;
import androidx.p042i.p043a.C0768a;
import com.google.firebase.perf.FirebasePerformance;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
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
/* renamed from: androidx.room.g */
/* loaded from: classes-dex2jar.jar:androidx/room/g.class */
public class C1049g {

    /* renamed from: h */
    private static final String[] f3276h = {"UPDATE", FirebasePerformance.HttpMethod.DELETE, "INSERT"};

    /* renamed from: b */
    final String[] f3278b;

    /* renamed from: c */
    final AbstractC1063j f3279c;

    /* renamed from: e */
    volatile AbstractC0786f f3281e;

    /* renamed from: i */
    private Map<String, Set<String>> f3284i;

    /* renamed from: k */
    private C1051a f3286k;

    /* renamed from: l */
    private final C1048f f3287l;

    /* renamed from: m */
    private C1054h f3288m;

    /* renamed from: d */
    AtomicBoolean f3280d = new AtomicBoolean(false);

    /* renamed from: j */
    private volatile boolean f3285j = false;

    /* renamed from: f */
    final C0037b<AbstractC1052b, C1053c> f3282f = new C0037b<>();

    /* renamed from: g */
    Runnable f3283g = new Runnable() { // from class: androidx.room.g.1
        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        private Set<Integer> m4462a() {
            HashSet hashSet = new HashSet();
            Cursor m4448a = C1049g.this.f3279c.m4448a(new C0768a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (m4448a.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(m4448a.getInt(0)));
                } catch (Throwable th) {
                    m4448a.close();
                    throw th;
                }
            }
            m4448a.close();
            if (!hashSet.isEmpty()) {
                C1049g.this.f3281e.mo5354a();
            }
            return hashSet;
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0172 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 380
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.C1049g.RunnableC10501.run():void");
        }
    };

    /* renamed from: a */
    final HashMap<String, Integer> f3277a = new HashMap<>();

    /* renamed from: androidx.room.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$a.class */
    public static class C1051a {

        /* renamed from: a */
        final long[] f3290a;

        /* renamed from: b */
        final boolean[] f3291b;

        /* renamed from: c */
        final int[] f3292c;

        /* renamed from: d */
        boolean f3293d;

        /* renamed from: e */
        boolean f3294e;

        C1051a(int i) {
            this.f3290a = new long[i];
            this.f3291b = new boolean[i];
            this.f3292c = new int[i];
            Arrays.fill(this.f3290a, 0L);
            Arrays.fill(this.f3291b, false);
        }

        /* renamed from: a */
        boolean m4460a(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long j = this.f3290a[i];
                    this.f3290a[i] = 1 + j;
                    if (j == 0) {
                        this.f3293d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: a */
        int[] m4461a() {
            synchronized (this) {
                if (this.f3293d && !this.f3294e) {
                    int length = this.f3290a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.f3294e = true;
                            this.f3293d = false;
                            return this.f3292c;
                        }
                        boolean z = this.f3290a[i] > 0;
                        if (z != this.f3291b[i]) {
                            int[] iArr = this.f3292c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.f3292c[i] = 0;
                        }
                        this.f3291b[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }

        /* renamed from: b */
        void m4459b() {
            synchronized (this) {
                this.f3294e = false;
            }
        }

        /* renamed from: b */
        boolean m4458b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long j = this.f3290a[i];
                    this.f3290a[i] = j - 1;
                    if (j == 1) {
                        this.f3293d = true;
                        z = true;
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: androidx.room.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$b.class */
    public static abstract class AbstractC1052b {

        /* renamed from: a */
        final String[] f3295a;

        public AbstractC1052b(String[] strArr) {
            this.f3295a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        /* renamed from: a */
        public abstract void mo4453a(Set<String> set);

        /* renamed from: a */
        boolean mo4454a() {
            return false;
        }
    }

    /* renamed from: androidx.room.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$c.class */
    public static class C1053c {

        /* renamed from: a */
        final int[] f3296a;

        /* renamed from: b */
        final AbstractC1052b f3297b;

        /* renamed from: c */
        private final String[] f3298c;

        /* renamed from: d */
        private final Set<String> f3299d;

        C1053c(AbstractC1052b abstractC1052b, int[] iArr, String[] strArr) {
            this.f3297b = abstractC1052b;
            this.f3296a = iArr;
            this.f3298c = strArr;
            if (iArr.length != 1) {
                this.f3299d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(this.f3298c[0]);
            this.f3299d = Collections.unmodifiableSet(hashSet);
        }

        /* renamed from: a */
        void m4457a(Set<Integer> set) {
            int length = this.f3296a.length;
            HashSet hashSet = null;
            int i = 0;
            while (i < length) {
                HashSet hashSet2 = hashSet;
                if (set.contains(Integer.valueOf(this.f3296a[i]))) {
                    if (length == 1) {
                        hashSet2 = this.f3299d;
                    } else {
                        hashSet2 = hashSet;
                        if (hashSet == null) {
                            hashSet2 = new HashSet(length);
                        }
                        hashSet2.add(this.f3298c[i]);
                    }
                }
                i++;
                hashSet = hashSet2;
            }
            if (hashSet != null) {
                this.f3297b.mo4453a(hashSet);
            }
        }

        /* renamed from: a */
        void m4456a(String[] strArr) {
            HashSet hashSet;
            if (this.f3298c.length == 1) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    hashSet = null;
                    if (i >= length) {
                        break;
                    } else if (strArr[i].equalsIgnoreCase(this.f3298c[0])) {
                        hashSet = this.f3299d;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                HashSet hashSet2 = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f3298c;
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
                this.f3297b.mo4453a(hashSet);
            }
        }
    }

    public C1049g(AbstractC1063j abstractC1063j, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f3279c = abstractC1063j;
        this.f3286k = new C1051a(strArr.length);
        this.f3284i = map2;
        this.f3287l = new C1048f(this.f3279c);
        int length = strArr.length;
        this.f3278b = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.f3277a.put(lowerCase, Integer.valueOf(i));
            String str = map.get(strArr[i]);
            if (str != null) {
                this.f3278b[i] = str.toLowerCase(Locale.US);
            } else {
                this.f3278b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String lowerCase2 = entry.getValue().toLowerCase(Locale.US);
            if (this.f3277a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(Locale.US);
                HashMap<String, Integer> hashMap = this.f3277a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    /* renamed from: a */
    private void m4472a(AbstractC0778b abstractC0778b, int i) {
        String[] strArr;
        String str = this.f3278b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3276h) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            m4470a(sb, str, str2);
            abstractC0778b.mo5365c(sb.toString());
        }
    }

    /* renamed from: a */
    private static void m4470a(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append(AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR);
        sb.append(str2);
        sb.append("`");
    }

    /* renamed from: b */
    private void m4466b(AbstractC0778b abstractC0778b, int i) {
        String[] strArr;
        abstractC0778b.mo5365c("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f3278b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3276h) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            m4470a(sb, str, str2);
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
            abstractC0778b.mo5365c(sb.toString());
        }
    }

    /* renamed from: b */
    private String[] m4464b(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f3284i.containsKey(lowerCase)) {
                hashSet.addAll(this.f3284i.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: a */
    public void m4474a(Context context, String str) {
        this.f3288m = new C1054h(context, str, this, this.f3279c.m4438i());
    }

    /* renamed from: a */
    public void m4473a(AbstractC0778b abstractC0778b) {
        synchronized (this) {
            if (this.f3285j) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            abstractC0778b.mo5365c("PRAGMA temp_store = MEMORY;");
            abstractC0778b.mo5365c("PRAGMA recursive_triggers='ON';");
            abstractC0778b.mo5365c("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            m4467b(abstractC0778b);
            this.f3281e = abstractC0778b.mo5369a("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f3285j = true;
        }
    }

    /* renamed from: a */
    public void m4471a(AbstractC1052b abstractC1052b) {
        C1053c mo8011a;
        String[] m4464b = m4464b(abstractC1052b.f3295a);
        int[] iArr = new int[m4464b.length];
        int length = m4464b.length;
        for (int i = 0; i < length; i++) {
            Integer num = this.f3277a.get(m4464b[i].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + m4464b[i]);
            }
            iArr[i] = num.intValue();
        }
        C1053c c1053c = new C1053c(abstractC1052b, iArr, m4464b);
        synchronized (this.f3282f) {
            mo8011a = this.f3282f.mo8011a(abstractC1052b, c1053c);
        }
        if (mo8011a != null || !this.f3286k.m4460a(iArr)) {
            return;
        }
        m4463c();
    }

    /* renamed from: a */
    public void m4469a(String... strArr) {
        synchronized (this.f3282f) {
            Iterator<Map.Entry<AbstractC1052b, C1053c>> it = this.f3282f.iterator();
            while (it.hasNext()) {
                Map.Entry<AbstractC1052b, C1053c> next = it.next();
                if (!next.getKey().mo4454a()) {
                    next.getValue().m4456a(strArr);
                }
            }
        }
    }

    /* renamed from: a */
    boolean m4475a() {
        if (!this.f3279c.m4443d()) {
            return false;
        }
        if (!this.f3285j) {
            this.f3279c.m4444b().mo4399b();
        }
        if (this.f3285j) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    /* renamed from: b */
    public void m4468b() {
        if (this.f3280d.compareAndSet(false, true)) {
            this.f3279c.m4438i().execute(this.f3283g);
        }
    }

    /* renamed from: b */
    public void m4467b(AbstractC0778b abstractC0778b) {
        if (abstractC0778b.mo5364d()) {
            return;
        }
        while (true) {
            try {
                Lock m4450a = this.f3279c.m4450a();
                m4450a.lock();
                int[] m4461a = this.f3286k.m4461a();
                if (m4461a == null) {
                    m4450a.unlock();
                    return;
                }
                int length = m4461a.length;
                abstractC0778b.mo5372a();
                for (int i = 0; i < length; i++) {
                    int i2 = m4461a[i];
                    if (i2 == 1) {
                        m4466b(abstractC0778b, i);
                    } else if (i2 == 2) {
                        m4472a(abstractC0778b, i);
                    }
                }
                abstractC0778b.mo5366c();
                abstractC0778b.mo5368b();
                this.f3286k.m4459b();
                m4450a.unlock();
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }

    /* renamed from: b */
    public void m4465b(AbstractC1052b abstractC1052b) {
        C1053c mo8009b;
        synchronized (this.f3282f) {
            mo8009b = this.f3282f.mo8009b(abstractC1052b);
        }
        if (mo8009b == null || !this.f3286k.m4458b(mo8009b.f3296a)) {
            return;
        }
        m4463c();
    }

    /* renamed from: c */
    void m4463c() {
        if (!this.f3279c.m4443d()) {
            return;
        }
        m4467b(this.f3279c.m4444b().mo4399b());
    }
}
