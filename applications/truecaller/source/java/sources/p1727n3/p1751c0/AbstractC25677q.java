package p1727n3.p1751c0;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.os.RemoteException;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p1727n3.p1746c.p1747a.p1748a.C25628a;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
import p1727n3.p1781e0.p1782a.AbstractC26153e;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p1727n3.p1781e0.p1782a.C26146a;
import p1727n3.p1781e0.p1782a.p1783g.C26161c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c0.q */
/* loaded from: classes-dex2jar.jar:n3/c0/q.class */
public abstract class AbstractC25677q {
    private static final String DB_IMPL_SUFFIX = "_Impl";
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean mAllowMainThreadQueries;
    private C25641a mAutoCloser;
    @Deprecated
    public List<AbstractC25679b> mCallbacks;
    @Deprecated
    public volatile AbstractC26147b mDatabase;
    private AbstractC26148c mOpenHelper;
    private Executor mQueryExecutor;
    private Executor mTransactionExecutor;
    public boolean mWriteAheadLoggingEnabled;
    private final ReentrantReadWriteLock mCloseLock = new ReentrantReadWriteLock();
    private final ThreadLocal<Integer> mSuspendingTransactionId = new ThreadLocal<>();
    private final Map<String, Object> mBackingFieldMap = Collections.synchronizedMap(new HashMap());
    private final C25670o mInvalidationTracker = createInvalidationTracker();
    private final Map<Class<?>, Object> mTypeConverters = new HashMap();

    /* renamed from: n3.c0.q$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/q$a.class */
    public static class C25678a<T extends AbstractC25677q> {

        /* renamed from: a */
        public final Class<T> f71927a;

        /* renamed from: b */
        public final String f71928b;

        /* renamed from: c */
        public final Context f71929c;

        /* renamed from: d */
        public ArrayList<AbstractC25679b> f71930d;

        /* renamed from: e */
        public Executor f71931e;

        /* renamed from: f */
        public Executor f71932f;

        /* renamed from: g */
        public AbstractC26148c.AbstractC26151c f71933g;

        /* renamed from: h */
        public boolean f71934h;

        /* renamed from: j */
        public boolean f71936j;

        /* renamed from: l */
        public Set<Integer> f71938l;

        /* renamed from: m */
        public String f71939m;

        /* renamed from: i */
        public boolean f71935i = true;

        /* renamed from: k */
        public final C25681d f71937k = new C25681d();

        public C25678a(Context context, Class<T> cls, String str) {
            this.f71929c = context;
            this.f71927a = cls;
            this.f71928b = str;
        }

        /* renamed from: a */
        public C25678a<T> m3066a(AbstractC25679b abstractC25679b) {
            if (this.f71930d == null) {
                this.f71930d = new ArrayList<>();
            }
            this.f71930d.add(abstractC25679b);
            return this;
        }

        /* renamed from: b */
        public C25678a<T> m3065b(AbstractC25649a... abstractC25649aArr) {
            if (this.f71938l == null) {
                this.f71938l = new HashSet();
            }
            for (AbstractC25649a abstractC25649a : abstractC25649aArr) {
                this.f71938l.add(Integer.valueOf(abstractC25649a.f71842a));
                this.f71938l.add(Integer.valueOf(abstractC25649a.f71843b));
            }
            C25681d c25681d = this.f71937k;
            Objects.requireNonNull(c25681d);
            for (AbstractC25649a abstractC25649a2 : abstractC25649aArr) {
                int i = abstractC25649a2.f71842a;
                int i2 = abstractC25649a2.f71843b;
                TreeMap<Integer, AbstractC25649a> treeMap = c25681d.f71944a.get(Integer.valueOf(i));
                TreeMap<Integer, AbstractC25649a> treeMap2 = treeMap;
                if (treeMap == null) {
                    treeMap2 = new TreeMap<>();
                    c25681d.f71944a.put(Integer.valueOf(i), treeMap2);
                }
                AbstractC25649a abstractC25649a3 = treeMap2.get(Integer.valueOf(i2));
                if (abstractC25649a3 != null) {
                    String str = "Overriding migration " + abstractC25649a3 + " with " + abstractC25649a2;
                }
                treeMap2.put(Integer.valueOf(i2), abstractC25649a2);
            }
            return this;
        }

