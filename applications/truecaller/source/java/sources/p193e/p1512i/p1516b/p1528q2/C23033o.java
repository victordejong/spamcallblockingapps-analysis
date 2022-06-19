package p193e.p1512i.p1516b.p1528q2;

import com.criteo.publisher.logging.RemoteLogRecords;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1531s2.C23073b;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1537z1.AbstractC23202u;
import s1.z.c.l;
/* renamed from: e.i.b.q2.o */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/o.class */
public class C23033o {

    /* renamed from: a */
    public final AbstractC23202u<RemoteLogRecords> f63818a;

    /* renamed from: b */
    public final C22967g f63819b;

    /* renamed from: c */
    public final C23080f f63820c;

    /* renamed from: d */
    public final C23073b f63821d;

    /* renamed from: e */
    public final Executor f63822e;

    /* renamed from: e.i.b.q2.o$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/q2/o$a.class */
    public static final class C23034a extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final AbstractC23202u<RemoteLogRecords> f63823c;

        /* renamed from: d */
        public final C22967g f63824d;

        /* renamed from: e */
        public final C23080f f63825e;

        /* renamed from: f */
        public final C23073b f63826f;

        public C23034a(AbstractC23202u<RemoteLogRecords> abstractC23202u, C22967g c22967g, C23080f c23080f, C23073b c23073b) {
            l.f(abstractC23202u, "sendingQueue");
            l.f(c22967g, "api");
            l.f(c23080f, "buildConfigWrapper");
            l.f(c23073b, "advertisingInfo");
            this.f63823c = abstractC23202u;
            this.f63824d = c22967g;
            this.f63825e = c23080f;
            this.f63826f = c23073b;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            AbstractC23202u<RemoteLogRecords> abstractC23202u = this.f63823c;
            Objects.requireNonNull(this.f63825e);
            List<RemoteLogRecords> mo7389a = abstractC23202u.mo7389a(200);
            if (mo7389a.isEmpty()) {
                return;
            }
            try {
                String m7568b = this.f63826f.m7568b();
                if (m7568b != null) {
                    for (RemoteLogRecords remoteLogRecords : mo7389a) {
                        if (remoteLogRecords.m42039a().m42036b() == null) {
                            remoteLogRecords.m42039a().m42037a(m7568b);
                        }
                    }
                }
                this.f63824d.m7608d("/inapp/logs", mo7389a);
            } catch (Throwable th) {
                for (RemoteLogRecords remoteLogRecords2 : mo7389a) {
                    this.f63823c.mo7388a((AbstractC23202u<RemoteLogRecords>) remoteLogRecords2);
                }
                throw th;
            }
        }
    }

    public C23033o(AbstractC23202u<RemoteLogRecords> abstractC23202u, C22967g c22967g, C23080f c23080f, C23073b c23073b, Executor executor) {
        l.f(abstractC23202u, "sendingQueue");
        l.f(c22967g, "api");
        l.f(c23080f, "buildConfigWrapper");
        l.f(c23073b, "advertisingInfo");
        l.f(executor, "executor");
        this.f63818a = abstractC23202u;
        this.f63819b = c22967g;
        this.f63820c = c23080f;
        this.f63821d = c23073b;
        this.f63822e = executor;
    }

    /* renamed from: a */
    public void m7578a() {
        this.f63822e.execute(new C23034a(this.f63818a, this.f63819b, this.f63820c, this.f63821d));
    }
}
