package p530d.p531a.p532v0;

import io.grpc.ConnectivityState;
import io.grpc.Status;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.C9287n;
import p530d.p531a.C9314u;
/* renamed from: d.a.v0.e1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/e1.class */
public final class C9345e1 extends AbstractC9229f0 {

    /* renamed from: b */
    public final AbstractC9229f0.AbstractC9234d f35994b;

    /* renamed from: c */
    public AbstractC9229f0.AbstractC9239h f35995c;

    /* renamed from: d.a.v0.e1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/e1$a.class */
    public class C9346a implements AbstractC9229f0.AbstractC9241j {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9229f0.AbstractC9239h f35996a;

        public C9346a(AbstractC9229f0.AbstractC9239h hVar) {
            this.f35996a = hVar;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9241j
        /* renamed from: a */
        public void mo2143a(C9287n nVar) {
            C9345e1.this.m2892a(this.f35996a, nVar);
        }
    }

    /* renamed from: d.a.v0.e1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/e1$b.class */
    public static /* synthetic */ class C9347b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f35998a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConnectivityState.values().length];
            f35998a = iArr;
            try {
                iArr[ConnectivityState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35998a[ConnectivityState.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f35998a[ConnectivityState.READY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f35998a[ConnectivityState.TRANSIENT_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: d.a.v0.e1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/e1$c.class */
    public static final class C9348c extends AbstractC9229f0.AbstractC9240i {

        /* renamed from: a */
        public final AbstractC9229f0.C9235e f35999a;

        public C9348c(AbstractC9229f0.C9235e eVar) {
            C4933n.m24794a(eVar, "result");
            this.f35999a = eVar;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9240i
        /* renamed from: a */
        public AbstractC9229f0.C9235e mo385a(AbstractC9229f0.AbstractC9236f fVar) {
            return this.f35999a;
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24821a((Class<?>) C9348c.class);
            a.m24813a("result", this.f35999a);
            return a.toString();
        }
    }

    /* renamed from: d.a.v0.e1$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/e1$d.class */
    public final class C9349d extends AbstractC9229f0.AbstractC9240i {

        /* renamed from: a */
        public final AbstractC9229f0.AbstractC9239h f36000a;

        /* renamed from: b */
        public final AtomicBoolean f36001b = new AtomicBoolean(false);

        /* renamed from: d.a.v0.e1$d$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/e1$d$a.class */
        public class RunnableC9350a implements Runnable {
            public RunnableC9350a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C9349d.this.f36000a.mo350e();
            }
        }

        public C9349d(AbstractC9229f0.AbstractC9239h hVar) {
            C4933n.m24794a(hVar, "subchannel");
            this.f36000a = hVar;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9240i
        /* renamed from: a */
        public AbstractC9229f0.C9235e mo385a(AbstractC9229f0.AbstractC9236f fVar) {
            if (this.f36001b.compareAndSet(false, true)) {
                C9345e1.this.f35994b.mo368b().execute(new RunnableC9350a());
            }
            return AbstractC9229f0.C9235e.m3102e();
        }
    }

    public C9345e1(AbstractC9229f0.AbstractC9234d dVar) {
        C4933n.m24794a(dVar, "helper");
        this.f35994b = dVar;
    }

    @Override // p530d.p531a.AbstractC9229f0
    /* renamed from: a */
    public void mo584a(AbstractC9229f0.C9237g gVar) {
        List<C9314u> a = gVar.m3101a();
        AbstractC9229f0.AbstractC9239h hVar = this.f35995c;
        if (hVar == null) {
            AbstractC9229f0.AbstractC9234d dVar = this.f35994b;
            AbstractC9229f0.C9231b.C9232a c = AbstractC9229f0.C9231b.m3115c();
            c.m3111a(a);
            AbstractC9229f0.AbstractC9239h a2 = dVar.mo370a(c.m3114a());
            a2.mo357a(new C9346a(a2));
            this.f35995c = a2;
            this.f35994b.mo369a(ConnectivityState.CONNECTING, new C9348c(AbstractC9229f0.C9235e.m3109a(a2)));
            a2.mo350e();
            return;
        }
        hVar.mo355a(a);
    }

    /* renamed from: a */
    public final void m2892a(AbstractC9229f0.AbstractC9239h hVar, C9287n nVar) {
        AbstractC9229f0.AbstractC9240i iVar;
        ConnectivityState a = nVar.m2997a();
        if (a != ConnectivityState.SHUTDOWN) {
            int i = C9347b.f35998a[a.ordinal()];
            if (i == 1) {
                iVar = new C9349d(hVar);
            } else if (i == 2) {
                iVar = new C9348c(AbstractC9229f0.C9235e.m3102e());
            } else if (i == 3) {
                iVar = new C9348c(AbstractC9229f0.C9235e.m3109a(hVar));
            } else if (i == 4) {
                iVar = new C9348c(AbstractC9229f0.C9235e.m3105b(nVar.m2994b()));
            } else {
                throw new IllegalArgumentException("Unsupported state:" + a);
            }
            this.f35994b.mo369a(a, iVar);
        }
    }

    @Override // p530d.p531a.AbstractC9229f0
    /* renamed from: a */
    public void mo583a(Status status) {
        AbstractC9229f0.AbstractC9239h hVar = this.f35995c;
        if (hVar != null) {
            hVar.mo349f();
            this.f35995c = null;
        }
        this.f35994b.mo369a(ConnectivityState.TRANSIENT_FAILURE, new C9348c(AbstractC9229f0.C9235e.m3105b(status)));
    }

    @Override // p530d.p531a.AbstractC9229f0
    /* renamed from: b */
    public void mo582b() {
        AbstractC9229f0.AbstractC9239h hVar = this.f35995c;
        if (hVar != null) {
            hVar.mo349f();
        }
    }
}
