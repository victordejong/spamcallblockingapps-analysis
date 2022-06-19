package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p682e.C12864a2;
@Deprecated
/* renamed from: e.a.m0.c1.b0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0.class */
public final class SharedPreferencesC18033b0 implements SharedPreferences, Runnable {

    /* renamed from: g */
    public static final int f50941g;

    /* renamed from: j */
    public static final BlockingQueueC18051r f50944j;

    /* renamed from: k */
    public static final ThreadPoolExecutor f50945k;

    /* renamed from: a */
    public final File f50947a;

    /* renamed from: b */
    public final File f50948b;

    /* renamed from: c */
    public final C18048o f50949c;

    /* renamed from: d */
    public AbstractC18046m f50950d;

    /* renamed from: e */
    public final WeakHashMap<AbstractC18037d, Object> f50951e = new WeakHashMap<>();

    /* renamed from: f */
    public final WeakHashMap<SharedPreferences.OnSharedPreferenceChangeListener, Object> f50952f = new WeakHashMap<>();

    /* renamed from: h */
    public static final Map<String, C18048o> f50942h = new HashMap();

    /* renamed from: i */
    public static final C18047n f50943i = new C18047n(null);

    /* renamed from: l */
    public static final Object f50946l = new Object();

    /* renamed from: e.a.m0.c1.b0$b */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$b.class */
    public interface AbstractC18035b {
        /* renamed from: a */
        void mo15514a(SharedPreferences.Editor editor, Map<String, Object> map);

        int getType();
    }

