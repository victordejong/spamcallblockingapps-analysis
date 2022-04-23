package io.objectbox;

import io.objectbox.b.d;
import io.objectbox.b.e;
import io.objectbox.converter.PropertyConverter;
import io.objectbox.exception.DbException;
import io.objectbox.exception.DbExceptionListener;
import io.objectbox.exception.DbSchemaException;
import io.objectbox.model.FlatStoreOptions;
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
import org.a.a.a.b;
/* loaded from: classes5-dex2jar.jar:io/objectbox/BoxStore.class */
public class BoxStore implements Closeable {
    private static Object q;
    private static Object r;
    private static final Set<String> s = new HashSet();
    private static volatile Thread t;

    /* renamed from: a  reason: collision with root package name */
    public final File f36177a;

    /* renamed from: b  reason: collision with root package name */
    public final long f36178b;

    /* renamed from: d  reason: collision with root package name */
    final int[] f36180d;
    public final f h;
    final boolean i;
    final boolean j;
    public final boolean k;
    public boolean m;
    volatile int o;
    public final int p;
    private final String u;
    private int y;
    private final h<?> z;
    private final Map<Class<?>, String> v = new HashMap();
    private final Map<Class<?>, Integer> w = new HashMap();
    private final Map<Class<?>, c<?>> x = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    final b<Class<?>> f36179c = new b<>();
    public final Map<Class<?>, a<?>> e = new ConcurrentHashMap();
    final Set<Transaction> f = Collections.newSetFromMap(new WeakHashMap());
    public final ExecutorService g = new e(this);
    final ThreadLocal<Transaction> l = new ThreadLocal<>();
    final Object n = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public BoxStore(b bVar) {
        g<?>[] allProperties;
        q = bVar.f;
        r = bVar.g;
        d.a();
        File file = bVar.f36191b;
        this.f36177a = file;
        String a2 = a(file);
        this.u = a2;
        Set<String> set = s;
        synchronized (set) {
            a(a2);
            if (!set.add(a2)) {
                throw new DbException("Another BoxStore is still open for this directory: " + a2 + ". Hint: for most apps it's recommended to keep a BoxStore for the app's life time.");
            }
        }
        try {
            com.google.flatbuffers.d dVar = new com.google.flatbuffers.d();
            dVar.l = true;
            int a3 = dVar.a(a2);
            FlatStoreOptions.startFlatStoreOptions(dVar);
            FlatStoreOptions.addDirectoryPath(dVar, a3);
            FlatStoreOptions.addMaxDbSizeInKByte(dVar, bVar.e);
            FlatStoreOptions.addFileMode(dVar, bVar.k);
            FlatStoreOptions.addMaxReaders(dVar, bVar.l);
            if (bVar.q != 0) {
                FlatStoreOptions.addValidateOnOpen(dVar, bVar.q);
                if (bVar.r != 0) {
                    FlatStoreOptions.addValidateOnOpenPageLimit(dVar, bVar.r);
                }
            }
            if (bVar.n) {
                FlatStoreOptions.addSkipReadSchema(dVar, bVar.n);
            }
            if (bVar.p) {
                FlatStoreOptions.addUsePreviousCommit(dVar, bVar.p);
            }
            if (bVar.o) {
                FlatStoreOptions.addReadOnly(dVar, bVar.o);
            }
            if (bVar.h != 0) {
                FlatStoreOptions.addDebugFlags(dVar, bVar.h);
            }
            dVar.e(FlatStoreOptions.endFlatStoreOptions(dVar));
            long nativeCreateWithFlatOptions = nativeCreateWithFlatOptions(dVar.d(), bVar.f36190a);
            this.f36178b = nativeCreateWithFlatOptions;
            if (nativeCreateWithFlatOptions != 0) {
                int i = bVar.h;
                if (i != 0) {
                    this.i = (i & 1) != 0;
                    this.j = (i & 2) != 0;
                } else {
                    this.j = false;
                    this.i = false;
                }
                this.k = bVar.j;
                for (c<?> cVar : bVar.t) {
                    try {
                        this.v.put(cVar.getEntityClass(), cVar.getDbName());
                        int nativeRegisterEntityClass = nativeRegisterEntityClass(this.f36178b, cVar.getDbName(), cVar.getEntityClass());
                        this.w.put(cVar.getEntityClass(), Integer.valueOf(nativeRegisterEntityClass));
                        this.f36179c.a(nativeRegisterEntityClass, cVar.getEntityClass());
                        this.x.put(cVar.getEntityClass(), cVar);
                        for (g<?> gVar : cVar.getAllProperties()) {
                            if (gVar.j != null) {
                                if (gVar.i != null) {
                                    nativeRegisterCustomType(this.f36178b, nativeRegisterEntityClass, 0, gVar.h, gVar.i, gVar.j);
                                } else {
                                    throw new RuntimeException("No converter class for custom type of ".concat(String.valueOf(gVar)));
                                }
                            }
                        }
                    } catch (RuntimeException e) {
                        throw new RuntimeException("Could not setup up entity " + cVar.getEntityClass(), e);
                    }
                }
                int i2 = this.f36179c.f39123c;
                this.f36180d = new int[i2];
                long[] a4 = this.f36179c.a();
                for (int i3 = 0; i3 < i2; i3++) {
                    this.f36180d[i3] = (int) a4[i3];
                }
                this.h = new f(this);
                this.z = bVar.s;
                this.p = Math.max(bVar.m, 1);
                return;
            }
            throw new DbException("Could not create native store");
        } catch (RuntimeException e2) {
            close();
            throw e2;
        }
    }

