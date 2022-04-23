package p530d.p531a.p532v0;

import io.grpc.internal.GzipInflatingBuffer;
import io.grpc.internal.MessageDeframer;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9302r;
import p530d.p531a.p532v0.AbstractC9521w1;
/* renamed from: d.a.v0.f */
/* loaded from: classes2-dex2jar.jar:d/a/v0/f.class */
public class C9351f implements AbstractC9508v, MessageDeframer.AbstractC10365b {

    /* renamed from: a */
    public final MessageDeframer.AbstractC10365b f36004a;

    /* renamed from: b */
    public final MessageDeframer f36005b;

    /* renamed from: c */
    public final AbstractC9360i f36006c;

    /* renamed from: d */
    public final Queue<InputStream> f36007d = new ArrayDeque();

    /* renamed from: d.a.v0.f$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$a.class */
    public class RunnableC9352a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f36008a;

        public RunnableC9352a(int i) {
            this.f36008a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C9351f.this.f36005b.isClosed()) {
                try {
                    C9351f.this.f36005b.mo340a(this.f36008a);
                } catch (Throwable th) {
                    C9351f.this.f36004a.mo324a(th);
                    C9351f.this.f36005b.close();
                }
            }
        }
    }

    /* renamed from: d.a.v0.f$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$b.class */
    public class RunnableC9353b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9377i1 f36010a;

        public RunnableC9353b(AbstractC9377i1 i1Var) {
            this.f36010a = i1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C9351f.this.f36005b.mo338a(this.f36010a);
            } catch (Throwable th) {
                C9351f.this.mo324a(th);
                C9351f.this.f36005b.close();
            }
        }
    }

    /* renamed from: d.a.v0.f$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$c.class */
    public class RunnableC9354c implements Runnable {
        public RunnableC9354c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9351f.this.f36005b.mo341a();
        }
    }

    /* renamed from: d.a.v0.f$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$d.class */
    public class RunnableC9355d implements Runnable {
        public RunnableC9355d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9351f.this.f36005b.close();
        }
    }

    /* renamed from: d.a.v0.f$e */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$e.class */
    public class RunnableC9356e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f36014a;

        public RunnableC9356e(int i) {
            this.f36014a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9351f.this.f36004a.mo322c(this.f36014a);
        }
    }

    /* renamed from: d.a.v0.f$f */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$f.class */
    public class RunnableC9357f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f36016a;

        public RunnableC9357f(boolean z) {
            this.f36016a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9351f.this.f36004a.mo323a(this.f36016a);
        }
    }

    /* renamed from: d.a.v0.f$g */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$g.class */
    public class RunnableC9358g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Throwable f36018a;

        public RunnableC9358g(Throwable th) {
            this.f36018a = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9351f.this.f36004a.mo324a(this.f36018a);
        }
    }

    /* renamed from: d.a.v0.f$h */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$h.class */
    public class C9359h implements AbstractC9521w1.AbstractC9522a {

        /* renamed from: a */
        public final Runnable f36020a;

        /* renamed from: b */
        public boolean f36021b;

        public C9359h(Runnable runnable) {
            this.f36021b = false;
            this.f36020a = runnable;
        }

        public /* synthetic */ C9359h(C9351f fVar, Runnable runnable, RunnableC9352a aVar) {
            this(runnable);
        }

        /* renamed from: a */
        public final void m2885a() {
            if (!this.f36021b) {
                this.f36020a.run();
                this.f36021b = true;
            }
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1.AbstractC9522a
        public InputStream next() {
            m2885a();
            return (InputStream) C9351f.this.f36007d.poll();
        }
    }

    /* renamed from: d.a.v0.f$i */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/f$i.class */
    public interface AbstractC9360i {
        /* renamed from: a */
        void mo2438a(Runnable runnable);
    }

    public C9351f(MessageDeframer.AbstractC10365b bVar, AbstractC9360i iVar, MessageDeframer messageDeframer) {
        C4933n.m24794a(bVar, "listener");
        this.f36004a = bVar;
        C4933n.m24794a(iVar, "transportExecutor");
        this.f36006c = iVar;
        messageDeframer.m336a(this);
        this.f36005b = messageDeframer;
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo341a() {
        this.f36004a.mo325a(new C9359h(this, new RunnableC9354c(), null));
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo340a(int i) {
        this.f36004a.mo325a(new C9359h(this, new RunnableC9352a(i), null));
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo339a(AbstractC9302r rVar) {
        this.f36005b.mo339a(rVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo338a(AbstractC9377i1 i1Var) {
        this.f36004a.mo325a(new C9359h(this, new RunnableC9353b(i1Var), null));
    }

    @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
    /* renamed from: a */
    public void mo325a(AbstractC9521w1.AbstractC9522a aVar) {
        while (true) {
            InputStream next = aVar.next();
            if (next != null) {
                this.f36007d.add(next);
            } else {
                return;
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo337a(GzipInflatingBuffer gzipInflatingBuffer) {
        this.f36005b.mo337a(gzipInflatingBuffer);
    }

    @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
    /* renamed from: a */
    public void mo324a(Throwable th) {
        this.f36006c.mo2438a(new RunnableC9358g(th));
    }

    @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
    /* renamed from: a */
    public void mo323a(boolean z) {
        this.f36006c.mo2438a(new RunnableC9357f(z));
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: b */
    public void mo334b(int i) {
        this.f36005b.mo334b(i);
    }

    @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
    /* renamed from: c */
    public void mo322c(int i) {
        this.f36006c.mo2438a(new RunnableC9356e(i));
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    public void close() {
        this.f36005b.m326j();
        this.f36004a.mo325a(new C9359h(this, new RunnableC9355d(), null));
    }
}