        /* renamed from: c */
        public T m3064c() {
            String str;
            Executor executor;
            Context context = this.f71929c;
            if (context != null) {
                if (this.f71927a == null) {
                    throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
                }
                Executor executor2 = this.f71931e;
                if (executor2 == null && this.f71932f == null) {
                    Executor executor3 = C25628a.f71802e;
                    this.f71932f = executor3;
                    this.f71931e = executor3;
                } else if (executor2 != null && this.f71932f == null) {
                    this.f71932f = executor2;
                } else if (executor2 == null && (executor = this.f71932f) != null) {
                    this.f71931e = executor;
                }
                AbstractC26148c.AbstractC26151c abstractC26151c = this.f71933g;
                C26161c c26161c = abstractC26151c;
                if (abstractC26151c == null) {
                    c26161c = new C26161c();
                }
                String str2 = this.f71939m;
                if (str2 != null) {
                    if (this.f71928b == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    if ((str2 == null ? 0 : 1) + 0 + 0 != 1) {
                        throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                    }
                    c26161c = new C25645b0(str2, null, null, c26161c);
                }
                String str3 = this.f71928b;
                C25681d c25681d = this.f71937k;
                ArrayList<AbstractC25679b> arrayList = this.f71930d;
                boolean z = this.f71934h;
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                C25651h c25651h = new C25651h(context, str3, c26161c, c25681d, arrayList, z, (activityManager == null || activityManager.isLowRamDevice()) ? EnumC25680c.TRUNCATE : EnumC25680c.WRITE_AHEAD_LOGGING, this.f71931e, this.f71932f, false, this.f71935i, this.f71936j, null, this.f71939m, null, null, null);
                Class<T> cls = this.f71927a;
                String name = cls.getPackage().getName();
                String canonicalName = cls.getCanonicalName();
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String str4 = canonicalName.replace('.', '_') + AbstractC25677q.DB_IMPL_SUFFIX;
                try {
                    if (name.isEmpty()) {
                        str = str4;
                    } else {
                        str = name + StringConstant.DOT + str4;
                    }
                    T t = (T) Class.forName(str, true, cls.getClassLoader()).newInstance();
                    t.init(c25651h);
                    return t;
                } catch (ClassNotFoundException e) {
                    StringBuilder m8728C = C22128a.m8728C("cannot find implementation for ");
                    m8728C.append(cls.getCanonicalName());
                    m8728C.append(". ");
                    m8728C.append(str4);
                    m8728C.append(" does not exist");
                    throw new RuntimeException(m8728C.toString());
                } catch (IllegalAccessException e2) {
                    StringBuilder m8728C2 = C22128a.m8728C("Cannot access the constructor");
                    m8728C2.append(cls.getCanonicalName());
                    throw new RuntimeException(m8728C2.toString());
                } catch (InstantiationException e3) {
                    StringBuilder m8728C3 = C22128a.m8728C("Failed to create an instance of ");
                    m8728C3.append(cls.getCanonicalName());
                    throw new RuntimeException(m8728C3.toString());
                }
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }

        /* renamed from: d */
        public C25678a<T> m3063d() {
            this.f71935i = false;
            this.f71936j = true;
            return this;
        }
    }

    /* renamed from: n3.c0.q$b */
    /* loaded from: classes-dex2jar.jar:n3/c0/q$b.class */
    public static abstract class AbstractC25679b {
        /* renamed from: a */
        public void mo3062a(AbstractC26147b abstractC26147b) {
        }

        /* renamed from: b */
        public void mo3061b(AbstractC26147b abstractC26147b) {
        }

        /* renamed from: c */
        public void mo1434c(AbstractC26147b abstractC26147b) {
        }
    }

    /* renamed from: n3.c0.q$c */
    /* loaded from: classes-dex2jar.jar:n3/c0/q$c.class */
    public enum EnumC25680c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING
    }

    /* renamed from: n3.c0.q$d */
    /* loaded from: classes-dex2jar.jar:n3/c0/q$d.class */
    public static class C25681d {