    public static Object a() {
        Object obj;
        synchronized (BoxStore.class) {
            try {
                obj = q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    private <T> T a(Callable<T> callable) {
        if (this.l.get() == null) {
            Transaction e = e();
            this.l.set(e);
            try {
                try {
                    T call = callable.call();
                    this.l.remove();
                    for (a<?> aVar : this.e.values()) {
                        aVar.a(e);
                    }
                    e.close();
                    return call;
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception e3) {
                    throw new RuntimeException("Callable threw exception", e3);
                }
            } catch (Throwable th) {
                this.l.remove();
                for (a<?> aVar2 : this.e.values()) {
                    aVar2.a(e);
                }
                e.close();
                throw th;
            }
        } else {
            try {
                return callable.call();
            } catch (Exception e4) {
                throw new RuntimeException("Callable threw exception", e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(File file) {
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

    private static boolean a(final String str) {
        boolean contains;
        Set<String> set = s;
        synchronized (set) {
            if (!set.contains(str)) {
                return false;
            }
            Thread thread = t;
            if (thread != null && thread.isAlive()) {
                return a(str, false);
            }
            Thread thread2 = new Thread(new Runnable() { // from class: io.objectbox._$$Lambda$BoxStore$7jHv0ehVygQknE54YZmDZX0D2RQ
                @Override // java.lang.Runnable
                public final void run() {
                    BoxStore.b(str);
                }
            });
            thread2.setDaemon(true);
            t = thread2;
            thread2.start();
            try {
                thread2.join(500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Set<String> set2 = s;
            synchronized (set2) {
                contains = set2.contains(str);
            }
            return contains;
        }
    }

    private static boolean a(String str, boolean z) {
        boolean contains;
        synchronized (s) {
            int i = 0;
            while (i < 5) {
                Set<String> set = s;
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
            contains = s.contains(str);
        }
        return contains;
    }

    public static Object b() {
        Object obj;
        synchronized (BoxStore.class) {
            try {
                obj = r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(String str) {
        a(str, true);
        t = null;
    }

    public static boolean b(File file) {
        if (!file.exists()) {
            return true;
        }
        if (!a(a(file))) {
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
        throw new IllegalStateException("Cannot delete files: store is still open");
    }

    private void f() {
        if (this.m) {
            throw new IllegalStateException("Store is closed");
        }
    }

    private void g() {
        try {
            if (!this.g.awaitTermination(1L, TimeUnit.SECONDS)) {
                int activeCount = Thread.activeCount();
                System.err.println("Thread pool not terminated in time; printing stack traces...");
                Thread[] threadArr = new Thread[activeCount + 2];
                int enumerate = Thread.enumerate(threadArr);
                for (int i = 0; i < enumerate; i++) {
                    PrintStream printStream = System.err;
                    printStream.println("Thread: " + threadArr[i].getName());
                    Thread.dumpStack();
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private boolean h() {
        boolean nativeStopObjectBrowser;
        synchronized (this) {
            if (this.y != 0) {
                this.y = 0;
                nativeStopObjectBrowser = nativeStopObjectBrowser(this.f36178b);
            } else {
                throw new IllegalStateException("ObjectBrowser has not been started before");
            }
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

    public final <T> T a(Callable<T> callable, int i) {
        if (i == 1) {
            return (T) a(callable);
        }
        if (i > 0) {
            long j = 10;
            DbException e = null;
            for (int i2 = 1; i2 <= i; i2++) {
                try {
                    return (T) a(callable);
                } catch (DbException e2) {
                    e = e2;
                    String nativeDiagnose = nativeDiagnose(this.f36178b);
                    String str = i2 + " of " + i + " attempts of calling a read TX failed:";
                    System.err.println(str);
                    e.printStackTrace();
                    System.err.println(nativeDiagnose);
                    System.err.flush();
                    System.gc();
                    System.runFinalization();
                    nativeCleanStaleReadTransactions(this.f36178b);
                    if (this.z != null) {
                        this.z.a(new DbException(str + " \n" + nativeDiagnose, e));
                    }
                    try {
                        Thread.sleep(j);
                        j *= 2;
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                        throw e;
                    }
                }
            }
            throw e;
        }
        throw new IllegalArgumentException("Illegal value of attempts: ".concat(String.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(Class<?> cls) {
        return this.v.get(cls);
    }

    public final void a(Runnable runnable) {
        Transaction transaction = this.l.get();
        if (transaction == null) {
            Transaction d2 = d();
            this.l.set(d2);
            try {
                runnable.run();
                d2.b();
            } finally {
                this.l.remove();
                d2.close();
            }
        } else if (!transaction.f36184d) {
            runnable.run();
        } else {
            throw new IllegalStateException("Cannot start a transaction while a read only transaction is active");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int[] iArr) {
        synchronized (this.n) {
            this.o++;
            if (this.j) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder("TX committed. New commit count: ");
                sb.append(this.o);
                sb.append(", entity types affected: ");
                sb.append(iArr != null ? iArr.length : 0);
                printStream.println(sb.toString());
            }
        }
        for (a<?> aVar : this.e.values()) {
            Cursor<?> cursor = aVar.f36187c.get();
            if (cursor != null) {
                aVar.f36187c.remove();
                cursor.close();
            }
        }
        if (iArr != null) {
            f fVar = this.h;
            synchronized (fVar.f36233c) {
                fVar.f36233c.add(iArr);
                if (!fVar.f36234d) {
                    fVar.f36234d = true;
                    fVar.f36231a.c(fVar);
                }
            }
        }
    }

    public final int b(Class<?> cls) {
        Integer num = this.w.get(cls);
        if (num != null) {
            return num.intValue();
        }
        throw new DbSchemaException("No entity registered for ".concat(String.valueOf(cls)));
    }

    public final void b(Runnable runnable) {
        if (this.l.get() == null) {
            Transaction e = e();
            this.l.set(e);
            try {
                runnable.run();
            } finally {
                this.l.remove();
                for (a<?> next : this.e.values()) {
                    next.a(e);
                }
                e.close();
            }
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> c<T> c(Class<T> cls) {
        return (c<T>) this.x.get(cls);
    }

    public final Collection<Class<?>> c() {
        return this.v.keySet();
    }

    public final Future<?> c(Runnable runnable) {
        return this.g.submit(runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        boolean z;
        ArrayList<Transaction> arrayList;
        synchronized (this) {
            z = this.m;
            if (!z) {
                if (this.y != 0) {
                    h();
                }
                this.m = true;
                synchronized (this.f) {
                    arrayList = new ArrayList(this.f);
                }
                for (Transaction transaction : arrayList) {
                    transaction.close();
                }
                long j = this.f36178b;
                if (j != 0) {
                    nativeDelete(j);
                }
                this.g.shutdown();
                g();
            }
        }
        if (!z) {
            Set<String> set = s;
            synchronized (set) {
                set.remove(this.u);
                set.notifyAll();
            }
        }
    }

    public final Transaction d() {
        f();
        int i = this.o;
        if (this.j) {
            System.out.println("Begin TX with commit count ".concat(String.valueOf(i)));
        }
        long nativeBeginTx = nativeBeginTx(this.f36178b);
        if (nativeBeginTx != 0) {
            Transaction transaction = new Transaction(this, nativeBeginTx, i);
            synchronized (this.f) {
                this.f.add(transaction);
            }
            return transaction;
        }
        throw new DbException("Could not create native transaction");
    }

    public final <T> a<T> d(Class<T> cls) {
        a<?> aVar = this.e.get(cls);
        a<T> aVar2 = (a<T>) aVar;
        if (aVar == null) {
            if (this.v.containsKey(cls)) {
                synchronized (this.e) {
                    a<?> aVar3 = this.e.get(cls);
                    aVar2 = aVar3;
                    if (aVar3 == null) {
                        aVar2 = new a<>(this, cls);
                        this.e.put(cls, aVar2);
                    }
                }
            } else {
                throw new IllegalArgumentException(cls + " is not a known entity. Please add it and trigger generation again.");
            }
        }
        return aVar2;
    }

    public final Transaction e() {
        f();
        int i = this.o;
        if (this.i) {
            System.out.println("Begin read TX with commit count ".concat(String.valueOf(i)));
        }
        long nativeBeginReadTx = nativeBeginReadTx(this.f36178b);
        if (nativeBeginReadTx != 0) {
            Transaction transaction = new Transaction(this, nativeBeginReadTx, i);
            synchronized (this.f) {
                this.f.add(transaction);
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
