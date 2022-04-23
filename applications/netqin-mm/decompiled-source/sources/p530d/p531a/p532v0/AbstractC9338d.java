package p530d.p531a.p532v0;

import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.GzipInflatingBuffer;
import io.grpc.internal.MessageDeframer;
import java.io.InputStream;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9257k;
import p530d.p531a.AbstractC9270l;
import p530d.p531a.AbstractC9302r;
import p530d.p531a.p532v0.AbstractC9521w1;
import p530d.p531a.p532v0.C9351f;
/* renamed from: d.a.v0.d */
/* loaded from: classes2-dex2jar.jar:d/a/v0/d.class */
public abstract class AbstractC9338d implements AbstractC9511v1 {

    /* renamed from: d.a.v0.d$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/d$a.class */
    public static abstract class AbstractC9339a implements C9351f.AbstractC9360i, MessageDeframer.AbstractC10365b {

        /* renamed from: a */
        public AbstractC9508v f35985a;

        /* renamed from: b */
        public final Object f35986b = new Object();

        /* renamed from: c */
        public final C9325a2 f35987c;

        /* renamed from: d */
        public int f35988d;

        /* renamed from: e */
        public boolean f35989e;

        /* renamed from: f */
        public boolean f35990f;

        public AbstractC9339a(int i, C9507u1 u1Var, C9325a2 a2Var) {
            C4933n.m24794a(u1Var, "statsTraceCtx");
            C4933n.m24794a(a2Var, "transportTracer");
            this.f35987c = a2Var;
            this.f35985a = new MessageDeframer(this, AbstractC9257k.C9259b.f35812a, i, u1Var, a2Var);
        }

        /* renamed from: a */
        public C9325a2 m2907a() {
            return this.f35987c;
        }

        /* renamed from: a */
        public final void m2906a(int i) {
            synchronized (this.f35986b) {
                this.f35988d += i;
            }
        }

        /* renamed from: a */
        public final void m2905a(AbstractC9302r rVar) {
            this.f35985a.mo339a(rVar);
        }

        /* renamed from: a */
        public final void m2903a(AbstractC9377i1 i1Var) {
            try {
                this.f35985a.mo338a(i1Var);
            } catch (Throwable th) {
                mo324a(th);
            }
        }

        @Override // io.grpc.internal.MessageDeframer.AbstractC10365b
        /* renamed from: a */
        public void mo325a(AbstractC9521w1.AbstractC9522a aVar) {
            mo2898c().mo2521a(aVar);
        }

        /* renamed from: a */
        public void m2902a(GzipInflatingBuffer gzipInflatingBuffer) {
            this.f35985a.mo337a(gzipInflatingBuffer);
            this.f35985a = new C9351f(this, this, (MessageDeframer) this.f35985a);
        }

        /* renamed from: b */
        public final void m2900b(int i) {
            boolean z;
            synchronized (this.f35986b) {
                C4933n.m24775b(this.f35989e, "onStreamAllocated was not called, but it seems the stream is active");
                z = true;
                boolean z2 = this.f35988d < 32768;
                int i2 = this.f35988d - i;
                this.f35988d = i2;
                boolean z3 = i2 < 32768;
                if (z2 || !z3) {
                    z = false;
                }
            }
            if (z) {
                m2897d();
            }
        }

        /* renamed from: b */
        public final void m2899b(boolean z) {
            if (z) {
                this.f35985a.close();
            } else {
                this.f35985a.mo341a();
            }
        }

        /* renamed from: b */
        public final boolean m2901b() {
            boolean z;
            synchronized (this.f35986b) {
                z = this.f35989e && this.f35988d < 32768 && !this.f35990f;
            }
            return z;
        }

        /* renamed from: c */
        public abstract AbstractC9521w1 mo2898c();

        /* renamed from: d */
        public final void m2897d() {
            boolean b;
            synchronized (this.f35986b) {
                b = m2901b();
            }
            if (b) {
                mo2898c().mo2522a();
            }
        }

        /* renamed from: d */
        public final void m2896d(int i) {
            try {
                this.f35985a.mo340a(i);
            } catch (Throwable th) {
                mo324a(th);
            }
        }

        /* renamed from: e */
        public void mo2434e() {
            boolean z = false;
            C4933n.m24776b(mo2898c() != null);
            synchronized (this.f35986b) {
                if (!this.f35989e) {
                    z = true;
                }
                C4933n.m24775b(z, "Already allocated");
                this.f35989e = true;
            }
            m2897d();
        }

        /* renamed from: e */
        public final void m2895e(int i) {
            this.f35985a.mo334b(i);
        }

        /* renamed from: f */
        public final void m2894f() {
            synchronized (this.f35986b) {
                this.f35990f = true;
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public final void mo2537a(AbstractC9270l lVar) {
        AbstractC9376i0 d = mo2909d();
        C4933n.m24794a(lVar, "compressor");
        d.mo2513a(lVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public final void mo2529a(InputStream inputStream) {
        C4933n.m24794a(inputStream, AvidVideoPlaybackListenerImpl.MESSAGE);
        try {
            if (!mo2909d().isClosed()) {
                mo2909d().mo2509a(inputStream);
            }
        } finally {
            GrpcUtil.m531a(inputStream);
        }
    }

    /* renamed from: c */
    public final void m2910c() {
        mo2909d().close();
    }

    /* renamed from: d */
    public abstract AbstractC9376i0 mo2909d();

    /* renamed from: d */
    public final void m2908d(int i) {
        mo2461e().m2906a(i);
    }

    /* renamed from: e */
    public abstract AbstractC9339a mo2461e();

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    public final void flush() {
        if (!mo2909d().isClosed()) {
            mo2909d().flush();
        }
    }
}
