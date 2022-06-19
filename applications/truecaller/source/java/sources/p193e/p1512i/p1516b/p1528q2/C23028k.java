package p193e.p1512i.p1516b.p1528q2;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.criteo.publisher.logging.RemoteLogRecords;
import java.util.concurrent.Executor;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1523l2.C22977a;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1512i.p1516b.p1537z1.AbstractC23202u;
import s1.z.c.l;
/* renamed from: e.i.b.q2.k */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/k.class */
public class C23028k implements AbstractC23018e {

    /* renamed from: a */
    public final C23030l f63801a;

    /* renamed from: b */
    public final AbstractC23202u<RemoteLogRecords> f63802b;

    /* renamed from: c */
    public final C23132x f63803c;

    /* renamed from: d */
    public final Executor f63804d;

    /* renamed from: e */
    public final C22977a f63805e;

    /* renamed from: e.i.b.q2.k$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/q2/k$a.class */
    public static final class C23029a extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ RemoteLogRecords f63806c;

        /* renamed from: d */
        public final /* synthetic */ C23028k f63807d;

        public C23029a(RemoteLogRecords remoteLogRecords, C23028k c23028k) {
            this.f63806c = remoteLogRecords;
            this.f63807d = c23028k;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            this.f63807d.f63802b.mo7388a((AbstractC23202u<RemoteLogRecords>) this.f63806c);
        }
    }

    public C23028k(C23030l c23030l, AbstractC23202u<RemoteLogRecords> abstractC23202u, C23132x c23132x, Executor executor, C22977a c22977a) {
        l.f(c23030l, "remoteLogRecordsFactory");
        l.f(abstractC23202u, "sendingQueue");
        l.f(c23132x, DTBMetricsConfiguration.CONFIG_DIR);
        l.f(executor, "executor");
        l.f(c22977a, "consentData");
        this.f63801a = c23030l;
        this.f63802b = abstractC23202u;
        this.f63803c = c23132x;
        this.f63804d = executor;
        this.f63805e = c22977a;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p1512i.p1516b.p1528q2.AbstractC23018e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7579a(java.lang.String r14, p193e.p1512i.p1516b.p1528q2.C23019f r15) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1528q2.C23028k.mo7579a(java.lang.String, e.i.b.q2.f):void");
    }
}
