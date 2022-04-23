package io.grpc.internal;

import io.grpc.Status;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4938q;
import p131c.p161d.p266c.p275i.p276a.C5110n;
import p530d.p531a.p532v0.AbstractC9451p;
import p530d.p531a.p532v0.AbstractC9493s;
import p530d.p531a.p532v0.RunnableC9494s0;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/KeepAliveManager.class */
public class KeepAliveManager {

    /* renamed from: a */
    public final ScheduledExecutorService f38092a;

    /* renamed from: b */
    public final C4938q f38093b;

    /* renamed from: c */
    public final AbstractC10335d f38094c;

    /* renamed from: d */
    public final boolean f38095d;

    /* renamed from: e */
    public State f38096e;

    /* renamed from: f */
    public ScheduledFuture<?> f38097f;

    /* renamed from: g */
    public ScheduledFuture<?> f38098g;

    /* renamed from: h */
    public final Runnable f38099h;

    /* renamed from: i */
    public final Runnable f38100i;

    /* renamed from: j */
    public final long f38101j;

    /* renamed from: k */
    public final long f38102k;

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/KeepAliveManager$State.class */
    public enum State {
        IDLE,
        PING_SCHEDULED,
        PING_DELAYED,
        PING_SENT,
        IDLE_AND_PING_SENT,
        DISCONNECTED
    }

    /* renamed from: io.grpc.internal.KeepAliveManager$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/KeepAliveManager$a.class */
    public class RunnableC10331a implements Runnable {
        public RunnableC10331a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            synchronized (KeepAliveManager.this) {
                if (KeepAliveManager.this.f38096e != State.DISCONNECTED) {
                    KeepAliveManager.this.f38096e = State.DISCONNECTED;
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z) {
                KeepAliveManager.this.f38094c.mo459a();
            }
        }
    }

