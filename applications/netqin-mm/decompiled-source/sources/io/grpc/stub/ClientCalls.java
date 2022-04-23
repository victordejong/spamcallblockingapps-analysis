package io.grpc.stub;

import com.google.common.util.concurrent.AbstractFuture;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.StatusException;
import io.grpc.StatusRuntimeException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.AbstractC9227f;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
/* loaded from: classes2-dex2jar.jar:io/grpc/stub/ClientCalls.class */
public final class ClientCalls {

    /* renamed from: a */
    public static final Logger f38312a = Logger.getLogger(ClientCalls.class.getName());

    /* renamed from: b */
    public static final C9222d.C9223a<StubType> f38313b = C9222d.C9223a.m3120a("internal-stub-type");

    /* loaded from: classes2-dex2jar.jar:io/grpc/stub/ClientCalls$StubType.class */
    public enum StubType {
        BLOCKING,
        FUTURE,
        ASYNC
    }

    /* loaded from: classes2-dex2jar.jar:io/grpc/stub/ClientCalls$ThreadlessExecutor.class */
    public static final class ThreadlessExecutor extends ConcurrentLinkedQueue<Runnable> implements Executor {
        public static final Logger log = Logger.getLogger(ThreadlessExecutor.class.getName());
        public volatile Thread waiter;

        public static void throwIfInterrupted() throws InterruptedException {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            add(runnable);
            LockSupport.unpark(this.waiter);
        }