    /* renamed from: e.a.m0.c1.b0$c */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$c.class */
    public static class C18036c implements AbstractC18035b {
        public C18036c(C18034a c18034a) {
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18035b
        /* renamed from: a */
        public void mo15514a(SharedPreferences.Editor editor, Map<String, Object> map) {
            map.clear();
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18035b
        public final int getType() {
            return 4;
        }
    }

    /* renamed from: e.a.m0.c1.b0$d */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$d.class */
    public interface AbstractC18037d {
        /* renamed from: a */
        void mo15518a(SharedPreferences.Editor editor);

        /* renamed from: c */
        void mo15517c(SharedPreferences.Editor editor, Queue<AbstractC18035b> queue);
    }

    /* renamed from: e.a.m0.c1.b0$e */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$e.class */
    public static final class SharedPreferences$EditorC18038e implements SharedPreferences.Editor {

        /* renamed from: a */
        public final C18048o f50953a;

        /* renamed from: c */
        public final SharedPreferencesC18033b0 f50955c;

        /* renamed from: d */
        public final Queue<AbstractC18035b> f50956d = new ArrayDeque();

        /* renamed from: b */
        public final AbstractC18039f f50954b = C18040g.f50957a;

        public SharedPreferences$EditorC18038e(SharedPreferencesC18033b0 sharedPreferencesC18033b0, C18034a c18034a) {
            this.f50955c = sharedPreferencesC18033b0;
            this.f50953a = sharedPreferencesC18033b0.f50949c;
        }

        /* renamed from: a */
        public final boolean m15516a() {
            int i;
            int i2;
            SharedPreferencesC18033b0.f50943i.f50968e.incrementAndGet();
            boolean z = false;
            if (!this.f50956d.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f50956d.size());
                this.f50955c.m15519d(this, this.f50956d);
                synchronized (this.f50953a.f50971a) {
                    i2 = 0;
                    while (true) {
                        AbstractC18035b poll = this.f50956d.poll();
                        if (poll == null) {
                            break;
                        }
                        poll.mo15514a(this, this.f50953a.f50972b);
                        int i3 = i2 + 1;
                        i2 = i3;
                        if (poll instanceof AbstractC18049p) {
                            arrayList.add(((AbstractC18049p) poll).getKey());
                            i2 = i3;
                        }
                    }
                    this.f50953a.f50973c.addAndGet(i2);
                    this.f50955c.m15519d(this, null);
                }
                SharedPreferencesC18033b0 sharedPreferencesC18033b0 = this.f50955c;
                Objects.requireNonNull(sharedPreferencesC18033b0);
                if (!arrayList.isEmpty() && !sharedPreferencesC18033b0.f50952f.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (str != null && !sharedPreferencesC18033b0.f50952f.isEmpty()) {
                            for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : sharedPreferencesC18033b0.f50952f.keySet()) {
                                if (onSharedPreferenceChangeListener != null) {
                                    onSharedPreferenceChangeListener.onSharedPreferenceChanged(sharedPreferencesC18033b0, str);
                                }
                            }
                        }
                    }
                }
                i = i2;
                if (i2 != 0) {
                    C18048o c18048o = this.f50953a;
                    i = i2;
                    if (c18048o.f50974d == null) {
                        synchronized (c18048o) {
                            if (this.f50953a.f50974d == null) {
                                Runtime runtime = Runtime.getRuntime();
                                C18048o c18048o2 = this.f50953a;
                                Thread thread = new Thread(this.f50955c);
                                c18048o2.f50974d = thread;
                                runtime.addShutdownHook(thread);
                            }
                        }
                        i = i2;
                    }
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                z = true;
            }
            return z;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            SharedPreferencesC18033b0.f50943i.f50969f.incrementAndGet();
            if (m15516a()) {
                SharedPreferencesC18033b0 sharedPreferencesC18033b0 = this.f50955c;
                Objects.requireNonNull(sharedPreferencesC18033b0);
                SharedPreferencesC18033b0.f50945k.execute(sharedPreferencesC18033b0);
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f50956d.clear();
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(4, null, null));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            SharedPreferencesC18033b0.f50943i.f50970g.incrementAndGet();
            boolean z = false;
            if (m15516a()) {
                SharedPreferencesC18033b0 sharedPreferencesC18033b0 = this.f50955c;
                synchronized (sharedPreferencesC18033b0.f50949c) {
                    SharedPreferencesC18033b0.f50945k.execute(sharedPreferencesC18033b0);
                    try {
                        sharedPreferencesC18033b0.f50949c.wait();
                    } catch (InterruptedException e) {
                        z = false;
                    }
                }
                z = true;
            }
            return z;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(1, str, Boolean.valueOf(z)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(1, str, Float.valueOf(f)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(1, str, Integer.valueOf(i)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(1, str, Long.valueOf(j)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(1, str, str2));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(1, str, set));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.f50956d.offer(((C18040g) this.f50954b).m15515a(2, str, null));
            return this;
        }
    }

    /* renamed from: e.a.m0.c1.b0$f */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$f.class */
    public interface AbstractC18039f {
    }

    /* renamed from: e.a.m0.c1.b0$g */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$g.class */
    public static final class C18040g implements AbstractC18039f {

        /* renamed from: a */
        public static final C18040g f50957a = new C18040g();

        /* renamed from: a */
        public AbstractC18035b m15515a(int i, String str, Object obj) {
            if (4 == i) {
                return new C18036c(null);
            }
            if (1 == i) {
                return new C18042i(str, obj);
            }
            if (2 != i) {
                throw new IllegalArgumentException("Unknown action type. Type should be one from the list: TYPE_CLEAR, TYPE_PUT, TYPE_REMOVE.");
            }
            return new C18043j(str);
        }
    }

    /* renamed from: e.a.m0.c1.b0$h */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$h.class */
    public static final class C18041h implements AbstractC18046m {

        /* renamed from: a */
        public static final AbstractC18046m f50958a = new C18041h();

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18046m
        /* renamed from: b */
        public Map<String, Object> mo15513b(byte[] bArr) {
            return new HashMap();
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18046m
        /* renamed from: d */
        public byte[] mo15512d(Map<String, ?> map) {
            return new byte[0];
        }
    }

    /* renamed from: e.a.m0.c1.b0$i */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$i.class */
    public static class C18042i implements AbstractC18035b, AbstractC18049p, AbstractC18050q {

        /* renamed from: a */
        public final String f50959a;

        /* renamed from: b */
        public final Object f50960b;

        public C18042i(String str, Object obj) {
            this.f50959a = str;
            this.f50960b = obj;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18035b
        /* renamed from: a */
        public void mo15514a(SharedPreferences.Editor editor, Map<String, Object> map) {
            map.put(this.f50959a, this.f50960b);
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18049p
        public String getKey() {
            return this.f50959a;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18035b
        public final int getType() {
            return 1;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18050q
        public final Object getValue() {
            return this.f50960b;
        }
    }

    /* renamed from: e.a.m0.c1.b0$j */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$j.class */
    public static class C18043j implements AbstractC18035b, AbstractC18049p {

        /* renamed from: a */
        public final String f50961a;

        public C18043j(String str) {
            this.f50961a = str;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18035b
        /* renamed from: a */
        public void mo15514a(SharedPreferences.Editor editor, Map<String, Object> map) {
            map.remove(this.f50961a);
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18049p
        public String getKey() {
            return this.f50961a;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18035b
        public final int getType() {
            return 2;
        }
    }

    /* renamed from: e.a.m0.c1.b0$k */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$k.class */
    public static final class C18044k extends RuntimeException {
        public C18044k(String str) {
            super(str);
        }
    }

    /* renamed from: e.a.m0.c1.b0$l */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$l.class */
    public static final class ThreadFactoryC18045l implements ThreadFactory {

        /* renamed from: a */
        public static final ThreadFactory f50962a = new ThreadFactoryC18045l();

        /* renamed from: b */
        public static final AtomicInteger f50963b = new AtomicInteger();

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, C22128a.m8611i2("preferencesunified-thread-pool-", f50963b.getAndIncrement()));
            thread.setPriority(1);
            return thread;
        }
    }

    /* renamed from: e.a.m0.c1.b0$m */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$m.class */
    public interface AbstractC18046m {
        /* renamed from: b */
        Map<String, ?> mo15513b(byte[] bArr);

        /* renamed from: d */
        byte[] mo15512d(Map<String, ?> map);
    }

    /* renamed from: e.a.m0.c1.b0$n */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$n.class */
    public static final class C18047n {

        /* renamed from: a */
        public final AtomicInteger f50964a = new AtomicInteger();

        /* renamed from: b */
        public final AtomicInteger f50965b = new AtomicInteger();

        /* renamed from: c */
        public final AtomicInteger f50966c = new AtomicInteger();

        /* renamed from: d */
        public final AtomicInteger f50967d = new AtomicInteger();

        /* renamed from: e */
        public final AtomicInteger f50968e = new AtomicInteger();

        /* renamed from: f */
        public final AtomicInteger f50969f = new AtomicInteger();

        /* renamed from: g */
        public final AtomicInteger f50970g = new AtomicInteger();

        public C18047n(C18034a c18034a) {
        }
    }

    /* renamed from: e.a.m0.c1.b0$o */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$o.class */
    public static final class C18048o {

        /* renamed from: a */
        public final Object f50971a = new Object();

        /* renamed from: b */
        public final Map<String, Object> f50972b = new HashMap();

        /* renamed from: c */
        public final AtomicInteger f50973c = new AtomicInteger();

        /* renamed from: d */
        public Thread f50974d;

        public C18048o() {
        }

        public C18048o(C18034a c18034a) {
        }
    }

    /* renamed from: e.a.m0.c1.b0$p */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$p.class */
    public interface AbstractC18049p {
        String getKey();
    }

    /* renamed from: e.a.m0.c1.b0$q */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$q.class */
    public interface AbstractC18050q {
        Object getValue();
    }

    /* renamed from: e.a.m0.c1.b0$r */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/b0$r.class */
    public static final class BlockingQueueC18051r implements BlockingQueue<Runnable> {

        /* renamed from: a */
        public final LinkedBlockingQueue<Runnable> f50975a = new LinkedBlockingQueue<>();

        /* renamed from: b */
        public final HashMap<C18048o, SharedPreferencesC18033b0> f50976b = new HashMap<>();

        public BlockingQueueC18051r(C18034a c18034a) {
        }

        @Override // java.util.concurrent.BlockingQueue, java.util.Queue, java.util.Collection
        public boolean add(Object obj) {
            Runnable runnable = (Runnable) obj;
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends Runnable> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.BlockingQueue, java.util.Collection
        public boolean contains(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.BlockingQueue
        public int drainTo(Collection<? super Runnable> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.BlockingQueue
        public int drainTo(Collection<? super Runnable> collection, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Queue
        public Object element() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.f50975a.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<Runnable> iterator() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.BlockingQueue, java.util.Queue
        public boolean offer(Object obj) {
            boolean z;
            Runnable runnable = (Runnable) obj;
            SharedPreferencesC18033b0 sharedPreferencesC18033b0 = (SharedPreferencesC18033b0) runnable;
            synchronized (this.f50976b) {
                if (!this.f50976b.containsKey(sharedPreferencesC18033b0.f50949c)) {
                    SharedPreferencesC18033b0.f50943i.f50967d.incrementAndGet();
                    this.f50976b.put(sharedPreferencesC18033b0.f50949c, sharedPreferencesC18033b0);
                    z = this.f50975a.offer(runnable);
                } else {
                    SharedPreferencesC18033b0.f50943i.f50966c.incrementAndGet();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.concurrent.BlockingQueue
        public boolean offer(Runnable runnable, long j, TimeUnit timeUnit) throws InterruptedException {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Queue
        public Object peek() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Queue
        public Object poll() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.BlockingQueue
        public Runnable poll(long j, TimeUnit timeUnit) throws InterruptedException {
            Runnable poll = this.f50975a.poll(j, timeUnit);
            SharedPreferencesC18033b0 sharedPreferencesC18033b0 = (SharedPreferencesC18033b0) poll;
            HashMap<C18048o, SharedPreferencesC18033b0> hashMap = this.f50976b;
            if (hashMap != null && sharedPreferencesC18033b0 != null && sharedPreferencesC18033b0.f50949c != null) {
                synchronized (hashMap) {
                    this.f50976b.remove(sharedPreferencesC18033b0.f50949c);
                }
            }
            return poll;
        }

        @Override // java.util.concurrent.BlockingQueue
        public void put(Runnable runnable) throws InterruptedException {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.BlockingQueue
        public int remainingCapacity() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Queue
        public Object remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.BlockingQueue, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public int size() {
            return this.f50975a.size();
        }

        @Override // java.util.concurrent.BlockingQueue
        public Runnable take() throws InterruptedException {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f50941g = availableProcessors;
        BlockingQueueC18051r blockingQueueC18051r = new BlockingQueueC18051r(null);
        f50944j = blockingQueueC18051r;
        f50945k = new ThreadPoolExecutor(0, availableProcessors, 30L, TimeUnit.SECONDS, blockingQueueC18051r, ThreadFactoryC18045l.f50962a);
    }

    public SharedPreferencesC18033b0(Context context, String str, AbstractC18046m abstractC18046m) {
        this.f50950d = C18041h.f50958a;
        File file = new File(C22128a.m8618h(new StringBuilder(), context.getApplicationInfo().dataDir, "/shared_prefs"));
        this.f50948b = file;
        File file2 = new File(file, str);
        this.f50947a = file2;
        this.f50950d = abstractC18046m;
        String absolutePath = file2.getAbsolutePath();
        boolean z = false;
        Map<String, C18048o> map = f50942h;
        C18048o c18048o = map.get(absolutePath);
        C18048o c18048o2 = c18048o;
        if (c18048o == null) {
            synchronized (map) {
                C18048o c18048o3 = map.get(absolutePath);
                c18048o2 = c18048o3;
                z = false;
                if (c18048o3 == null) {
                    c18048o2 = new C18048o(null);
                    map.put(absolutePath, c18048o2);
                    z = true;
                }
            }
        }
        this.f50949c = c18048o2;
        if (!file.exists()) {
            synchronized (SharedPreferencesC18033b0.class) {
                try {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            m15521b();
        }
        while (this.f50949c.f50973c.get() == 0) {
            synchronized (this.f50949c.f50973c) {
                try {
                    this.f50949c.f50973c.wait(40L);
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public static void m15522a(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        Map<String, ?> all;
        if (sharedPreferences == null || (all = sharedPreferences.getAll()) == null || all.isEmpty()) {
            return;
        }
        SharedPreferences.Editor edit = ((SharedPreferencesC18033b0) sharedPreferences2).edit();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            int m15657N = C17891a1.C17902k.m15657N(entry.getValue());
            if (m15657N == 2) {
                ((SharedPreferences$EditorC18038e) edit).putInt(entry.getKey(), ((Integer) entry.getValue()).intValue());
            } else if (m15657N == 4) {
                ((SharedPreferences$EditorC18038e) edit).putLong(entry.getKey(), ((Long) entry.getValue()).longValue());
            } else if (m15657N == 8) {
                ((SharedPreferences$EditorC18038e) edit).putFloat(entry.getKey(), ((Float) entry.getValue()).floatValue());
            } else if (m15657N == 16) {
                ((SharedPreferences$EditorC18038e) edit).putBoolean(entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
            } else if (m15657N == 32) {
                ((SharedPreferences$EditorC18038e) edit).putString(entry.getKey(), (String) entry.getValue());
            } else if (m15657N == 64) {
                ((SharedPreferences$EditorC18038e) edit).putStringSet(entry.getKey(), (Set) entry.getValue());
            }
        }
        ((SharedPreferences$EditorC18038e) edit).apply();
    }

    /* renamed from: c */
    public static boolean m15520c(Context context, String str) {
        File file = new File(new File(C22128a.m8618h(new StringBuilder(), context.getApplicationInfo().dataDir, "/shared_prefs")), C22128a.m8543z2(str, ".xml"));
        return file.exists() && file.length() > 0;
    }

    /* renamed from: b */
    public final boolean m15521b() {
        boolean z;
        FileInputStream fileInputStream;
        FileChannel fileChannel;
        byte[] bArr = null;
        if (this.f50947a.exists()) {
            byte[] bArr2 = new byte[(int) this.f50947a.length()];
            try {
                FileInputStream fileInputStream2 = new FileInputStream(this.f50947a);
                fileChannel = null;
                try {
                    FileChannel channel = fileInputStream2.getChannel();
                    channel.read(ByteBuffer.wrap(bArr2));
                    channel.close();
                    fileChannel = channel;
                    fileInputStream2.close();
                    fileChannel = channel;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th) {
                    fileInputStream = fileInputStream2;
                }
            } catch (Throwable th2) {
                fileInputStream = null;
                fileChannel = null;
            }
            C12864a2.m22543o(fileChannel);
            C12864a2.m22543o(fileInputStream);
            bArr = bArr2;
        }
        try {
            Map<String, ?> mo15513b = this.f50950d.mo15513b(bArr);
            if (mo15513b != null && mo15513b.size() > 0) {
                synchronized (this.f50949c.f50971a) {
                    this.f50949c.f50972b.putAll(mo15513b);
                }
            }
            z = true;
            this.f50949c.f50973c.incrementAndGet();
            synchronized (this.f50949c.f50973c) {
                this.f50949c.f50973c.notifyAll();
            }
        } catch (Throwable th3) {
            this.f50949c.f50973c.incrementAndGet();
            synchronized (this.f50949c.f50973c) {
                this.f50949c.f50973c.notifyAll();
                z = false;
            }
        }
        return z;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        boolean containsKey;
        synchronized (this.f50949c.f50971a) {
            containsKey = this.f50949c.f50972b.containsKey(str);
        }
        return containsKey;
    }

    /* renamed from: d */
    public final void m15519d(SharedPreferences.Editor editor, Queue<AbstractC18035b> queue) {
        if (!this.f50951e.isEmpty()) {
            for (AbstractC18037d abstractC18037d : this.f50951e.keySet()) {
                if (abstractC18037d != null) {
                    if (queue == null) {
                        abstractC18037d.mo15518a(editor);
                    } else {
                        abstractC18037d.mo15517c(editor, queue);
                    }
                }
            }
        }
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return new SharedPreferences$EditorC18038e(this, null);
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        Map<String, ?> unmodifiableMap;
        synchronized (this.f50949c.f50971a) {
            unmodifiableMap = Collections.unmodifiableMap(this.f50949c.f50972b);
        }
        return unmodifiableMap;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        synchronized (this.f50949c.f50971a) {
            if (this.f50949c.f50972b.containsKey(str)) {
                Object obj = this.f50949c.f50972b.get(str);
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue();
                }
            }
            return z;
        }
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        synchronized (this.f50949c.f50971a) {
            if (this.f50949c.f50972b.containsKey(str)) {
                Object obj = this.f50949c.f50972b.get(str);
                if (obj instanceof Number) {
                    return ((Number) obj).floatValue();
                }
            }
            return f;
        }
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        synchronized (this.f50949c.f50971a) {
            if (this.f50949c.f50972b.containsKey(str)) {
                Object obj = this.f50949c.f50972b.get(str);
                if (obj instanceof Number) {
                    return ((Number) obj).intValue();
                }
            }
            return i;
        }
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        synchronized (this.f50949c.f50971a) {
            if (this.f50949c.f50972b.containsKey(str)) {
                Object obj = this.f50949c.f50972b.get(str);
                if (obj instanceof Number) {
                    return ((Number) obj).longValue();
                }
            }
            return j;
        }
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        synchronized (this.f50949c.f50971a) {
            if (this.f50949c.f50972b.containsKey(str)) {
                return String.valueOf(this.f50949c.f50972b.get(str));
            }
            return str2;
        }
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        synchronized (this.f50949c.f50971a) {
            if (this.f50949c.f50972b.containsKey(str)) {
                Object obj = this.f50949c.f50972b.get(str);
                if (obj instanceof Set) {
                    return (Set) obj;
                }
            }
            return set;
        }
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f50952f.put(onSharedPreferenceChangeListener, f50946l);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0202 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.run():void");
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f50952f.remove(onSharedPreferenceChangeListener);
    }
}
