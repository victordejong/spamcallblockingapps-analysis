package androidx.room;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.lifecycle.LiveData;
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
/* loaded from: classes-dex2jar.jar:androidx/room/e.class */
public final class e {
    private static final String[] j = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: a  reason: collision with root package name */
    final HashMap<String, Integer> f5543a;

    /* renamed from: b  reason: collision with root package name */
    final String[] f5544b;

    /* renamed from: c  reason: collision with root package name */
    final h f5545c;

    /* renamed from: d  reason: collision with root package name */
    AtomicBoolean f5546d;
    volatile boolean e;
    volatile androidx.sqlite.db.e f;
    final androidx.a.a.b.b<b, c> g;
    f h;
    Runnable i;
    private Map<String, Set<String>> k;
    private a l;
    private final androidx.room.d m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/room/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final long[] f5548a;

        /* renamed from: b  reason: collision with root package name */
        final boolean[] f5549b;

        /* renamed from: c  reason: collision with root package name */
        final int[] f5550c;

        /* renamed from: d  reason: collision with root package name */
        boolean f5551d;
        boolean e;

        a(int i) {
            long[] jArr = new long[i];
            this.f5548a = jArr;
            boolean[] zArr = new boolean[i];
            this.f5549b = zArr;
            this.f5550c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        final boolean a(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f5548a;
                    long j = jArr[i];
                    jArr[i] = 1 + j;
                    if (j == 0) {
                        this.f5551d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        final int[] a() {
            synchronized (this) {
                if (this.f5551d && !this.e) {
                    int length = this.f5548a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i < length) {
                            boolean z = this.f5548a[i] > 0;
                            boolean[] zArr = this.f5549b;
                            if (z != zArr[i]) {
                                int[] iArr = this.f5550c;
                                if (!z) {
                                    i2 = 2;
                                }
                                iArr[i] = i2;
                            } else {
                                this.f5550c[i] = 0;
                            }
                            zArr[i] = z;
                            i++;
                        } else {
                            this.e = true;
                            this.f5551d = false;
                            return this.f5550c;
                        }
                    }
                }
                return null;
            }
        }

        final boolean b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f5548a;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        this.f5551d = true;
                        z = true;
                    }
                }
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/e$b.class */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        final String[] f5552a;

        protected b(String str, String... strArr) {
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
            this.f5552a = strArr2;
            strArr2[strArr.length] = str;
        }

        public b(String[] strArr) {
            this.f5552a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        public abstract void a(Set<String> set);

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/room/e$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final int[] f5553a;

        /* renamed from: b  reason: collision with root package name */
        final String[] f5554b;

        /* renamed from: c  reason: collision with root package name */
        final b f5555c;

        /* renamed from: d  reason: collision with root package name */
        final Set<String> f5556d;

        c(b bVar, int[] iArr, String[] strArr) {
            this.f5555c = bVar;
            this.f5553a = iArr;
            this.f5554b = strArr;
            if (iArr.length == 1) {
                HashSet hashSet = new HashSet();
                hashSet.add(strArr[0]);
                this.f5556d = Collections.unmodifiableSet(hashSet);
                return;
            }
            this.f5556d = null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/e$d.class */
    static final class d extends b {

        /* renamed from: b  reason: collision with root package name */
        final e f5557b;

        /* renamed from: c  reason: collision with root package name */
        final WeakReference<b> f5558c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(e eVar, b bVar) {
            super(bVar.f5552a);
            this.f5557b = eVar;
            this.f5558c = new WeakReference<>(bVar);
        }

        @Override // androidx.room.e.b
        public final void a(Set<String> set) {
            b bVar = this.f5558c.get();
            if (bVar == null) {
                this.f5557b.b(this);
            } else {
                bVar.a(set);
            }
        }
    }

    public e(h hVar, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f5546d = new AtomicBoolean(false);
        this.e = false;
        this.g = new androidx.a.a.b.b<>();
        this.i = new Runnable() { // from class: androidx.room.e.1
            /* JADX WARN: Finally extract failed */
            private Set<Integer> a() {
                HashSet hashSet = new HashSet();
                Cursor a2 = e.this.f5545c.a(new androidx.sqlite.db.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null);
                while (a2.moveToNext()) {
                    try {
                        hashSet.add(Integer.valueOf(a2.getInt(0)));
                    } catch (Throwable th) {
                        a2.close();
                        throw th;
                    }
                }
                a2.close();
                if (!hashSet.isEmpty()) {
                    e.this.f.a();
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
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.e.AnonymousClass1.run():void");
            }
        };
        this.f5545c = hVar;
        this.l = new a(strArr.length);
        this.f5543a = new HashMap<>();
        this.k = map2;
        this.m = new androidx.room.d(hVar);
        int length = strArr.length;
        this.f5544b = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.f5543a.put(lowerCase, Integer.valueOf(i));
            String str = map.get(strArr[i]);
            if (str != null) {
                this.f5544b[i] = str.toLowerCase(Locale.US);
            } else {
                this.f5544b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String lowerCase2 = entry.getValue().toLowerCase(Locale.US);
            if (this.f5543a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(Locale.US);
                HashMap<String, Integer> hashMap = this.f5543a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    public e(h hVar, String... strArr) {
        this(hVar, new HashMap(), Collections.emptyMap(), strArr);
    }

    private void a() {
        if (this.f5545c.b()) {
            a(this.f5545c.f5574d.b());
        }
    }

    private void a(androidx.sqlite.db.b bVar, int i) {
        String[] strArr;
        String str = this.f5544b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : j) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            a(sb, str, str2);
            bVar.c(sb.toString());
        }
    }

    private static void a(StringBuilder sb, String str, String str2) {
        sb.append("`room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    private String[] a(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.k.containsKey(lowerCase)) {
                hashSet.addAll(this.k.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public final <T> LiveData<T> a(String[] strArr, boolean z, Callable<T> callable) {
        androidx.room.d dVar = this.m;
        String[] a2 = a(strArr);
        for (String str : a2) {
            if (!this.f5543a.containsKey(str.toLowerCase(Locale.US))) {
                throw new IllegalArgumentException("There is no table with name ".concat(String.valueOf(str)));
            }
        }
        return new l(dVar.f5542b, dVar, z, callable, a2);
    }

    public final void a(b bVar) {
        c a2;
        String[] a3 = a(bVar.f5552a);
        int[] iArr = new int[a3.length];
        int length = a3.length;
        for (int i = 0; i < length; i++) {
            Integer num = this.f5543a.get(a3[i].toLowerCase(Locale.US));
            if (num != null) {
                iArr[i] = num.intValue();
            } else {
                throw new IllegalArgumentException("There is no table with name " + a3[i]);
            }
        }
        c cVar = new c(bVar, iArr, a3);
        synchronized (this.g) {
            a2 = this.g.a(bVar, cVar);
        }
        if (a2 == null && this.l.a(iArr)) {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(androidx.sqlite.db.b bVar) {
        String[] strArr;
        if (!bVar.d()) {
            while (true) {
                try {
                    ReentrantReadWriteLock.ReadLock readLock = this.f5545c.h.readLock();
                    readLock.lock();
                    int[] a2 = this.l.a();
                    if (a2 == null) {
                        readLock.unlock();
                        return;
                    }
                    int length = a2.length;
                    bVar.a();
                    for (int i = 0; i < length; i++) {
                        int i2 = a2[i];
                        if (i2 == 1) {
                            bVar.c("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
                            String str = this.f5544b[i];
                            StringBuilder sb = new StringBuilder();
                            for (String str2 : j) {
                                sb.setLength(0);
                                sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
                                a(sb, str, str2);
                                sb.append(" AFTER ");
                                sb.append(str2);
                                sb.append(" ON `");
                                sb.append(str);
                                sb.append("` BEGIN UPDATE room_table_modification_log SET invalidated");
                                sb.append(" = 1 WHERE table_id = ");
                                sb.append(i);
                                sb.append(" AND invalidated = 0; END");
                                bVar.c(sb.toString());
                            }
                        } else if (i2 == 2) {
                            a(bVar, i);
                        }
                    }
                    bVar.c();
                    bVar.b();
                    a aVar = this.l;
                    synchronized (aVar) {
                        aVar.e = false;
                    }
                    readLock.unlock();
                } catch (SQLiteException | IllegalStateException e) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                    return;
                }
            }
        }
    }

    public final void b(b bVar) {
        c b2;
        synchronized (this.g) {
            b2 = this.g.b(bVar);
        }
        if (b2 != null && this.l.b(b2.f5553a)) {
            a();
        }
    }
}