        public void waitAndDrain() throws InterruptedException {
            Runnable poll;
            throwIfInterrupted();
            Runnable poll2 = poll();
            Runnable runnable = poll2;
            if (poll2 == null) {
                this.waiter = Thread.currentThread();
                while (true) {
                    try {
                        runnable = poll();
                        if (runnable != null) {
                            break;
                        }
                        LockSupport.park(this);
                        throwIfInterrupted();
                    } finally {
                        this.waiter = null;
                    }
                }
            }
            do {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    log.log(Level.WARNING, "Runnable threw exception", th);
                }
                poll = poll();
                runnable = poll;
            } while (poll != null);
        }
    }

    /* renamed from: io.grpc.stub.ClientCalls$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/stub/ClientCalls$a.class */
    public static final class C10379a<RespT> extends AbstractFuture<RespT> {

        /* renamed from: h */
        public final AbstractC9227f<?, RespT> f38314h;

        public C10379a(AbstractC9227f<?, RespT> fVar) {
            this.f38314h = fVar;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: a */
        public boolean mo276a(Throwable th) {
            return super.mo276a(th);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: b */
        public boolean mo275b(RespT respt) {
            return super.mo275b((C10379a<RespT>) respt);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: c */
        public void mo274c() {
            this.f38314h.mo2745a("GrpcFuture was cancelled", (Throwable) null);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: d */
        public String mo273d() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("clientCall", this.f38314h);
            return a.toString();
        }
    }

    /* renamed from: io.grpc.stub.ClientCalls$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/stub/ClientCalls$b.class */
    public static final class C10380b<RespT> extends AbstractC9227f.AbstractC9228a<RespT> {

        /* renamed from: a */
        public final C10379a<RespT> f38315a;

        /* renamed from: b */
        public RespT f38316b;

        public C10380b(C10379a<RespT> aVar) {
            this.f38315a = aVar;
        }

        @Override // p530d.p531a.AbstractC9227f.AbstractC9228a
        /* renamed from: a */
        public void mo272a(C9260k0 k0Var) {
        }

        @Override // p530d.p531a.AbstractC9227f.AbstractC9228a
        /* renamed from: a */
        public void mo271a(Status status, C9260k0 k0Var) {
            if (status.m602f()) {
                if (this.f38316b == null) {
                    this.f38315a.mo276a((Throwable) Status.f37995m.m609b("No value received for unary call").m615a(k0Var));
                }
                this.f38315a.mo275b((C10379a<RespT>) this.f38316b);
                return;
            }
            this.f38315a.mo276a((Throwable) status.m615a(k0Var));
        }

        @Override // p530d.p531a.AbstractC9227f.AbstractC9228a
        /* renamed from: a */
        public void mo270a(RespT respt) {
            if (this.f38316b == null) {
                this.f38316b = respt;
                return;
            }
            throw Status.f37995m.m609b("More than one value received for unary call").m610b();
        }
    }

    /* renamed from: a */
    public static <ReqT, RespT> AbstractFutureC5108l<RespT> m281a(AbstractC9227f<ReqT, RespT> fVar, ReqT reqt) {
        C10379a aVar = new C10379a(fVar);
        m280a((AbstractC9227f) fVar, (Object) reqt, (AbstractC9227f.AbstractC9228a) new C10380b(aVar), false);
        return aVar;
    }

    /* renamed from: a */
    public static StatusRuntimeException m278a(Throwable th) {
        C4933n.m24794a(th, "t");
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof StatusException) {
                StatusException statusException = (StatusException) th2;
                return new StatusRuntimeException(statusException.getStatus(), statusException.getTrailers());
            } else if (th2 instanceof StatusRuntimeException) {
                StatusRuntimeException statusRuntimeException = (StatusRuntimeException) th2;
                return new StatusRuntimeException(statusRuntimeException.getStatus(), statusRuntimeException.getTrailers());
            }
        }
        return Status.f37990h.m609b("unexpected exception").m612a(th).m610b();
    }

    /* renamed from: a */
    public static <ReqT, RespT> RespT m283a(AbstractC9225e eVar, MethodDescriptor<ReqT, RespT> methodDescriptor, C9222d dVar, ReqT reqt) {
        Throwable th;
        RuntimeException e;
        Error e2;
        ThreadlessExecutor threadlessExecutor = new ThreadlessExecutor();
        AbstractC9227f a = eVar.mo359a(methodDescriptor, dVar.m3133a(threadlessExecutor));
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        try {
            try {
                AbstractFutureC5108l a2 = m281a(a, reqt);
                while (!a2.isDone()) {
                    try {
                        threadlessExecutor.waitAndDrain();
                    } catch (InterruptedException e3) {
                        try {
                            a.mo2745a("Thread interrupted", e3);
                            z4 = true;
                        } catch (Error e4) {
                            e2 = e4;
                            m279a((AbstractC9227f<?, ?>) a, (Throwable) e2);
                            throw null;
                        } catch (RuntimeException e5) {
                            e = e5;
                            m279a((AbstractC9227f<?, ?>) a, (Throwable) e);
                            throw null;
                        } catch (Throwable th2) {
                            th = th2;
                            z = true;
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                }
                z2 = z4;
                z3 = z4;
                RespT respt = (RespT) m277a(a2);
                if (z4) {
                    Thread.currentThread().interrupt();
                }
                return respt;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Error e6) {
            e2 = e6;
        } catch (RuntimeException e7) {
            e = e7;
        }
    }

    /* renamed from: a */
    public static <V> V m277a(Future<V> future) {
        try {
            return future.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw Status.f37989g.m609b("Thread interrupted").m612a(e).m610b();
        } catch (ExecutionException e2) {
            throw m278a(e2.getCause());
        }
    }

    /* renamed from: a */
    public static RuntimeException m279a(AbstractC9227f<?, ?> fVar, Throwable th) {
        try {
            fVar.mo2745a((String) null, th);
        } catch (Throwable th2) {
            f38312a.log(Level.SEVERE, "RuntimeException encountered while closing call", th2);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        } else {
            throw new AssertionError(th);
        }
    }

    /* renamed from: a */
    public static <ReqT, RespT> void m282a(AbstractC9227f<ReqT, RespT> fVar, AbstractC9227f.AbstractC9228a<RespT> aVar, boolean z) {
        fVar.mo2162a(aVar, new C9260k0());
        if (z) {
            fVar.mo2762a(1);
        } else {
            fVar.mo2762a(2);
        }
    }

    /* renamed from: a */
    public static <ReqT, RespT> void m280a(AbstractC9227f<ReqT, RespT> fVar, ReqT reqt, AbstractC9227f.AbstractC9228a<RespT> aVar, boolean z) {
        m282a(fVar, aVar, z);
        try {
            fVar.mo2746a((AbstractC9227f<ReqT, RespT>) reqt);
            fVar.mo2763a();
        } catch (Error e) {
            m279a((AbstractC9227f<?, ?>) fVar, (Throwable) e);
            throw null;
        } catch (RuntimeException e2) {
            m279a((AbstractC9227f<?, ?>) fVar, (Throwable) e2);
            throw null;
        }
    }
}