        /* renamed from: a */
        public HashMap<Integer, TreeMap<Integer, AbstractC25649a>> f71944a = new HashMap<>();
    }

    private void internalBeginTransaction() {
        assertNotMainThread();
        AbstractC26147b writableDatabase = this.mOpenHelper.getWritableDatabase();
        this.mInvalidationTracker.m3069i(writableDatabase);
        if (writableDatabase.mo2660e2()) {
            writableDatabase.mo2669M();
        } else {
            writableDatabase.mo2657w();
        }
    }

    private void internalEndTransaction() {
        this.mOpenHelper.getWritableDatabase().mo2659f1();
        if (!inTransaction()) {
            C25670o c25670o = this.mInvalidationTracker;
            if (!c25670o.f71898e.compareAndSet(false, true)) {
                return;
            }
            c25670o.f71897d.getQueryExecutor().execute(c25670o.f71905l);
        }
    }

    private static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T unwrapOpenHelper(Class<T> cls, AbstractC26148c abstractC26148c) {
        if (cls.isInstance(abstractC26148c)) {
            return abstractC26148c;
        }
        if (!(abstractC26148c instanceof AbstractC25661i)) {
            return null;
        }
        return (T) unwrapOpenHelper(cls, ((AbstractC25661i) abstractC26148c).mo3082b());
    }

