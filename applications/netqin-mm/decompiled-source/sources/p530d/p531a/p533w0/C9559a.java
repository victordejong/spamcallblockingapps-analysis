package p530d.p531a.p533w0;

import java.io.IOException;
import java.net.Socket;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p532v0.ExecutorC9472p1;
import p530d.p531a.p533w0.C9564b;
import p530d.p540b.C9634b;
import p530d.p540b.C9635c;
import p610i.AbstractC10280p;
import p610i.C10260c;
import p610i.C10282r;
/* renamed from: d.a.w0.a */
/* loaded from: classes2-dex2jar.jar:d/a/w0/a.class */
public final class C9559a implements AbstractC10280p {

    /* renamed from: c */
    public final ExecutorC9472p1 f36466c;

    /* renamed from: d */
    public final C9564b.AbstractC9565a f36467d;

    /* renamed from: h */
    public AbstractC10280p f36471h;

    /* renamed from: i */
    public Socket f36472i;

    /* renamed from: a */
    public final Object f36464a = new Object();

    /* renamed from: b */
    public final C10260c f36465b = new C10260c();

    /* renamed from: e */
    public boolean f36468e = false;

    /* renamed from: f */
    public boolean f36469f = false;

    /* renamed from: g */
    public boolean f36470g = false;

    /* renamed from: d.a.w0.a$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/a$a.class */
    public class C9560a extends AbstractRunnableC9563d {

        /* renamed from: b */
        public final C9634b f36473b = C9635c.m2127a();

        public C9560a() {
            super(C9559a.this, null);
        }

        @Override // p530d.p531a.p533w0.C9559a.AbstractRunnableC9563d
        /* renamed from: a */
        public void mo2475a() throws IOException {
            C9635c.m2122b("WriteRunnable.runWrite");
            C9635c.m2126a(this.f36473b);
            C10260c cVar = new C10260c();
            try {
                synchronized (C9559a.this.f36464a) {
                    cVar.mo706a(C9559a.this.f36465b, C9559a.this.f36465b.m771e());
                    C9559a.this.f36468e = false;
                }
                C9559a.this.f36471h.mo706a(cVar, cVar.size());
                C9635c.m2120c("WriteRunnable.runWrite");
            } catch (Throwable th) {
                C9635c.m2120c("WriteRunnable.runWrite");
                throw th;
            }
        }
    }

    /* renamed from: d.a.w0.a$b */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/a$b.class */
    public class C9561b extends AbstractRunnableC9563d {

        /* renamed from: b */
        public final C9634b f36475b = C9635c.m2127a();

        public C9561b() {
            super(C9559a.this, null);
        }

        @Override // p530d.p531a.p533w0.C9559a.AbstractRunnableC9563d
        /* renamed from: a */
        public void mo2475a() throws IOException {
            C9635c.m2122b("WriteRunnable.runFlush");
            C9635c.m2126a(this.f36475b);
            C10260c cVar = new C10260c();
            try {
                synchronized (C9559a.this.f36464a) {
                    cVar.mo706a(C9559a.this.f36465b, C9559a.this.f36465b.size());
                    C9559a.this.f36469f = false;
                }
                C9559a.this.f36471h.mo706a(cVar, cVar.size());
                C9559a.this.f36471h.flush();
                C9635c.m2120c("WriteRunnable.runFlush");
            } catch (Throwable th) {
                C9635c.m2120c("WriteRunnable.runFlush");
                throw th;
            }
        }
    }

    /* renamed from: d.a.w0.a$c */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/a$c.class */
    public class RunnableC9562c implements Runnable {
        public RunnableC9562c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9559a.this.f36465b.close();
            try {
                if (C9559a.this.f36471h != null) {
                    C9559a.this.f36471h.close();
                }
            } catch (IOException e) {
                C9559a.this.f36467d.mo2410a(e);
            }
            try {
                if (C9559a.this.f36472i != null) {
                    C9559a.this.f36472i.close();
                }
            } catch (IOException e2) {
                C9559a.this.f36467d.mo2410a(e2);
            }
        }
    }

    /* renamed from: d.a.w0.a$d */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/a$d.class */
    public abstract class AbstractRunnableC9563d implements Runnable {
        public AbstractRunnableC9563d() {
        }

        public /* synthetic */ AbstractRunnableC9563d(C9559a aVar, C9560a aVar2) {
            this();
        }

        /* renamed from: a */
        public abstract void mo2475a() throws IOException;

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (C9559a.this.f36471h != null) {
                    mo2475a();
                    return;
                }
                throw new IOException("Unable to perform write due to unavailable sink.");
            } catch (Exception e) {
                C9559a.this.f36467d.mo2410a(e);
            }
        }
    }

    public C9559a(ExecutorC9472p1 p1Var, C9564b.AbstractC9565a aVar) {
        C4933n.m24794a(p1Var, "executor");
        this.f36466c = p1Var;
        C4933n.m24794a(aVar, "exceptionHandler");
        this.f36467d = aVar;
    }

    /* renamed from: a */
    public static C9559a m2484a(ExecutorC9472p1 p1Var, C9564b.AbstractC9565a aVar) {
        return new C9559a(p1Var, aVar);
    }

    @Override // p610i.AbstractC10280p
    /* renamed from: a */
    public void mo706a(C10260c cVar, long j) throws IOException {
        C4933n.m24794a(cVar, "source");
        if (!this.f36470g) {
            C9635c.m2122b("AsyncSink.write");
            try {
                synchronized (this.f36464a) {
                    this.f36465b.mo706a(cVar, j);
                    if (!this.f36468e && !this.f36469f && this.f36465b.m771e() > 0) {
                        this.f36468e = true;
                        this.f36466c.execute(new C9560a());
                        C9635c.m2120c("AsyncSink.write");
                        return;
                    }
                    C9635c.m2120c("AsyncSink.write");
                }
            } catch (Throwable th) {
                C9635c.m2120c("AsyncSink.write");
                throw th;
            }
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: a */
    public void m2481a(AbstractC10280p pVar, Socket socket) {
        C4933n.m24775b(this.f36471h == null, "AsyncSink's becomeConnected should only be called once.");
        C4933n.m24794a(pVar, "sink");
        this.f36471h = pVar;
        C4933n.m24794a(socket, "socket");
        this.f36472i = socket;
    }

    @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f36470g) {
            this.f36470g = true;
            this.f36466c.execute(new RunnableC9562c());
        }
    }

    @Override // p610i.AbstractC10280p
    /* renamed from: f0 */
    public C10282r mo705f0() {
        return C10282r.f37926d;
    }

    @Override // p610i.AbstractC10280p, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f36470g) {
            C9635c.m2122b("AsyncSink.flush");
            try {
                synchronized (this.f36464a) {
                    if (this.f36469f) {
                        C9635c.m2120c("AsyncSink.flush");
                        return;
                    }
                    this.f36469f = true;
                    this.f36466c.execute(new C9561b());
                    C9635c.m2120c("AsyncSink.flush");
                }
            } catch (Throwable th) {
                C9635c.m2120c("AsyncSink.flush");
                throw th;
            }
        } else {
            throw new IOException("closed");
        }
    }
}
