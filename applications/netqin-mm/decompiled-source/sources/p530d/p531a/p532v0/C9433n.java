package p530d.p531a.p532v0;

import io.grpc.Context;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.GrpcUtil;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p275i.p276a.C5110n;
import p530d.p531a.AbstractC9227f;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.AbstractC9257k;
import p530d.p531a.AbstractC9270l;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9285m;
import p530d.p531a.C9294p;
import p530d.p531a.C9297q;
import p530d.p531a.C9306s;
import p530d.p531a.C9614x;
import p530d.p531a.p532v0.AbstractC9521w1;
import p530d.p540b.C9634b;
import p530d.p540b.C9635c;
import p530d.p540b.C9636d;
/* renamed from: d.a.v0.n */
/* loaded from: classes2-dex2jar.jar:d/a/v0/n.class */
public final class C9433n<ReqT, RespT> extends AbstractC9227f<ReqT, RespT> {

    /* renamed from: v */
    public static final Logger f36174v = Logger.getLogger(C9433n.class.getName());

    /* renamed from: w */
    public static final byte[] f36175w = "gzip".getBytes(Charset.forName("US-ASCII"));

    /* renamed from: x */
    public static final long f36176x = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: a */
    public final MethodDescriptor<ReqT, RespT> f36177a;

    /* renamed from: b */
    public final C9636d f36178b;

    /* renamed from: c */
    public final Executor f36179c;

    /* renamed from: d */
    public final C9390l f36180d;

    /* renamed from: e */
    public final Context f36181e;

    /* renamed from: f */
    public final boolean f36182f;

    /* renamed from: g */
    public final C9222d f36183g;

    /* renamed from: h */
    public final boolean f36184h;

    /* renamed from: i */
    public AbstractC9448o f36185i;

    /* renamed from: j */
    public volatile boolean f36186j;

    /* renamed from: k */
    public boolean f36187k;

    /* renamed from: l */
    public boolean f36188l;

    /* renamed from: m */
    public final AbstractC9443f f36189m;

    /* renamed from: n */
    public C9433n<ReqT, RespT>.C9444g f36190n;

    /* renamed from: o */
    public final ScheduledExecutorService f36191o;

    /* renamed from: p */
    public boolean f36192p;

    /* renamed from: s */
    public volatile ScheduledFuture<?> f36195s;

    /* renamed from: t */
    public volatile ScheduledFuture<?> f36196t;

    /* renamed from: q */
    public C9306s f36193q = C9306s.m2960d();

    /* renamed from: r */
    public C9285m f36194r = C9285m.m2999a();

    /* renamed from: u */
    public boolean f36197u = false;

    /* renamed from: d.a.v0.n$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/n$b.class */
    public class C9435b extends AbstractRunnableC9505u {

        /* renamed from: b */
        public final /* synthetic */ AbstractC9227f.AbstractC9228a f36198b;

        /* renamed from: c */
        public final /* synthetic */ Status f36199c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9435b(AbstractC9227f.AbstractC9228a aVar, Status status) {
            super(C9433n.this.f36181e);
            this.f36198b = aVar;
            this.f36199c = status;
        }

        @Override // p530d.p531a.p532v0.AbstractRunnableC9505u
        /* renamed from: a */
        public void mo2581a() {
            C9433n.this.m2759a(this.f36198b, this.f36199c, new C9260k0());
        }
    }

    /* renamed from: d.a.v0.n$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/n$c.class */
    public class RunnableC9436c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f36201a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC9227f.AbstractC9228a f36202b;

