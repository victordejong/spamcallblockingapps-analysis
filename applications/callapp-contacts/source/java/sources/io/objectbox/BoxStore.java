package io.objectbox;

import com.google.flatbuffers.C15937d;
import io.objectbox.converter.PropertyConverter;
import io.objectbox.exception.DbException;
import io.objectbox.exception.DbExceptionListener;
import io.objectbox.exception.DbSchemaException;
import io.objectbox.model.FlatStoreOptions;
import io.objectbox.p502b.C17951d;
import io.objectbox.p502b.C17952e;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.p579a.p580a.p581a.C20716b;
/* loaded from: classes5-dex2jar.jar:io/objectbox/BoxStore.class */
public class BoxStore implements Closeable {

    /* renamed from: q */
    private static Object f62673q;

    /* renamed from: r */
    private static Object f62674r;

    /* renamed from: s */
    private static final Set<String> f62675s = new HashSet();

    /* renamed from: t */
    private static volatile Thread f62676t;

    /* renamed from: a */
    public final File f62677a;

    /* renamed from: b */
    public final long f62678b;

    /* renamed from: d */
    final int[] f62680d;

    /* renamed from: h */
    public final RunnableC17977f f62684h;

    /* renamed from: i */
    final boolean f62685i;

    /* renamed from: j */
    final boolean f62686j;

    /* renamed from: k */
    public final boolean f62687k;

    /* renamed from: m */
    public boolean f62689m;

    /* renamed from: o */
    volatile int f62691o;

    /* renamed from: p */
    public final int f62692p;

    /* renamed from: u */
    private final String f62693u;

    /* renamed from: y */
    private int f62697y;

    /* renamed from: z */
    private final AbstractC17979h<?> f62698z;

    /* renamed from: v */
    private final Map<Class<?>, String> f62694v = new HashMap();

    /* renamed from: w */
    private final Map<Class<?>, Integer> f62695w = new HashMap();

    /* renamed from: x */
    private final Map<Class<?>, AbstractC17957c<?>> f62696x = new HashMap();

    /* renamed from: c */
    final C20716b<Class<?>> f62679c = new C20716b<>();

    /* renamed from: e */
    public final Map<Class<?>, C17944a<?>> f62681e = new ConcurrentHashMap();

    /* renamed from: f */
    final Set<Transaction> f62682f = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: g */
    public final ExecutorService f62683g = new C17952e(this);

    /* renamed from: l */
    final ThreadLocal<Transaction> f62688l = new ThreadLocal<>();

    /* renamed from: n */
    final Object f62690n = new Object();

