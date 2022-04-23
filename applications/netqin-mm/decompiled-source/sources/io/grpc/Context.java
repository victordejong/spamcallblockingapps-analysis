package io.grpc;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import p530d.p531a.C9295p0;
import p530d.p531a.C9297q;
import p530d.p531a.C9315u0;
import p530d.p531a.RunnableC9292o;
/* loaded from: classes2-dex2jar.jar:io/grpc/Context.class */
public class Context {

    /* renamed from: e */
    public static final Logger f37931e = Logger.getLogger(Context.class.getName());

    /* renamed from: f */
    public static final C9295p0<Object<?>, Object> f37932f;

    /* renamed from: g */
    public static final Context f37933g;

    /* renamed from: a */
    public ArrayList<RunnableC10287c> f37934a;

    /* renamed from: b */
    public AbstractC10286b f37935b = new C10289e(this, null);

    /* renamed from: c */
    public final C10285a f37936c;

    /* renamed from: d */
    public final int f37937d;

    /* loaded from: classes2-dex2jar.jar:io/grpc/Context$DirectExecutor.class */
    public enum DirectExecutor implements Executor {
        INSTANCE;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Context.DirectExecutor";
        }
    }

    /* renamed from: io.grpc.Context$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Context$a.class */
    public static final class C10285a extends Context implements Closeable {

        /* renamed from: h */
        public final C9297q f37938h;

        /* renamed from: i */
        public final Context f37939i;

        /* renamed from: j */
        public boolean f37940j;

        /* renamed from: k */
        public Throwable f37941k;

        /* renamed from: l */
        public ScheduledFuture<?> f37942l;

        @Override // io.grpc.Context
        /* renamed from: a */
        public Context mo678a() {
            return this.f37939i.mo678a();
        }

        @Override // io.grpc.Context
        /* renamed from: a */
        public void mo677a(Context context) {
            this.f37939i.mo677a(context);
        }

        /* renamed from: a */
        public boolean m676a(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (!this.f37940j) {
                    this.f37940j = true;
                    if (this.f37942l != null) {
                        this.f37942l.cancel(false);
                        this.f37942l = null;
                    }
                    this.f37941k = th;
                } else {
                    z = false;
                }
            }
            if (z) {
                m681f();
            }
            return z;
        }

        @Override // io.grpc.Context
        /* renamed from: b */
        public boolean mo675b() {
            return true;
        }

        @Override // io.grpc.Context
        /* renamed from: c */
        public Throwable mo674c() {
            if (mo672e()) {
                return this.f37941k;
            }
            return null;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            m676a((Throwable) null);
        }

        @Override // io.grpc.Context
        /* renamed from: d */
        public C9297q mo673d() {
            return this.f37938h;
        }

        @Override // io.grpc.Context
        /* renamed from: e */
        public boolean mo672e() {
            synchronized (this) {
                if (this.f37940j) {
                    return true;
                }
                if (!Context.super.mo672e()) {
                    return false;
                }
                m676a(Context.super.mo674c());
                return true;
            }
        }
    }

    /* renamed from: io.grpc.Context$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Context$b.class */
    public interface AbstractC10286b {
        /* renamed from: a */
        void mo669a(Context context);
    }

    /* renamed from: io.grpc.Context$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Context$c.class */
    public final class RunnableC10287c implements Runnable {

        /* renamed from: a */
        public final Executor f37943a;

        /* renamed from: b */
        public final AbstractC10286b f37944b;

        public RunnableC10287c(Executor executor, AbstractC10286b bVar) {
            this.f37943a = executor;
            this.f37944b = bVar;
        }

        /* renamed from: a */
        public void m671a() {
            try {
                this.f37943a.execute(this);
            } catch (Throwable th) {
                Context.f37931e.log(Level.INFO, "Exception notifying context listener", th);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f37944b.mo669a(Context.this);
        }
    }

    /* renamed from: io.grpc.Context$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Context$d.class */
    public static final class C10288d {

        /* renamed from: a */
        public static final AbstractC10290f f37946a;

        static {
            AtomicReference atomicReference = new AtomicReference();
            f37946a = m670a(atomicReference);
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                Context.f37931e.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }

        /* renamed from: a */
        public static AbstractC10290f m670a(AtomicReference<? super ClassNotFoundException> atomicReference) {
            try {
                return (AbstractC10290f) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(AbstractC10290f.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                return new C9315u0();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
        }
    }

    /* renamed from: io.grpc.Context$e */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Context$e.class */
    public final class C10289e implements AbstractC10286b {
        public C10289e() {
        }

        public /* synthetic */ C10289e(Context context, RunnableC9292o oVar) {
            this();
        }

        @Override // io.grpc.Context.AbstractC10286b
        /* renamed from: a */
        public void mo669a(Context context) {
            Context context2 = Context.this;
            if (context2 instanceof C10285a) {
                ((C10285a) context2).m676a(context.mo674c());
            } else {
                context2.m681f();
            }
        }
    }

    /* renamed from: io.grpc.Context$f */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Context$f.class */
    public static abstract class AbstractC10290f {
        /* renamed from: a */
        public abstract Context mo668a();

        @Deprecated
        /* renamed from: a */
        public void m667a(Context context) {
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }

        /* renamed from: a */
        public abstract void mo666a(Context context, Context context2);

        /* renamed from: b */
        public Context mo665b(Context context) {
            mo668a();
            m667a(context);
            throw null;
        }
    }

    static {
        C9295p0<Object<?>, Object> p0Var = new C9295p0<>();
        f37932f = p0Var;
        f37933g = new Context(null, p0Var);
    }

    public Context(Context context, C9295p0<Object<?>, Object> p0Var) {
        this.f37936c = m682b(context);
        int i = context == null ? 0 : context.f37937d + 1;
        this.f37937d = i;
        m686a(i);
    }

    /* renamed from: a */
    public static <T> T m683a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m686a(int i) {
        if (i == 1000) {
            f37931e.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    /* renamed from: b */
    public static C10285a m682b(Context context) {
        if (context == null) {
            return null;
        }
        return context instanceof C10285a ? (C10285a) context : context.f37936c;
    }

    /* renamed from: g */
    public static Context m680g() {
        Context a = m679h().mo668a();
        Context context = a;
        if (a == null) {
            context = f37933g;
        }
        return context;
    }

    /* renamed from: h */
    public static AbstractC10290f m679h() {
        return C10288d.f37946a;
    }

    /* renamed from: a */
    public Context mo678a() {
        Context b = m679h().mo665b(this);
        Context context = b;
        if (b == null) {
            context = f37933g;
        }
        return context;
    }

    /* renamed from: a */
    public void m685a(AbstractC10286b bVar) {
        if (mo675b()) {
            synchronized (this) {
                try {
                    if (this.f37934a != null) {
                        int size = this.f37934a.size() - 1;
                        while (true) {
                            if (size < 0) {
                                break;
                            } else if (this.f37934a.get(size).f37944b == bVar) {
                                this.f37934a.remove(size);
                                break;
                            } else {
                                size--;
                            }
                        }
                        if (this.f37934a.isEmpty()) {
                            if (this.f37936c != null) {
                                this.f37936c.m685a(this.f37935b);
                            }
                            this.f37934a = null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public void m684a(AbstractC10286b bVar, Executor executor) {
        m683a(bVar, "cancellationListener");
        m683a(executor, "executor");
        if (mo675b()) {
            RunnableC10287c cVar = new RunnableC10287c(executor, bVar);
            synchronized (this) {
                if (mo672e()) {
                    cVar.m671a();
                } else if (this.f37934a == null) {
                    ArrayList<RunnableC10287c> arrayList = new ArrayList<>();
                    this.f37934a = arrayList;
                    arrayList.add(cVar);
                    if (this.f37936c != null) {
                        this.f37936c.m684a(this.f37935b, (Executor) DirectExecutor.INSTANCE);
                    }
                } else {
                    this.f37934a.add(cVar);
                }
            }
        }
    }

    /* renamed from: a */
    public void mo677a(Context context) {
        m683a(context, "toAttach");
        m679h().mo666a(this, context);
    }

    /* renamed from: b */
    public boolean mo675b() {
        return this.f37936c != null;
    }

    /* renamed from: c */
    public Throwable mo674c() {
        C10285a aVar = this.f37936c;
        if (aVar == null) {
            return null;
        }
        return aVar.mo674c();
    }

    /* renamed from: d */
    public C9297q mo673d() {
        C10285a aVar = this.f37936c;
        if (aVar == null) {
            return null;
        }
        return aVar.mo673d();
    }

    /* renamed from: e */
    public boolean mo672e() {
        C10285a aVar = this.f37936c;
        if (aVar == null) {
            return false;
        }
        return aVar.mo672e();
    }

    /* renamed from: f */
    public void m681f() {
        if (mo675b()) {
            synchronized (this) {
                try {
                    if (this.f37934a != null) {
                        ArrayList<RunnableC10287c> arrayList = this.f37934a;
                        this.f37934a = null;
                        for (int i = 0; i < arrayList.size(); i++) {
                            if (!(arrayList.get(i).f37944b instanceof C10289e)) {
                                arrayList.get(i).m671a();
                            }
                        }
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            if (arrayList.get(i2).f37944b instanceof C10289e) {
                                arrayList.get(i2).m671a();
                            }
                        }
                        C10285a aVar = this.f37936c;
                        if (aVar != null) {
                            aVar.m685a(this.f37935b);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