    /* renamed from: io.grpc.internal.KeepAliveManager$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/KeepAliveManager$b.class */
    public class RunnableC10332b implements Runnable {
        public RunnableC10332b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            synchronized (KeepAliveManager.this) {
                KeepAliveManager.this.f38098g = null;
                if (KeepAliveManager.this.f38096e == State.PING_SCHEDULED) {
                    z = true;
                    KeepAliveManager.this.f38096e = State.PING_SENT;
                    KeepAliveManager.this.f38097f = KeepAliveManager.this.f38092a.schedule(KeepAliveManager.this.f38099h, KeepAliveManager.this.f38102k, TimeUnit.NANOSECONDS);
                } else {
                    if (KeepAliveManager.this.f38096e == State.PING_DELAYED) {
                        KeepAliveManager.this.f38098g = KeepAliveManager.this.f38092a.schedule(KeepAliveManager.this.f38100i, KeepAliveManager.this.f38101j - KeepAliveManager.this.f38093b.m24763a(TimeUnit.NANOSECONDS), TimeUnit.NANOSECONDS);
                        KeepAliveManager.this.f38096e = State.PING_SCHEDULED;
                    }
                    z = false;
                }
            }
            if (z) {
                KeepAliveManager.this.f38094c.mo458b();
            }
        }
    }

    /* renamed from: io.grpc.internal.KeepAliveManager$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/KeepAliveManager$c.class */
    public static final class C10333c implements AbstractC10335d {

        /* renamed from: a */
        public final AbstractC9493s f38105a;

        /* renamed from: io.grpc.internal.KeepAliveManager$c$a */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/KeepAliveManager$c$a.class */
        public class C10334a implements AbstractC9451p.AbstractC9452a {
            public C10334a() {
            }

            @Override // p530d.p531a.p532v0.AbstractC9451p.AbstractC9452a
            /* renamed from: a */
            public void mo461a(long j) {
            }

            @Override // p530d.p531a.p532v0.AbstractC9451p.AbstractC9452a
            /* renamed from: a */
            public void mo460a(Throwable th) {
                C10333c.this.f38105a.mo2402b(Status.f37996n.m609b("Keepalive failed. The connection is likely gone"));
            }
        }

        public C10333c(AbstractC9493s sVar) {
            this.f38105a = sVar;
        }

        @Override // io.grpc.internal.KeepAliveManager.AbstractC10335d
        /* renamed from: a */
        public void mo459a() {
            this.f38105a.mo2402b(Status.f37996n.m609b("Keepalive failed. The connection is likely gone"));
        }

        @Override // io.grpc.internal.KeepAliveManager.AbstractC10335d
        /* renamed from: b */
        public void mo458b() {
            this.f38105a.mo521a(new C10334a(), C5110n.m24504a());
        }
    }

    /* renamed from: io.grpc.internal.KeepAliveManager$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/KeepAliveManager$d.class */
    public interface AbstractC10335d {
        /* renamed from: a */
        void mo459a();

        /* renamed from: b */
        void mo458b();
    }

    static {
        TimeUnit.SECONDS.toNanos(10L);
        TimeUnit.MILLISECONDS.toNanos(10L);
    }

    public KeepAliveManager(AbstractC10335d dVar, ScheduledExecutorService scheduledExecutorService, long j, long j2, boolean z) {
        this(dVar, scheduledExecutorService, C4938q.m24757f(), j, j2, z);
    }

    public KeepAliveManager(AbstractC10335d dVar, ScheduledExecutorService scheduledExecutorService, C4938q qVar, long j, long j2, boolean z) {
        this.f38096e = State.IDLE;
        this.f38099h = new RunnableC9494s0(new RunnableC10331a());
        this.f38100i = new RunnableC9494s0(new RunnableC10332b());
        C4933n.m24794a(dVar, "keepAlivePinger");
        this.f38094c = dVar;
        C4933n.m24794a(scheduledExecutorService, "scheduler");
        this.f38092a = scheduledExecutorService;
        C4933n.m24794a(qVar, "stopwatch");
        this.f38093b = qVar;
        this.f38101j = j;
        this.f38102k = j2;
        this.f38095d = z;
        qVar.m24762b();
        qVar.m24760c();
    }

    /* renamed from: a */
    public void m478a() {
        synchronized (this) {
            C4938q qVar = this.f38093b;
            qVar.m24762b();
            qVar.m24760c();
            if (this.f38096e == State.PING_SCHEDULED) {
                this.f38096e = State.PING_DELAYED;
            } else if (this.f38096e == State.PING_SENT || this.f38096e == State.IDLE_AND_PING_SENT) {
                boolean z = false;
                if (this.f38097f != null) {
                    this.f38097f.cancel(false);
                }
                if (this.f38096e == State.IDLE_AND_PING_SENT) {
                    this.f38096e = State.IDLE;
                    return;
                }
                this.f38096e = State.PING_SCHEDULED;
                if (this.f38098g == null) {
                    z = true;
                }
                C4933n.m24775b(z, "There should be no outstanding pingFuture");
                this.f38098g = this.f38092a.schedule(this.f38100i, this.f38101j, TimeUnit.NANOSECONDS);
            }
        }
    }

    /* renamed from: b */
    public void m474b() {
        synchronized (this) {
            if (this.f38096e == State.IDLE) {
                this.f38096e = State.PING_SCHEDULED;
                if (this.f38098g == null) {
                    this.f38098g = this.f38092a.schedule(this.f38100i, this.f38101j - this.f38093b.m24763a(TimeUnit.NANOSECONDS), TimeUnit.NANOSECONDS);
                }
            } else if (this.f38096e == State.IDLE_AND_PING_SENT) {
                this.f38096e = State.PING_SENT;
            }
        }
    }

    /* renamed from: c */
    public void m471c() {
        synchronized (this) {
            if (!this.f38095d) {
                if (this.f38096e == State.PING_SCHEDULED || this.f38096e == State.PING_DELAYED) {
                    this.f38096e = State.IDLE;
                }
                if (this.f38096e == State.PING_SENT) {
                    this.f38096e = State.IDLE_AND_PING_SENT;
                }
            }
        }
    }

    /* renamed from: d */
    public void m469d() {
        synchronized (this) {
            if (this.f38095d) {
                m474b();
            }
        }
    }

    /* renamed from: e */
    public void m467e() {
        synchronized (this) {
            if (this.f38096e != State.DISCONNECTED) {
                this.f38096e = State.DISCONNECTED;
                if (this.f38097f != null) {
                    this.f38097f.cancel(false);
                }
                if (this.f38098g != null) {
                    this.f38098g.cancel(false);
                    this.f38098g = null;
                }
            }
        }
    }
}