    public BoxStore(C17947b c17947b) {
        C17978g<?>[] allProperties;
        f62673q = c17947b.f62721f;
        f62674r = c17947b.f62722g;
        C17951d.m4687a();
        File file = c17947b.f62717b;
        this.f62677a = file;
        String m4744a = m4744a(file);
        this.f62693u = m4744a;
        Set<String> set = f62675s;
        synchronized (set) {
            m4741a(m4744a);
            if (!set.add(m4744a)) {
                throw new DbException("Another BoxStore is still open for this directory: " + m4744a + ". Hint: for most apps it's recommended to keep a BoxStore for the app's life time.");
            }
        }
        try {
            C15937d c15937d = new C15937d();
            c15937d.f56583l = true;
            int m8026a = c15937d.m8026a(m4744a);
            FlatStoreOptions.startFlatStoreOptions(c15937d);
            FlatStoreOptions.addDirectoryPath(c15937d, m8026a);
            FlatStoreOptions.addMaxDbSizeInKByte(c15937d, c17947b.f62720e);
            FlatStoreOptions.addFileMode(c15937d, c17947b.f62726k);
            FlatStoreOptions.addMaxReaders(c15937d, c17947b.f62727l);
            if (c17947b.f62732q != 0) {
                FlatStoreOptions.addValidateOnOpen(c15937d, c17947b.f62732q);
                if (c17947b.f62733r != 0) {
                    FlatStoreOptions.addValidateOnOpenPageLimit(c15937d, c17947b.f62733r);
                }
            }
            if (c17947b.f62729n) {
                FlatStoreOptions.addSkipReadSchema(c15937d, c17947b.f62729n);
            }
            if (c17947b.f62731p) {
                FlatStoreOptions.addUsePreviousCommit(c15937d, c17947b.f62731p);
            }
            if (c17947b.f62730o) {
                FlatStoreOptions.addReadOnly(c15937d, c17947b.f62730o);
            }
            if (c17947b.f62723h != 0) {
                FlatStoreOptions.addDebugFlags(c15937d, c17947b.f62723h);
            }
            c15937d.m8010e(FlatStoreOptions.endFlatStoreOptions(c15937d));
            long nativeCreateWithFlatOptions = nativeCreateWithFlatOptions(c15937d.m8014d(), c17947b.f62716a);
            this.f62678b = nativeCreateWithFlatOptions;
            if (nativeCreateWithFlatOptions == 0) {
                throw new DbException("Could not create native store");
            }
            int i = c17947b.f62723h;
            if (i != 0) {
                this.f62685i = (i & 1) != 0;
                this.f62686j = (i & 2) != 0;
            } else {
                this.f62686j = false;
                this.f62685i = false;
            }
            this.f62687k = c17947b.f62725j;
            for (AbstractC17957c<?> abstractC17957c : c17947b.f62735t) {
                try {
                    this.f62694v.put(abstractC17957c.getEntityClass(), abstractC17957c.getDbName());
                    int nativeRegisterEntityClass = nativeRegisterEntityClass(this.f62678b, abstractC17957c.getDbName(), abstractC17957c.getEntityClass());
                    this.f62695w.put(abstractC17957c.getEntityClass(), Integer.valueOf(nativeRegisterEntityClass));
                    this.f62679c.m609a(nativeRegisterEntityClass, abstractC17957c.getEntityClass());
                    this.f62696x.put(abstractC17957c.getEntityClass(), abstractC17957c);
                    for (C17978g<?> c17978g : abstractC17957c.getAllProperties()) {
                        if (c17978g.f62815j != null) {
                            if (c17978g.f62814i == null) {
                                throw new RuntimeException("No converter class for custom type of ".concat(String.valueOf(c17978g)));
                            }
                            nativeRegisterCustomType(this.f62678b, nativeRegisterEntityClass, 0, c17978g.f62813h, c17978g.f62814i, c17978g.f62815j);
                        }
                    }
                } catch (RuntimeException e) {
                    throw new RuntimeException("Could not setup up entity " + abstractC17957c.getEntityClass(), e);
                }
            }
            int i2 = this.f62679c.f67170c;
            this.f62680d = new int[i2];
            long[] m610a = this.f62679c.m610a();
            for (int i3 = 0; i3 < i2; i3++) {
                this.f62680d[i3] = (int) m610a[i3];
            }
            this.f62684h = new RunnableC17977f(this);
            this.f62698z = c17947b.f62734s;
            this.f62692p = Math.max(c17947b.f62728m, 1);
        } catch (RuntimeException e2) {
            close();
            throw e2;
        }
    }

    /* renamed from: a */
    public static Object m4745a() {
        Object obj;
        synchronized (BoxStore.class) {
            try {
                obj = f62673q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* renamed from: a */
    private <T> T m4739a(Callable<T> callable) {
        if (this.f62688l.get() != null) {
            try {
                return callable.call();
            } catch (Exception e) {
                throw new RuntimeException("Callable threw exception", e);
            }
        }
        Transaction m4726e = m4726e();
        this.f62688l.set(m4726e);
        try {
            try {
                T call = callable.call();
                this.f62688l.remove();
                for (C17944a<?> c17944a : this.f62681e.values()) {
                    c17944a.m4713a(m4726e);
                }
                m4726e.close();
                return call;
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new RuntimeException("Callable threw exception", e3);
            }
        } catch (Throwable th) {
            this.f62688l.remove();
            for (C17944a<?> c17944a2 : this.f62681e.values()) {
                c17944a2.m4713a(m4726e);
            }
            m4726e.close();
            throw th;
        }
    }

    /* renamed from: a */
    public static String m4744a(File file) {
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new DbException("Is not a directory: " + file.getAbsolutePath());
            }
        } else if (!file.mkdirs()) {
            throw new DbException("Could not create directory: " + file.getAbsolutePath());
        }
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            throw new DbException("Could not verify dir", e);
        }
    }

