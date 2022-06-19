package androidx.media2.exoplayer.external;

import android.os.Handler;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.af */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/af.class */
public final class C1372af {

    /* renamed from: a */
    final AbstractC1374b f5140a;

    /* renamed from: b */
    final AbstractC1383al f5141b;

    /* renamed from: c */
    int f5142c;

    /* renamed from: d */
    Object f5143d;

    /* renamed from: e */
    Handler f5144e;

    /* renamed from: f */
    int f5145f;

    /* renamed from: g */
    long f5146g = -9223372036854775807L;

    /* renamed from: h */
    boolean f5147h = true;

    /* renamed from: i */
    private final AbstractC1373a f5148i;

    /* renamed from: j */
    private boolean f5149j;

    /* renamed from: k */
    private boolean f5150k;

    /* renamed from: l */
    private boolean f5151l;

    /* renamed from: m */
    private boolean f5152m;

    /* renamed from: androidx.media2.exoplayer.external.af$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/af$a.class */
    public interface AbstractC1373a {
        /* renamed from: a */
        void mo41809a(C1372af c1372af);
    }

    /* renamed from: androidx.media2.exoplayer.external.af$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/af$b.class */
    public interface AbstractC1374b {
        /* renamed from: a */
        void mo41430a(int i, Object obj) throws ExoPlaybackException;
    }

    public C1372af(AbstractC1373a abstractC1373a, AbstractC1374b abstractC1374b, AbstractC1383al abstractC1383al, int i, Handler handler) {
        this.f5148i = abstractC1373a;
        this.f5140a = abstractC1374b;
        this.f5141b = abstractC1383al;
        this.f5144e = handler;
        this.f5145f = i;
    }

    /* renamed from: a */
    public final C1372af m43130a() {
        C1993a.m41686b(!this.f5149j);
        if (this.f5146g == -9223372036854775807L) {
            C1993a.m41688a(this.f5147h);
        }
        this.f5149j = true;
        this.f5148i.mo41809a(this);
        return this;
    }

    /* renamed from: a */
    public final C1372af m43129a(int i) {
        C1993a.m41686b(!this.f5149j);
        this.f5142c = i;
        return this;
    }

    /* renamed from: a */
    public final C1372af m43128a(Object obj) {
        C1993a.m41686b(!this.f5149j);
        this.f5143d = obj;
        return this;
    }

    /* renamed from: a */
    public final void m43127a(boolean z) {
        synchronized (this) {
            this.f5150k = z | this.f5150k;
            this.f5151l = true;
            notifyAll();
        }
    }

    /* renamed from: b */
    public final boolean m43126b() {
        boolean z;
        synchronized (this) {
            z = this.f5152m;
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m43125c() throws InterruptedException {
        boolean z;
        synchronized (this) {
            C1993a.m41686b(this.f5149j);
            C1993a.m41686b(this.f5144e.getLooper().getThread() != Thread.currentThread());
            while (!this.f5151l) {
                wait();
            }
            z = this.f5150k;
        }
        return z;
    }
}