    public void assertNotMainThread() {
        if (!this.mAllowMainThreadQueries && isMainThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (inTransaction() || this.mSuspendingTransactionId.get() == null) {
            return;
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    @Deprecated
    public void beginTransaction() {
        assertNotMainThread();
        if (this.mAutoCloser == null) {
            internalBeginTransaction();
            return;
        }
        throw null;
    }

    public abstract void clearAllTables();

    public void close() {
        if (isOpen()) {
            ReentrantReadWriteLock.WriteLock writeLock = this.mCloseLock.writeLock();
            writeLock.lock();
            try {
                C25670o c25670o = this.mInvalidationTracker;
                C25676p c25676p = c25670o.f71904k;
                if (c25676p != null) {
                    if (c25676p.f71925g.compareAndSet(false, true)) {
                        c25676p.f71921c.m3074d(c25676p.f71922d);
                        try {
                            AbstractC25667m abstractC25667m = c25676p.f71923e;
                            if (abstractC25667m != null) {
                                abstractC25667m.m3078z1(c25676p.f71924f, c25676p.f71920b);
                            }
                        } catch (RemoteException e) {
                        }
                        c25676p.f71919a.unbindService(c25676p.f71926h);
                    }
                    c25670o.f71904k = null;
                }
                this.mOpenHelper.close();
            } finally {
                writeLock.unlock();
            }
        }
    }

    public AbstractC26154f compileStatement(String str) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return this.mOpenHelper.getWritableDatabase().mo2670J1(str);
    }

    public abstract C25670o createInvalidationTracker();

    public abstract AbstractC26148c createOpenHelper(C25651h c25651h);

    @Deprecated
    public void endTransaction() {
        if (this.mAutoCloser == null) {
            internalEndTransaction();
            return;
        }
        throw null;
    }

    public Map<String, Object> getBackingFieldMap() {
        return this.mBackingFieldMap;
    }

    public Lock getCloseLock() {
        return this.mCloseLock.readLock();
    }

    public C25670o getInvalidationTracker() {
        return this.mInvalidationTracker;
    }

    public AbstractC26148c getOpenHelper() {
        return this.mOpenHelper;
    }

    public Executor getQueryExecutor() {
        return this.mQueryExecutor;
    }

    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return Collections.emptyMap();
    }

    public ThreadLocal<Integer> getSuspendingTransactionId() {
        return this.mSuspendingTransactionId;
    }

    public Executor getTransactionExecutor() {
        return this.mTransactionExecutor;
    }

    public <T> T getTypeConverter(Class<T> cls) {
        return (T) this.mTypeConverters.get(cls);
    }

    public boolean inTransaction() {
        return this.mOpenHelper.getWritableDatabase().mo2665X1();
    }

    public void init(C25651h c25651h) {
        AbstractC26148c createOpenHelper = createOpenHelper(c25651h);
        this.mOpenHelper = createOpenHelper;
        C25642a0 c25642a0 = (C25642a0) unwrapOpenHelper(C25642a0.class, createOpenHelper);
        if (c25642a0 != null) {
            c25642a0.f71830g = c25651h;
        }
        if (((C25643b) unwrapOpenHelper(C25643b.class, this.mOpenHelper)) != null) {
            Objects.requireNonNull(this.mInvalidationTracker);
            throw null;
        }
        boolean z = c25651h.f71852h == EnumC25680c.WRITE_AHEAD_LOGGING;
        this.mOpenHelper.setWriteAheadLoggingEnabled(z);
        this.mCallbacks = c25651h.f71849e;
        this.mQueryExecutor = c25651h.f71853i;
        this.mTransactionExecutor = new ExecutorC25647e0(c25651h.f71854j);
        this.mAllowMainThreadQueries = c25651h.f71851g;
        this.mWriteAheadLoggingEnabled = z;
        Map<Class<?>, List<Class<?>>> requiredTypeConverters = getRequiredTypeConverters();
        BitSet bitSet = new BitSet();
        for (Map.Entry<Class<?>, List<Class<?>>> entry : requiredTypeConverters.entrySet()) {
            Class<?> key = entry.getKey();
            for (Class<?> cls : entry.getValue()) {
                int size = c25651h.f71850f.size() - 1;
                while (true) {
                    if (size < 0) {
                        size = -1;
                        break;
                    } else if (cls.isAssignableFrom(c25651h.f71850f.get(size).getClass())) {
                        bitSet.set(size);
                        break;
                    } else {
                        size--;
                    }
                }
                if (size < 0) {
                    throw new IllegalArgumentException("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.");
                }
                this.mTypeConverters.put(cls, c25651h.f71850f.get(size));
            }
        }
        for (int size2 = c25651h.f71850f.size() - 1; size2 >= 0; size2--) {
            if (!bitSet.get(size2)) {
                throw new IllegalArgumentException(C22128a.m8547y2("Unexpected type converter ", c25651h.f71850f.get(size2), ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."));
            }
        }
    }

    public void internalInitInvalidationTracker(AbstractC26147b abstractC26147b) {
        C25670o c25670o = this.mInvalidationTracker;
        synchronized (c25670o) {
            if (c25670o.f71899f) {
                return;
            }
            abstractC26147b.mo2668S0("PRAGMA temp_store = MEMORY;");
            abstractC26147b.mo2668S0("PRAGMA recursive_triggers='ON';");
            abstractC26147b.mo2668S0("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            c25670o.m3069i(abstractC26147b);
            c25670o.f71900g = abstractC26147b.mo2670J1("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            c25670o.f71899f = true;
        }
    }

    public boolean isOpen() {
        C25641a c25641a;
        boolean z = true;
        if (this.mAutoCloser != null) {
            return !c25641a.f71823a;
        }
        AbstractC26147b abstractC26147b = this.mDatabase;
        if (abstractC26147b == null || !abstractC26147b.isOpen()) {
            z = false;
        }
        return z;
    }

    public Cursor query(String str, Object[] objArr) {
        return this.mOpenHelper.getWritableDatabase().mo2666X(new C26146a(str, objArr));
    }

    public Cursor query(AbstractC26153e abstractC26153e) {
        return query(abstractC26153e, (CancellationSignal) null);
    }

    public Cursor query(AbstractC26153e abstractC26153e, CancellationSignal cancellationSignal) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return cancellationSignal != null ? this.mOpenHelper.getWritableDatabase().mo2671H(abstractC26153e, cancellationSignal) : this.mOpenHelper.getWritableDatabase().mo2666X(abstractC26153e);
    }

    public <V> V runInTransaction(Callable<V> callable) {
        beginTransaction();
        try {
            try {
                try {
                    V call = callable.call();
                    setTransactionSuccessful();
                    endTransaction();
                    return call;
                } catch (Exception e) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            }
        } catch (Throwable th) {
            endTransaction();
            throw th;
        }
    }

    public void runInTransaction(Runnable runnable) {
        beginTransaction();
        try {
            runnable.run();
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    @Deprecated
    public void setTransactionSuccessful() {
        this.mOpenHelper.getWritableDatabase().mo2663b1();
    }
}