        public RunnableC9436c(long j, AbstractC9227f.AbstractC9228a aVar) {
            this.f36201a = j;
            this.f36202b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9433n.this.m2747a(C9433n.this.m2761a(this.f36201a), this.f36202b);
        }
    }

    /* renamed from: d.a.v0.n$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/n$d.class */
    public class RunnableC9437d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Status f36204a;

        public RunnableC9437d(Status status) {
            this.f36204a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9433n.this.f36185i.mo2531a(this.f36204a);
        }
    }

    /* renamed from: d.a.v0.n$e */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/n$e.class */
    public class C9438e implements ClientStreamListener {

        /* renamed from: a */
        public final AbstractC9227f.AbstractC9228a<RespT> f36206a;

        /* renamed from: b */
        public boolean f36207b;

        /* renamed from: d.a.v0.n$e$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/n$e$a.class */
        public final class C9439a extends AbstractRunnableC9505u {

            /* renamed from: b */
            public final /* synthetic */ C9634b f36209b;

            /* renamed from: c */
            public final /* synthetic */ C9260k0 f36210c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9439a(C9634b bVar, C9260k0 k0Var) {
                super(C9433n.this.f36181e);
                this.f36209b = bVar;
                this.f36210c = k0Var;
            }

            @Override // p530d.p531a.p532v0.AbstractRunnableC9505u
            /* renamed from: a */
            public void mo2581a() {
                C9635c.m2121b("ClientCall$Listener.headersRead", C9433n.this.f36178b);
                C9635c.m2126a(this.f36209b);
                try {
                    m2725b();
                    C9635c.m2119c("ClientCall$Listener.headersRead", C9433n.this.f36178b);
                } catch (Throwable th) {
                    C9635c.m2119c("ClientCall$Listener.headersRead", C9433n.this.f36178b);
                    throw th;
                }
            }

            /* renamed from: b */
            public final void m2725b() {
                if (!C9438e.this.f36207b) {
                    try {
                        C9438e.this.f36206a.mo272a(this.f36210c);
                    } catch (Throwable th) {
                        Status b = Status.f37989g.m612a(th).m609b("Failed to read headers");
                        C9433n.this.f36185i.mo2531a(b);
                        C9438e.this.m2727b(b, new C9260k0());
                    }
                }
            }
        }

        /* renamed from: d.a.v0.n$e$b */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/n$e$b.class */
        public final class C9440b extends AbstractRunnableC9505u {

            /* renamed from: b */
            public final /* synthetic */ C9634b f36212b;

            /* renamed from: c */
            public final /* synthetic */ AbstractC9521w1.AbstractC9522a f36213c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9440b(C9634b bVar, AbstractC9521w1.AbstractC9522a aVar) {
                super(C9433n.this.f36181e);
                this.f36212b = bVar;
                this.f36213c = aVar;
            }

            @Override // p530d.p531a.p532v0.AbstractRunnableC9505u
            /* renamed from: a */
            public void mo2581a() {
                C9635c.m2121b("ClientCall$Listener.messagesAvailable", C9433n.this.f36178b);
                C9635c.m2126a(this.f36212b);
                try {
                    m2724b();
                    C9635c.m2119c("ClientCall$Listener.messagesAvailable", C9433n.this.f36178b);
                } catch (Throwable th) {
                    C9635c.m2119c("ClientCall$Listener.messagesAvailable", C9433n.this.f36178b);
                    throw th;
                }
            }

            /* renamed from: b */
            public final void m2724b() {
                if (C9438e.this.f36207b) {
                    GrpcUtil.m532a(this.f36213c);
                    return;
                }
                while (true) {
                    try {
                        InputStream next = this.f36213c.next();
                        if (next != null) {
                            C9438e.this.f36206a.mo270a((AbstractC9227f.AbstractC9228a) C9433n.this.f36177a.m633a(next));
                            next.close();
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        GrpcUtil.m532a(this.f36213c);
                        Status b = Status.f37989g.m612a(th).m609b("Failed to read message.");
                        C9433n.this.f36185i.mo2531a(b);
                        C9438e.this.m2727b(b, new C9260k0());
                        return;
                    }
                }
            }
        }

        /* renamed from: d.a.v0.n$e$c */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/n$e$c.class */
        public final class C9441c extends AbstractRunnableC9505u {

            /* renamed from: b */
            public final /* synthetic */ C9634b f36215b;

            /* renamed from: c */
            public final /* synthetic */ Status f36216c;

            /* renamed from: d */
            public final /* synthetic */ C9260k0 f36217d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9441c(C9634b bVar, Status status, C9260k0 k0Var) {
                super(C9433n.this.f36181e);
                this.f36215b = bVar;
                this.f36216c = status;
                this.f36217d = k0Var;
            }

            @Override // p530d.p531a.p532v0.AbstractRunnableC9505u
            /* renamed from: a */
            public void mo2581a() {
                C9635c.m2121b("ClientCall$Listener.onClose", C9433n.this.f36178b);
                C9635c.m2126a(this.f36215b);
                try {
                    m2723b();
                    C9635c.m2119c("ClientCall$Listener.onClose", C9433n.this.f36178b);
                } catch (Throwable th) {
                    C9635c.m2119c("ClientCall$Listener.onClose", C9433n.this.f36178b);
                    throw th;
                }
            }

            /* renamed from: b */
            public final void m2723b() {
                if (!C9438e.this.f36207b) {
                    C9438e.this.m2727b(this.f36216c, this.f36217d);
                }
            }
        }

        /* renamed from: d.a.v0.n$e$d */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/n$e$d.class */
        public final class C9442d extends AbstractRunnableC9505u {

            /* renamed from: b */
            public final /* synthetic */ C9634b f36219b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9442d(C9634b bVar) {
                super(C9433n.this.f36181e);
                this.f36219b = bVar;
            }

            @Override // p530d.p531a.p532v0.AbstractRunnableC9505u
            /* renamed from: a */
            public void mo2581a() {
                C9635c.m2121b("ClientCall$Listener.onReady", C9433n.this.f36178b);
                C9635c.m2126a(this.f36219b);
                try {
                    m2722b();
                    C9635c.m2119c("ClientCall$Listener.onReady", C9433n.this.f36178b);
                } catch (Throwable th) {
                    C9635c.m2119c("ClientCall$Listener.onReady", C9433n.this.f36178b);
                    throw th;
                }
            }

            /* renamed from: b */
            public final void m2722b() {
                try {
                    C9438e.this.f36206a.m3119a();
                } catch (Throwable th) {
                    Status b = Status.f37989g.m612a(th).m609b("Failed to call onReady.");
                    C9433n.this.f36185i.mo2531a(b);
                    C9438e.this.m2727b(b, new C9260k0());
                }
            }
        }

        public C9438e(AbstractC9227f.AbstractC9228a<RespT> aVar) {
            C4933n.m24794a(aVar, "observer");
            this.f36206a = aVar;
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1
        /* renamed from: a */
        public void mo2522a() {
            if (!C9433n.this.f36177a.m628c().clientSendsOneMessage()) {
                C9635c.m2121b("ClientStreamListener.onReady", C9433n.this.f36178b);
                try {
                    C9433n.this.f36179c.execute(new C9442d(C9635c.m2127a()));
                    C9635c.m2119c("ClientStreamListener.onReady", C9433n.this.f36178b);
                } catch (Throwable th) {
                    C9635c.m2119c("ClientStreamListener.onReady", C9433n.this.f36178b);
                    throw th;
                }
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo575a(C9260k0 k0Var) {
            C9635c.m2121b("ClientStreamListener.headersRead", C9433n.this.f36178b);
            try {
                C9433n.this.f36179c.execute(new C9439a(C9635c.m2127a(), k0Var));
                C9635c.m2119c("ClientStreamListener.headersRead", C9433n.this.f36178b);
            } catch (Throwable th) {
                C9635c.m2119c("ClientStreamListener.headersRead", C9433n.this.f36178b);
                throw th;
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1
        /* renamed from: a */
        public void mo2521a(AbstractC9521w1.AbstractC9522a aVar) {
            C9635c.m2121b("ClientStreamListener.messagesAvailable", C9433n.this.f36178b);
            try {
                C9433n.this.f36179c.execute(new C9440b(C9635c.m2127a(), aVar));
                C9635c.m2119c("ClientStreamListener.messagesAvailable", C9433n.this.f36178b);
            } catch (Throwable th) {
                C9635c.m2119c("ClientStreamListener.messagesAvailable", C9433n.this.f36178b);
                throw th;
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo574a(Status status, C9260k0 k0Var) {
            mo573a(status, ClientStreamListener.RpcProgress.PROCESSED, k0Var);
        }

        @Override // io.grpc.internal.ClientStreamListener
        /* renamed from: a */
        public void mo573a(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
            C9635c.m2121b("ClientStreamListener.closed", C9433n.this.f36178b);
            try {
                m2726b(status, rpcProgress, k0Var);
                C9635c.m2119c("ClientStreamListener.closed", C9433n.this.f36178b);
            } catch (Throwable th) {
                C9635c.m2119c("ClientStreamListener.closed", C9433n.this.f36178b);
                throw th;
            }
        }

        /* renamed from: b */
        public final void m2727b(Status status, C9260k0 k0Var) {
            this.f36207b = true;
            C9433n.this.f36186j = true;
            try {
                C9433n.this.m2759a(this.f36206a, status, k0Var);
            } finally {
                C9433n.this.m2736d();
                C9433n.this.f36180d.m2859a(status.m602f());
            }
        }

        /* renamed from: b */
        public final void m2726b(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
            C9297q b = C9433n.this.m2743b();
            Status status2 = status;
            C9260k0 k0Var2 = k0Var;
            if (status.m604d() == Status.Code.CANCELLED) {
                status2 = status;
                k0Var2 = k0Var;
                if (b != null) {
                    status2 = status;
                    k0Var2 = k0Var;
                    if (b.m2983a()) {
                        C9449o0 o0Var = new C9449o0();
                        C9433n.this.f36185i.mo2534a(o0Var);
                        Status status3 = Status.f37991i;
                        status2 = status3.m613a("ClientCall was cancelled at or after deadline. " + o0Var);
                        k0Var2 = new C9260k0();
                    }
                }
            }
            C9433n.this.f36179c.execute(new C9441c(C9635c.m2127a(), status2, k0Var2));
        }
    }

    /* renamed from: d.a.v0.n$f */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/n$f.class */
    public interface AbstractC9443f {
        /* renamed from: a */
        <ReqT> AbstractC9448o mo383a(MethodDescriptor<ReqT, ?> methodDescriptor, C9222d dVar, C9260k0 k0Var, Context context);

        /* renamed from: a */
        AbstractC9451p mo384a(AbstractC9229f0.AbstractC9236f fVar);
    }

    /* renamed from: d.a.v0.n$g */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/n$g.class */
    public final class C9444g implements Context.AbstractC10286b {

        /* renamed from: a */
        public AbstractC9227f.AbstractC9228a<RespT> f36221a;

        public C9444g(AbstractC9227f.AbstractC9228a<RespT> aVar) {
            this.f36221a = aVar;
        }

        @Override // io.grpc.Context.AbstractC10286b
        /* renamed from: a */
        public void mo669a(Context context) {
            if (context.mo673d() == null || !context.mo673d().m2983a()) {
                C9433n.this.f36185i.mo2531a(C9294p.m2984a(context));
                return;
            }
            C9433n.this.m2747a(C9294p.m2984a(context), this.f36221a);
        }
    }

    public C9433n(MethodDescriptor<ReqT, RespT> methodDescriptor, Executor executor, C9222d dVar, AbstractC9443f fVar, ScheduledExecutorService scheduledExecutorService, C9390l lVar, boolean z) {
        boolean z2 = false;
        this.f36177a = methodDescriptor;
        this.f36178b = C9635c.m2124a(methodDescriptor.m635a(), System.identityHashCode(this));
        this.f36179c = executor == C5110n.m24504a() ? new ExecutorC9450o1() : new ExecutorC9472p1(executor);
        this.f36180d = lVar;
        this.f36181e = Context.m680g();
        this.f36182f = (methodDescriptor.m628c() == MethodDescriptor.MethodType.UNARY || methodDescriptor.m628c() == MethodDescriptor.MethodType.SERVER_STREAMING) ? true : z2;
        this.f36183g = dVar;
        this.f36189m = fVar;
        this.f36191o = scheduledExecutorService;
        this.f36184h = z;
        C9635c.m2123a("ClientCall.<init>", this.f36178b);
    }

    /* renamed from: a */
    public static C9297q m2755a(C9297q qVar, C9297q qVar2) {
        return qVar == null ? qVar2 : qVar2 == null ? qVar : qVar.m2975d(qVar2);
    }

    /* renamed from: a */
    public static void m2758a(C9260k0 k0Var, C9306s sVar, AbstractC9270l lVar, boolean z) {
        k0Var.m3068a(GrpcUtil.f38060c);
        if (lVar != AbstractC9257k.C9259b.f35812a) {
            k0Var.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f<String>>) GrpcUtil.f38060c, (C9260k0.AbstractC9266f<String>) lVar.mo2973a());
        }
        k0Var.m3068a(GrpcUtil.f38061d);
        byte[] a = C9614x.m2180a(sVar);
        if (a.length != 0) {
            k0Var.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f<byte[]>>) GrpcUtil.f38061d, (C9260k0.AbstractC9266f<byte[]>) a);
        }
        k0Var.m3068a(GrpcUtil.f38062e);
        k0Var.m3068a(GrpcUtil.f38063f);
        if (z) {
            k0Var.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f<byte[]>>) GrpcUtil.f38063f, (C9260k0.AbstractC9266f<byte[]>) f36175w);
        }
    }

    /* renamed from: a */
    public static void m2754a(C9297q qVar, C9297q qVar2, C9297q qVar3) {
        if (f36174v.isLoggable(Level.FINE) && qVar != null && qVar.equals(qVar2)) {
            StringBuilder sb = new StringBuilder(String.format("Call timeout set to '%d' ns, due to context deadline.", Long.valueOf(Math.max(0L, qVar.m2978a(TimeUnit.NANOSECONDS)))));
            if (qVar3 == null) {
                sb.append(" Explicit call timeout was not set.");
            } else {
                sb.append(String.format(" Explicit call timeout was '%d' ns.", Long.valueOf(qVar3.m2978a(TimeUnit.NANOSECONDS))));
            }
            f36174v.fine(sb.toString());
        }
    }

    /* renamed from: a */
    public C9433n<ReqT, RespT> m2757a(C9285m mVar) {
        this.f36194r = mVar;
        return this;
    }

    /* renamed from: a */
    public C9433n<ReqT, RespT> m2753a(C9306s sVar) {
        this.f36193q = sVar;
        return this;
    }

    /* renamed from: a */
    public C9433n<ReqT, RespT> m2744a(boolean z) {
        this.f36192p = z;
        return this;
    }

    /* renamed from: a */
    public final Status m2761a(long j) {
        C9449o0 o0Var = new C9449o0();
        this.f36185i.mo2534a(o0Var);
        long abs = Math.abs(j) / TimeUnit.SECONDS.toNanos(1L);
        long abs2 = Math.abs(j);
        long nanos = TimeUnit.SECONDS.toNanos(1L);
        StringBuilder sb = new StringBuilder();
        sb.append("deadline exceeded after ");
        if (j < 0) {
            sb.append('-');
        }
        sb.append(abs);
        sb.append(String.format(".%09d", Long.valueOf(abs2 % nanos)));
        sb.append("s. ");
        sb.append(o0Var);
        return Status.f37991i.m613a(sb.toString());
    }

    /* renamed from: a */
    public final ScheduledFuture<?> m2756a(C9297q qVar, AbstractC9227f.AbstractC9228a<RespT> aVar) {
        long a = qVar.m2978a(TimeUnit.NANOSECONDS);
        return this.f36191o.schedule(new RunnableC9494s0(new RunnableC9436c(a, aVar)), a, TimeUnit.NANOSECONDS);
    }

    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2763a() {
        C9635c.m2121b("ClientCall.halfClose", this.f36178b);
        try {
            m2738c();
            C9635c.m2119c("ClientCall.halfClose", this.f36178b);
        } catch (Throwable th) {
            C9635c.m2119c("ClientCall.halfClose", this.f36178b);
            throw th;
        }
    }

    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2762a(int i) {
        C9635c.m2121b("ClientCall.request", this.f36178b);
        try {
            boolean z = true;
            C4933n.m24775b(this.f36185i != null, "Not started");
            if (i < 0) {
                z = false;
            }
            C4933n.m24790a(z, "Number requested must be non-negative");
            this.f36185i.mo2538a(i);
            C9635c.m2119c("ClientCall.cancel", this.f36178b);
        } catch (Throwable th) {
            C9635c.m2119c("ClientCall.cancel", this.f36178b);
            throw th;
        }
    }

    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2162a(AbstractC9227f.AbstractC9228a<RespT> aVar, C9260k0 k0Var) {
        C9635c.m2121b("ClientCall.start", this.f36178b);
        try {
            m2742b(aVar, k0Var);
            C9635c.m2119c("ClientCall.start", this.f36178b);
        } catch (Throwable th) {
            C9635c.m2119c("ClientCall.start", this.f36178b);
            throw th;
        }
    }

    /* renamed from: a */
    public final void m2760a(AbstractC9227f.AbstractC9228a<RespT> aVar, Status status) {
        this.f36179c.execute(new C9435b(aVar, status));
    }

    /* renamed from: a */
    public final void m2759a(AbstractC9227f.AbstractC9228a<RespT> aVar, Status status, C9260k0 k0Var) {
        if (!this.f36197u) {
            this.f36197u = true;
            aVar.mo271a(status, k0Var);
        }
    }

    /* renamed from: a */
    public final void m2747a(Status status, AbstractC9227f.AbstractC9228a<RespT> aVar) {
        if (this.f36196t == null) {
            this.f36196t = this.f36191o.schedule(new RunnableC9494s0(new RunnableC9437d(status)), f36176x, TimeUnit.NANOSECONDS);
            m2760a(aVar, status);
        }
    }

    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2746a(ReqT reqt) {
        C9635c.m2121b("ClientCall.sendMessage", this.f36178b);
        try {
            m2740b((C9433n<ReqT, RespT>) reqt);
            C9635c.m2119c("ClientCall.sendMessage", this.f36178b);
        } catch (Throwable th) {
            C9635c.m2119c("ClientCall.sendMessage", this.f36178b);
            throw th;
        }
    }

    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2745a(String str, Throwable th) {
        C9635c.m2121b("ClientCall.cancel", this.f36178b);
        try {
            m2739b(str, th);
            C9635c.m2119c("ClientCall.cancel", this.f36178b);
        } catch (Throwable th2) {
            C9635c.m2119c("ClientCall.cancel", this.f36178b);
            throw th2;
        }
    }

    /* renamed from: b */
    public final C9297q m2743b() {
        return m2755a(this.f36183g.m3129d(), this.f36181e.mo673d());
    }

    /* renamed from: b */
    public final void m2742b(AbstractC9227f.AbstractC9228a<RespT> aVar, C9260k0 k0Var) {
        AbstractC9270l lVar;
        C4933n.m24775b(this.f36185i == null, "Already started");
        C4933n.m24775b(!this.f36187k, "call was cancelled");
        C4933n.m24794a(aVar, "observer");
        C4933n.m24794a(k0Var, "headers");
        if (this.f36181e.mo672e()) {
            this.f36185i = C9324a1.f35926a;
            m2760a(aVar, C9294p.m2984a(this.f36181e));
            return;
        }
        String b = this.f36183g.m3132b();
        if (b != null) {
            AbstractC9270l a = this.f36194r.m2998a(b);
            lVar = a;
            if (a == null) {
                this.f36185i = C9324a1.f35926a;
                m2760a(aVar, Status.f37995m.m609b(String.format("Unable to find compressor by name %s", b)));
                return;
            }
        } else {
            lVar = AbstractC9257k.C9259b.f35812a;
        }
        m2758a(k0Var, this.f36193q, lVar, this.f36192p);
        C9297q b2 = m2743b();
        boolean z = false;
        if (b2 != null) {
            z = false;
            if (b2.m2983a()) {
                z = true;
            }
        }
        if (!z) {
            m2754a(b2, this.f36181e.mo673d(), this.f36183g.m3129d());
            if (this.f36184h) {
                this.f36185i = this.f36189m.mo383a(this.f36177a, this.f36183g, k0Var, this.f36181e);
            } else {
                AbstractC9451p a2 = this.f36189m.mo384a(new C9367g1(this.f36177a, k0Var, this.f36183g));
                Context a3 = this.f36181e.mo678a();
                try {
                    this.f36185i = a2.mo520a(this.f36177a, k0Var, this.f36183g);
                } finally {
                    this.f36181e.mo677a(a3);
                }
            }
        } else {
            this.f36185i = new C9323a0(Status.f37991i.m609b("ClientCall started after deadline exceeded: " + b2));
        }
        if (this.f36183g.m3140a() != null) {
            this.f36185i.mo2467a(this.f36183g.m3140a());
        }
        if (this.f36183g.m3127f() != null) {
            this.f36185i.mo2526b(this.f36183g.m3127f().intValue());
        }
        if (this.f36183g.m3126g() != null) {
            this.f36185i.mo2523c(this.f36183g.m3126g().intValue());
        }
        if (b2 != null) {
            this.f36185i.mo2536a(b2);
        }
        this.f36185i.mo2537a(lVar);
        boolean z2 = this.f36192p;
        if (z2) {
            this.f36185i.mo2527a(z2);
        }
        this.f36185i.mo2535a(this.f36193q);
        this.f36180d.m2860a();
        this.f36190n = new C9444g(aVar);
        this.f36185i.mo2530a(new C9438e(aVar));
        this.f36181e.m684a((Context.AbstractC10286b) this.f36190n, C5110n.m24504a());
        if (b2 != null && !b2.equals(this.f36181e.mo673d()) && this.f36191o != null && !(this.f36185i instanceof C9323a0)) {
            this.f36195s = m2756a(b2, aVar);
        }
        if (this.f36186j) {
            m2736d();
        }
    }

    /* renamed from: b */
    public final void m2740b(ReqT reqt) {
        C4933n.m24775b(this.f36185i != null, "Not started");
        C4933n.m24775b(!this.f36187k, "call was cancelled");
        C4933n.m24775b(!this.f36188l, "call was half-closed");
        try {
            if (this.f36185i instanceof AbstractC9404m1) {
                ((AbstractC9404m1) this.f36185i).m2812a((AbstractC9404m1) reqt);
            } else {
                this.f36185i.mo2529a(this.f36177a.m632a((MethodDescriptor<ReqT, RespT>) reqt));
            }
            if (!this.f36182f) {
                this.f36185i.flush();
            }
        } catch (Error e) {
            this.f36185i.mo2531a(Status.f37989g.m609b("Client sendMessage() failed with Error"));
            throw e;
        } catch (RuntimeException e2) {
            this.f36185i.mo2531a(Status.f37989g.m612a(e2).m609b("Failed to stream message"));
        }
    }

    /* renamed from: b */
    public final void m2739b(String str, Throwable th) {
        Throwable th2 = th;
        if (str == null) {
            th2 = th;
            if (th == null) {
                th2 = new CancellationException("Cancelled without a message or cause");
                f36174v.log(Level.WARNING, "Cancelling without a message or cause is suboptimal", th2);
            }
        }
        if (!this.f36187k) {
            this.f36187k = true;
            try {
                if (this.f36185i != null) {
                    Status status = Status.f37989g;
                    Status b = str != null ? status.m609b(str) : status.m609b("Call cancelled without message");
                    Status status2 = b;
                    if (th2 != null) {
                        status2 = b.m612a(th2);
                    }
                    this.f36185i.mo2531a(status2);
                }
            } finally {
                m2736d();
            }
        }
    }

    /* renamed from: c */
    public final void m2738c() {
        C4933n.m24775b(this.f36185i != null, "Not started");
        C4933n.m24775b(!this.f36187k, "call was cancelled");
        C4933n.m24775b(!this.f36188l, "call already half-closed");
        this.f36188l = true;
        this.f36185i.mo2539a();
    }

    /* renamed from: d */
    public final void m2736d() {
        this.f36181e.m685a(this.f36190n);
        ScheduledFuture<?> scheduledFuture = this.f36196t;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        ScheduledFuture<?> scheduledFuture2 = this.f36195s;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
        }
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("method", this.f36177a);
        return a.toString();
    }
}
