package io.a;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5-dex2jar.jar:io/a/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f36148a = Logger.getLogger(a.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final a f36149b;
    private static final io.a.c<d<?>, Object> f;

    /* renamed from: c  reason: collision with root package name */
    final C0584a f36150c;

    /* renamed from: d  reason: collision with root package name */
    public final io.a.c<d<?>, Object> f36151d;
    final int e;
    private ArrayList<c> g;
    private b h;

    /* renamed from: io.a.a$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:io/a/a$1.class */
    final class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f36152a;

        AnonymousClass1(Runnable runnable) {
            this.f36152a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a c2 = a.this.c();
            try {
                this.f36152a.run();
            } finally {
                a.this.a(c2);
            }
        }
    }

    /* renamed from: io.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:io/a/a$a.class */
    public static final class C0584a extends a implements Closeable {
        final io.a.b f;
        private final a g;
        private boolean h;
        private Throwable i;
        private ScheduledFuture<?> j;

        private C0584a(a aVar) {
            super(aVar, aVar.f36151d, null);
            this.f = aVar.f();
            this.g = new a(this, this.f36151d, null);
        }

        /* synthetic */ C0584a(a aVar, AnonymousClass1 r5) {
            this(aVar);
        }

        private C0584a(a aVar, io.a.b bVar) {
            super(aVar, aVar.f36151d, null);
            this.f = bVar;
            this.g = new a(this, this.f36151d, null);
        }

        /* synthetic */ C0584a(a aVar, io.a.b bVar, AnonymousClass1 r7) {
            this(aVar, bVar);
        }

        @Override // io.a.a
        public final void a(a aVar) {
            this.g.a(aVar);
        }

        public final boolean a(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (!this.h) {
                    this.h = true;
                    ScheduledFuture<?> scheduledFuture = this.j;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        this.j = null;
                    }
                    this.i = th;
                } else {
                    z = false;
                }
            }
            if (z) {
                g();
            }
            return z;
        }

        @Override // io.a.a
        final boolean b() {
            return true;
        }

        @Override // io.a.a
        public final a c() {
            return this.g.c();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            a((Throwable) null);
        }

        @Override // io.a.a
        public final boolean d() {
            synchronized (this) {
                if (this.h) {
                    return true;
                }
                if (!a.super.d()) {
                    return false;
                }
                a(a.super.e());
                return true;
            }
        }

        @Override // io.a.a
        public final Throwable e() {
            if (d()) {
                return this.i;
            }
            return null;
        }

        @Override // io.a.a
        public final io.a.b f() {
            return this.f;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/a/a$b.class */
    public interface b {
        void a(a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/a/a$c.class */
    public final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final b f36154a;

        /* renamed from: c  reason: collision with root package name */
        private final Executor f36156c;

        c(Executor executor, b bVar) {
            this.f36156c = executor;
            this.f36154a = bVar;
        }

        final void a() {
            try {
                this.f36156c.execute(this);
            } catch (Throwable th) {
                a.f36148a.log(Level.INFO, "Exception notifying context listener", th);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f36154a.a(a.this);
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/a/a$d.class */
    public static final class d<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f36157a;

        /* renamed from: b  reason: collision with root package name */
        private final String f36158b;

        d(String str) {
            this(str, null);
        }

        d(String str, T t) {
            this.f36158b = (String) a.a(str, "name");
            this.f36157a = t;
        }

        public final String toString() {
            return this.f36158b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/a/a$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        static final g f36159a;

        static {
            AtomicReference atomicReference = new AtomicReference();
            f36159a = a(atomicReference);
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                a.f36148a.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }

        private e() {
        }

        private static g a(AtomicReference<? super ClassNotFoundException> atomicReference) {
            try {
                return (g) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(g.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                return new io.a.d();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/a/a$f.class */
    public final class f implements b {
        private f() {
        }

        /* synthetic */ f(a aVar, AnonymousClass1 r5) {
            this();
        }

        @Override // io.a.a.b
        public final void a(a aVar) {
            a aVar2 = a.this;
            if (aVar2 instanceof C0584a) {
                ((C0584a) aVar2).a(aVar.e());
            } else {
                aVar2.g();
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/a/a$g.class */
    public static abstract class g {
        public abstract a a();

        public a a(a aVar) {
            a();
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }

        public abstract void a(a aVar, a aVar2);
    }

    static {
        io.a.c<d<?>, Object> cVar = new io.a.c<>();
        f = cVar;
        f36149b = new a((a) null, cVar);
    }

    public a(a aVar, io.a.c<d<?>, Object> cVar) {
        C0584a aVar2 = null;
        this.h = new f(this, null);
        this.f36150c = aVar != null ? aVar instanceof C0584a ? (C0584a) aVar : aVar.f36150c : aVar2;
        this.f36151d = cVar;
        int i = aVar == null ? 0 : aVar.e + 1;
        this.e = i;
        a(i);
    }

    /* synthetic */ a(a aVar, io.a.c cVar, AnonymousClass1 r7) {
        this(aVar, cVar);
    }

    private a(io.a.c<d<?>, Object> cVar, int i) {
        this.h = new f(this, null);
        this.f36150c = null;
        this.f36151d = cVar;
        this.e = i;
        a(i);
    }

    public static <T> d<T> a(String str) {
        return new d<>(str);
    }

    public static a a() {
        a a2 = e.f36159a.a();
        a aVar = a2;
        if (a2 == null) {
            aVar = f36149b;
        }
        return aVar;
    }

    static <T> T a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    private static void a(int i) {
        if (i == 1000) {
            f36148a.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    public final void a(b bVar) {
        if (b()) {
            synchronized (this) {
                ArrayList<c> arrayList = this.g;
                if (arrayList != null) {
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        } else if (this.g.get(size).f36154a == bVar) {
                            this.g.remove(size);
                            break;
                        } else {
                            size--;
                        }
                    }
                    if (this.g.isEmpty()) {
                        C0584a aVar = this.f36150c;
                        if (aVar != null) {
                            aVar.a(this.h);
                        }
                        this.g = null;
                    }
                }
            }
        }
    }

    public void a(a aVar) {
        a(aVar, "toAttach");
        e.f36159a.a(this, aVar);
    }

    boolean b() {
        return this.f36150c != null;
    }

    public a c() {
        a a2 = e.f36159a.a(this);
        a aVar = a2;
        if (a2 == null) {
            aVar = f36149b;
        }
        return aVar;
    }

    public boolean d() {
        C0584a aVar = this.f36150c;
        if (aVar == null) {
            return false;
        }
        return aVar.d();
    }

    public Throwable e() {
        C0584a aVar = this.f36150c;
        if (aVar == null) {
            return null;
        }
        return aVar.e();
    }

    public io.a.b f() {
        C0584a aVar = this.f36150c;
        if (aVar == null) {
            return null;
        }
        return aVar.f;
    }

    final void g() {
        if (b()) {
            synchronized (this) {
                ArrayList<c> arrayList = this.g;
                if (arrayList != null) {
                    this.g = null;
                    for (int i = 0; i < arrayList.size(); i++) {
                        if (!(arrayList.get(i).f36154a instanceof f)) {
                            arrayList.get(i).a();
                        }
                    }
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (arrayList.get(i2).f36154a instanceof f) {
                            arrayList.get(i2).a();
                        }
                    }
                    C0584a aVar = this.f36150c;
                    if (aVar != null) {
                        aVar.a(this.h);
                    }
                }
            }
        }
    }
}
