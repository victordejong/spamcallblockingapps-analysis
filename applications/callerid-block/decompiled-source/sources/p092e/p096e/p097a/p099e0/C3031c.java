package p092e.p096e.p097a.p099e0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.liulishuo.filedownloader.model.C2774a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3063e;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: e.e.a.e0.c */
/* loaded from: classes2-dex2jar.jar:e/e/a/e0/c.class */
public class C3031c implements AbstractC3026a {

    /* renamed from: c */
    private Handler f12654c;

    /* renamed from: g */
    private volatile Thread f12658g;

    /* renamed from: e */
    private final List<Integer> f12656e = new ArrayList();

    /* renamed from: f */
    private AtomicInteger f12657f = new AtomicInteger();

    /* renamed from: a */
    private final C3028b f12652a = new C3028b();

    /* renamed from: b */
    private final C3033d f12653b = new C3033d();

    /* renamed from: d */
    private final long f12655d = C3063e.m405a().f12684b;

    /* renamed from: e.e.a.e0.c$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/e0/c$a.class */
    class C3032a implements Handler.Callback {
        C3032a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                try {
                    C3031c.this.f12657f.set(i);
                    C3031c.this.m501y(i);
                    C3031c.this.f12656e.add(Integer.valueOf(i));
                    C3031c.this.f12657f.set(0);
                    if (C3031c.this.f12658g == null) {
                        return false;
                    }
                    LockSupport.unpark(C3031c.this.f12658g);
                    C3031c.this.f12658g = null;
                    return false;
                } catch (Throwable th) {
                    C3031c.this.f12657f.set(0);
                    if (C3031c.this.f12658g != null) {
                        LockSupport.unpark(C3031c.this.f12658g);
                        C3031c.this.f12658g = null;
                    }
                    throw th;
                }
            } else if (C3031c.this.f12658g == null) {
                return false;
            } else {
                LockSupport.unpark(C3031c.this.f12658g);
                C3031c.this.f12658g = null;
                return false;
            }
        }
    }

    public C3031c() {
        HandlerThread handlerThread = new HandlerThread(C3066f.m399D("RemitHandoverToDB"));
        handlerThread.start();
        this.f12654c = new Handler(handlerThread.getLooper(), new C3032a());
    }

    /* renamed from: w */
    private void m503w(int i) {
        this.f12654c.removeMessages(i);
        if (this.f12657f.get() == i) {
            this.f12658g = Thread.currentThread();
            this.f12654c.sendEmptyMessage(0);
            LockSupport.park();
            return;
        }
        m501y(i);
    }

    /* renamed from: x */
    private boolean m502x(int i) {
        return !this.f12656e.contains(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public void m501y(int i) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "sync cache to db %d", Integer.valueOf(i));
        }
        this.f12653b.mo493h(this.f12652a.mo486o(i));
        List<C2774a> n = this.f12652a.mo487n(i);
        this.f12653b.mo498c(i);
        for (C2774a aVar : n) {
            this.f12653b.mo499b(aVar);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: a */
    public void mo500a(int i) {
        this.f12652a.mo500a(i);
        if (!m502x(i)) {
            this.f12653b.mo500a(i);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: b */
    public void mo499b(C2774a aVar) {
        this.f12652a.mo499b(aVar);
        if (!m502x(aVar.m1789c())) {
            this.f12653b.mo499b(aVar);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: c */
    public void mo498c(int i) {
        this.f12652a.mo498c(i);
        if (!m502x(i)) {
            this.f12653b.mo498c(i);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    public void clear() {
        this.f12652a.clear();
        this.f12653b.clear();
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: d */
    public AbstractC3026a.AbstractC3027a mo497d() {
        C3033d dVar = this.f12653b;
        C3028b bVar = this.f12652a;
        return dVar.m479v(bVar.f12649a, bVar.f12650b);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: e */
    public void mo496e(int i, Throwable th) {
        this.f12652a.mo496e(i, th);
        if (!m502x(i)) {
            this.f12653b.mo496e(i, th);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: f */
    public void mo495f(int i) {
        this.f12654c.sendEmptyMessageDelayed(i, this.f12655d);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: g */
    public void mo494g(int i, long j) {
        this.f12652a.mo494g(i, j);
        if (m502x(i)) {
            this.f12654c.removeMessages(i);
            if (this.f12657f.get() == i) {
                this.f12658g = Thread.currentThread();
                this.f12654c.sendEmptyMessage(0);
                LockSupport.park();
            }
            this.f12656e.remove(Integer.valueOf(i));
        }
        this.f12653b.mo494g(i, j);
        this.f12656e.remove(Integer.valueOf(i));
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: h */
    public void mo493h(FileDownloadModel fileDownloadModel) {
        this.f12652a.mo493h(fileDownloadModel);
        if (!m502x(fileDownloadModel.m1813e())) {
            this.f12653b.mo493h(fileDownloadModel);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: i */
    public void mo492i(int i, Throwable th, long j) {
        this.f12652a.mo492i(i, th, j);
        if (m502x(i)) {
            m503w(i);
        }
        this.f12653b.mo492i(i, th, j);
        this.f12656e.remove(Integer.valueOf(i));
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: j */
    public void mo491j(int i, String str, long j, long j2, int i2) {
        this.f12652a.mo491j(i, str, j, j2, i2);
        if (!m502x(i)) {
            this.f12653b.mo491j(i, str, j, j2, i2);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: k */
    public void mo490k(int i, int i2, long j) {
        this.f12652a.mo490k(i, i2, j);
        if (!m502x(i)) {
            this.f12653b.mo490k(i, i2, j);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: l */
    public void mo489l(int i, long j) {
        this.f12652a.mo489l(i, j);
        if (!m502x(i)) {
            this.f12653b.mo489l(i, j);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: m */
    public void mo488m(int i, long j, String str, String str2) {
        this.f12652a.mo488m(i, j, str, str2);
        if (!m502x(i)) {
            this.f12653b.mo488m(i, j, str, str2);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: n */
    public List<C2774a> mo487n(int i) {
        return this.f12652a.mo487n(i);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: o */
    public FileDownloadModel mo486o(int i) {
        return this.f12652a.mo486o(i);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: p */
    public void mo485p(int i, int i2) {
        this.f12652a.mo485p(i, i2);
        if (!m502x(i)) {
            this.f12653b.mo485p(i, i2);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: q */
    public void mo484q(int i, long j) {
        this.f12652a.mo484q(i, j);
        if (m502x(i)) {
            m503w(i);
        }
        this.f12653b.mo484q(i, j);
        this.f12656e.remove(Integer.valueOf(i));
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    public boolean remove(int i) {
        this.f12653b.remove(i);
        return this.f12652a.remove(i);
    }
}
