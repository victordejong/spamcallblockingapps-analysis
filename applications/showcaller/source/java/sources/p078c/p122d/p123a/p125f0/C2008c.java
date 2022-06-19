package p078c.p122d.p123a.p125f0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.liulishuo.filedownloader.model.C9379a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2037e;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: c.d.a.f0.c */
/* loaded from: classes2-dex2jar.jar:c/d/a/f0/c.class */
public class C2008c implements AbstractC2003a {

    /* renamed from: c */
    private Handler f7123c;

    /* renamed from: g */
    private volatile Thread f7127g;

    /* renamed from: e */
    private final List<Integer> f7125e = new ArrayList();

    /* renamed from: f */
    private AtomicInteger f7126f = new AtomicInteger();

    /* renamed from: a */
    private final C2005b f7121a = new C2005b();

    /* renamed from: b */
    private final C2010d f7122b = new C2010d();

    /* renamed from: d */
    private final long f7124d = C2037e.m28244a().f7153b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.d.a.f0.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/f0/c$a.class */
    public class C2009a implements Handler.Callback {
        C2009a() {
            C2008c.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                if (C2008c.this.f7127g == null) {
                    return false;
                }
                LockSupport.unpark(C2008c.this.f7127g);
                C2008c.this.f7127g = null;
                return false;
            }
            try {
                C2008c.this.f7126f.set(i);
                C2008c.this.m28325y(i);
                C2008c.this.f7125e.add(Integer.valueOf(i));
                C2008c.this.f7126f.set(0);
                if (C2008c.this.f7127g == null) {
                    return false;
                }
                LockSupport.unpark(C2008c.this.f7127g);
                C2008c.this.f7127g = null;
                return false;
            } catch (Throwable th) {
                C2008c.this.f7126f.set(0);
                if (C2008c.this.f7127g != null) {
                    LockSupport.unpark(C2008c.this.f7127g);
                    C2008c.this.f7127g = null;
                }
                throw th;
            }
        }
    }

    public C2008c() {
        HandlerThread handlerThread = new HandlerThread(C2040f.m28238D("RemitHandoverToDB"));
        handlerThread.start();
        this.f7123c = new Handler(handlerThread.getLooper(), new C2009a());
    }

    /* renamed from: w */
    private void m28327w(int i) {
        this.f7123c.removeMessages(i);
        if (this.f7126f.get() != i) {
            m28325y(i);
            return;
        }
        this.f7127g = Thread.currentThread();
        this.f7123c.sendEmptyMessage(0);
        LockSupport.park();
    }

    /* renamed from: x */
    private boolean m28326x(int i) {
        return !this.f7125e.contains(Integer.valueOf(i));
    }

    /* renamed from: y */
    public void m28325y(int i) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "sync cache to db %d", Integer.valueOf(i));
        }
        this.f7122b.mo28315j(this.f7121a.mo28310o(i));
        List<C9379a> mo28311n = this.f7121a.mo28311n(i);
        this.f7122b.mo28317h(i);
        for (C9379a c9379a : mo28311n) {
            this.f7122b.mo28318g(c9379a);
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: a */
    public void mo28324a(int i) {
        this.f7121a.mo28324a(i);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28324a(i);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: b */
    public AbstractC2003a.AbstractC2004a mo28323b() {
        C2010d c2010d = this.f7122b;
        C2005b c2005b = this.f7121a;
        return c2010d.m28303v(c2005b.f7117a, c2005b.f7118b);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: c */
    public void mo28322c(int i, Throwable th) {
        this.f7121a.mo28322c(i, th);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28322c(i, th);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    public void clear() {
        this.f7121a.clear();
        this.f7122b.clear();
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: d */
    public void mo28321d(int i, long j) {
        this.f7121a.mo28321d(i, j);
        if (m28326x(i)) {
            this.f7123c.removeMessages(i);
            if (this.f7126f.get() == i) {
                this.f7127g = Thread.currentThread();
                this.f7123c.sendEmptyMessage(0);
                LockSupport.park();
                this.f7122b.mo28321d(i, j);
            }
        } else {
            this.f7122b.mo28321d(i, j);
        }
        this.f7125e.remove(Integer.valueOf(i));
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: e */
    public void mo28320e(int i, String str, long j, long j2, int i2) {
        this.f7121a.mo28320e(i, str, j, j2, i2);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28320e(i, str, j, j2, i2);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: f */
    public void mo28319f(int i, int i2, long j) {
        this.f7121a.mo28319f(i, i2, j);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28319f(i, i2, j);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: g */
    public void mo28318g(C9379a c9379a) {
        this.f7121a.mo28318g(c9379a);
        if (m28326x(c9379a.m834c())) {
            return;
        }
        this.f7122b.mo28318g(c9379a);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: h */
    public void mo28317h(int i) {
        this.f7121a.mo28317h(i);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28317h(i);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: i */
    public void mo28316i(int i) {
        this.f7123c.sendEmptyMessageDelayed(i, this.f7124d);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: j */
    public void mo28315j(FileDownloadModel fileDownloadModel) {
        this.f7121a.mo28315j(fileDownloadModel);
        if (m28326x(fileDownloadModel.m859e())) {
            return;
        }
        this.f7122b.mo28315j(fileDownloadModel);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: k */
    public void mo28314k(int i, Throwable th, long j) {
        this.f7121a.mo28314k(i, th, j);
        if (m28326x(i)) {
            m28327w(i);
        }
        this.f7122b.mo28314k(i, th, j);
        this.f7125e.remove(Integer.valueOf(i));
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: l */
    public void mo28313l(int i, long j) {
        this.f7121a.mo28313l(i, j);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28313l(i, j);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: m */
    public void mo28312m(int i, long j, String str, String str2) {
        this.f7121a.mo28312m(i, j, str, str2);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28312m(i, j, str, str2);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: n */
    public List<C9379a> mo28311n(int i) {
        return this.f7121a.mo28311n(i);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: o */
    public FileDownloadModel mo28310o(int i) {
        return this.f7121a.mo28310o(i);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: p */
    public void mo28309p(int i, int i2) {
        this.f7121a.mo28309p(i, i2);
        if (m28326x(i)) {
            return;
        }
        this.f7122b.mo28309p(i, i2);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: q */
    public void mo28308q(int i, long j) {
        this.f7121a.mo28308q(i, j);
        if (m28326x(i)) {
            m28327w(i);
        }
        this.f7122b.mo28308q(i, j);
        this.f7125e.remove(Integer.valueOf(i));
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    public boolean remove(int i) {
        this.f7122b.remove(i);
        return this.f7121a.remove(i);
    }
}