    /* renamed from: a */
    private static boolean m4741a(final String str) {
        boolean contains;
        Set<String> set = f62675s;
        synchronized (set) {
            if (!set.contains(str)) {
                return false;
            }
            Thread thread = f62676t;
            if (thread != null && thread.isAlive()) {
                return m4740a(str, false);
            }
            Thread thread2 = new Thread(new Runnable() { // from class: io.objectbox._$$Lambda$BoxStore$7jHv0ehVygQknE54YZmDZX0D2RQ
                @Override // java.lang.Runnable
                public final void run() {
                    BoxStore.m4732b(str);
                }
            });
            thread2.setDaemon(true);
            f62676t = thread2;
            thread2.start();
            try {
                thread2.join(500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Set<String> set2 = f62675s;
            synchronized (set2) {
                contains = set2.contains(str);
            }
            return contains;
        }
    }

    /* renamed from: a */
    private static boolean m4740a(String str, boolean z) {
        boolean contains;
        synchronized (f62675s) {
            int i = 0;
            while (i < 5) {
                Set<String> set = f62675s;
                if (!set.contains(str)) {
                    break;
                }
                i++;
                System.gc();
                if (z && i > 1) {
                    System.runFinalization();
                }
                System.gc();
                if (z && i > 1) {
                    System.runFinalization();
                }
                try {
                    set.wait(100L);
                } catch (InterruptedException e) {
                }
            }
            contains = f62675s.contains(str);
        }
        return contains;
    }

    /* renamed from: b */
    public static Object m4736b() {
        Object obj;
        synchronized (BoxStore.class) {
            try {
                obj = f62674r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* renamed from: b */
    public static /* synthetic */ void m4732b(String str) {
        m4740a(str, true);
        f62676t = null;
    }

    /* renamed from: b */
    public static boolean m4735b(File file) {
        if (!file.exists()) {
            return true;
        }
        if (m4741a(m4744a(file))) {
            throw new IllegalStateException("Cannot delete files: store is still open");
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return false;
        }
        for (File file2 : listFiles) {
            if (!file2.delete() && file2.exists()) {
                return false;
            }
        }
        return file.delete();
    }

    /* renamed from: f */
    private void m4725f() {
        if (!this.f62689m) {
            return;
        }
        throw new IllegalStateException("Store is closed");
    }

    /* renamed from: g */
    private void m4724g() {
        Thread[] threadArr;
        try {
            if (this.f62683g.awaitTermination(1L, TimeUnit.SECONDS)) {
                return;
            }
            int activeCount = Thread.activeCount();
            System.err.println("Thread pool not terminated in time; printing stack traces...");
            int enumerate = Thread.enumerate(new Thread[activeCount + 2]);
            for (int i = 0; i < enumerate; i++) {
                System.err.println("Thread: " + threadArr[i].getName());
                Thread.dumpStack();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    private boolean m4723h() {
        boolean nativeStopObjectBrowser;
        synchronized (this) {
            if (this.f62697y == 0) {
                throw new IllegalStateException("ObjectBrowser has not been started before");
            }
            this.f62697y = 0;
            nativeStopObjectBrowser = nativeStopObjectBrowser(this.f62678b);
        }
        return nativeStopObjectBrowser;
    }

    static native long nativeBeginReadTx(long j);

    static native long nativeBeginTx(long j);

    static native int nativeCleanStaleReadTransactions(long j);

    static native long nativeCreateWithFlatOptions(byte[] bArr, byte[] bArr2);

    static native void nativeDelete(long j);

    public static native String nativeDiagnose(long j);

    static native void nativeRegisterCustomType(long j, int i, int i2, String str, Class<? extends PropertyConverter> cls, Class<?> cls2);

    static native int nativeRegisterEntityClass(long j, String str, Class<?> cls);

    public static native void nativeSetDbExceptionListener(long j, DbExceptionListener dbExceptionListener);

    private native boolean nativeStopObjectBrowser(long j);

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: a */
    public final <T> T m4738a(Callable<T> callable, int i) {
        if (i == 1) {
            return (T) m4739a(callable);
        }
        if (i <= 0) {
            throw new IllegalArgumentException("Illegal value of attempts: ".concat(String.valueOf(i)));
        }
        char c = '\n';
        DbException e = null;
        for (int i2 = 1; i2 <= i; i2++) {
            try {
                return (T) m4739a(callable);
            } catch (DbException e2) {
                e = e2;
                String nativeDiagnose = nativeDiagnose(this.f62678b);
                String str = i2 + " of " + i + " attempts of calling a read TX failed:";
                System.err.println(str);
                e.printStackTrace();
                System.err.println(nativeDiagnose);
                System.err.flush();
                System.gc();
                System.runFinalization();
                nativeCleanStaleReadTransactions(this.f62678b);
                if (this.f62698z != null) {
                    this.f62698z.mo4651a(new DbException(str + " \n" + nativeDiagnose, e));
                }
                try {
                    Thread.sleep(c);
                    c *= 2;
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                    throw e;
                }
            }
        }
        throw e;
    }

    /* renamed from: a */
    public final String m4743a(Class<?> cls) {
        return this.f62694v.get(cls);
    }

    /* renamed from: a */
    public final void m4742a(Runnable runnable) {
        Transaction transaction = this.f62688l.get();
        if (transaction != null) {
            if (transaction.f62703d) {
                throw new IllegalStateException("Cannot start a transaction while a read only transaction is active");
            }
            runnable.run();
            return;
        }
        Transaction m4728d = m4728d();
        this.f62688l.set(m4728d);
        try {
            runnable.run();
            m4728d.m4720b();
        } finally {
            this.f62688l.remove();
            m4728d.close();
        }
    }

    /* renamed from: a */
    public final void m4737a(int[] iArr) {
        synchronized (this.f62690n) {
            this.f62691o++;
            if (this.f62686j) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder("TX committed. New commit count: ");
                sb.append(this.f62691o);
                sb.append(", entity types affected: ");
                sb.append(iArr != null ? iArr.length : 0);
                printStream.println(sb.toString());
            }
        }
        for (C17944a<?> c17944a : this.f62681e.values()) {
            Cursor<?> cursor = c17944a.f62709c.get();
            if (cursor != null) {
                c17944a.f62709c.remove();
                cursor.close();
            }
        }
        if (iArr != null) {
            RunnableC17977f runnableC17977f = this.f62684h;
            synchronized (runnableC17977f.f62804c) {
                runnableC17977f.f62804c.add(iArr);
                if (!runnableC17977f.f62805d) {
                    runnableC17977f.f62805d = true;
                    runnableC17977f.f62802a.m4729c(runnableC17977f);
                }
            }
        }
    }

    /* renamed from: b */
    public final int m4734b(Class<?> cls) {
        Integer num = this.f62695w.get(cls);
        if (num != null) {
            return num.intValue();
        }
        throw new DbSchemaException("No entity registered for ".concat(String.valueOf(cls)));
    }

    /* renamed from: b */
    public final void m4733b(Runnable runnable) {
        if (this.f62688l.get() != null) {
            runnable.run();
            return;
        }
        Transaction m4726e = m4726e();
        this.f62688l.set(m4726e);
        try {
            runnable.run();
        } finally {
            this.f62688l.remove();
            for (C17944a<?> next : this.f62681e.values()) {
                next.m4713a(m4726e);
            }
            m4726e.close();
        }
    }

    /* renamed from: c */
    public final <T> AbstractC17957c<T> m4730c(Class<T> cls) {
        return (AbstractC17957c<T>) this.f62696x.get(cls);
    }

    /* renamed from: c */
    public final Collection<Class<?>> m4731c() {
        return this.f62694v.keySet();
    }

    /* renamed from: c */
    public final Future<?> m4729c(Runnable runnable) {
        return this.f62683g.submit(runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        boolean z;
        ArrayList<Transaction> arrayList;
        synchronized (this) {
            z = this.f62689m;
            if (!z) {
                if (this.f62697y != 0) {
                    m4723h();
                }
                this.f62689m = true;
                synchronized (this.f62682f) {
                    arrayList = new ArrayList(this.f62682f);
                }
                for (Transaction transaction : arrayList) {
                    transaction.close();
                }
                long j = this.f62678b;
                if (j != 0) {
                    nativeDelete(j);
                }
                this.f62683g.shutdown();
                m4724g();
            }
        }
        if (!z) {
            Set<String> set = f62675s;
            synchronized (set) {
                set.remove(this.f62693u);
                set.notifyAll();
            }
        }
    }

    /* renamed from: d */
    public final Transaction m4728d() {
        m4725f();
        int i = this.f62691o;
        if (this.f62686j) {
            System.out.println("Begin TX with commit count ".concat(String.valueOf(i)));
        }
        long nativeBeginTx = nativeBeginTx(this.f62678b);
        if (nativeBeginTx != 0) {
            Transaction transaction = new Transaction(this, nativeBeginTx, i);
            synchronized (this.f62682f) {
                this.f62682f.add(transaction);
            }
            return transaction;
        }
        throw new DbException("Could not create native transaction");
    }

    /* renamed from: d */
    public final <T> C17944a<T> m4727d(Class<T> cls) {
        C17944a<?> c17944a = this.f62681e.get(cls);
        C17944a<?> c17944a2 = c17944a;
        if (c17944a == null) {
            if (!this.f62694v.containsKey(cls)) {
                throw new IllegalArgumentException(cls + " is not a known entity. Please add it and trigger generation again.");
            }
            synchronized (this.f62681e) {
                C17944a<?> c17944a3 = this.f62681e.get(cls);
                c17944a2 = c17944a3;
                if (c17944a3 == null) {
                    c17944a2 = new C17944a<>(this, cls);
                    this.f62681e.put(cls, c17944a2);
                }
            }
        }
        return (C17944a<T>) c17944a2;
    }

    /* renamed from: e */
    public final Transaction m4726e() {
        m4725f();
        int i = this.f62691o;
        if (this.f62685i) {
            System.out.println("Begin read TX with commit count ".concat(String.valueOf(i)));
        }
        long nativeBeginReadTx = nativeBeginReadTx(this.f62678b);
        if (nativeBeginReadTx != 0) {
            Transaction transaction = new Transaction(this, nativeBeginReadTx, i);
            synchronized (this.f62682f) {
                this.f62682f.add(transaction);
            }
            return transaction;
        }
        throw new DbException("Could not create native read transaction");
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }
}
