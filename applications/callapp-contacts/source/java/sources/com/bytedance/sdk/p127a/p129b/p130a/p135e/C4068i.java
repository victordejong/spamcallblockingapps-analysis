package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.AbstractC3989r;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3964a;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3991t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.a.b.a.e.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i.class */
public final class C4068i {

    /* renamed from: i */
    static final /* synthetic */ boolean f14782i = true;

    /* renamed from: b */
    long f14784b;

    /* renamed from: c */
    final int f14785c;

    /* renamed from: d */
    final C4050g f14786d;

    /* renamed from: e */
    final C4069a f14787e;

    /* renamed from: j */
    private final List<C4043c> f14791j;

    /* renamed from: k */
    private List<C4043c> f14792k;

    /* renamed from: l */
    private boolean f14793l;

    /* renamed from: m */
    private final C4070b f14794m;

    /* renamed from: a */
    long f14783a = 0;

    /* renamed from: f */
    final C4071c f14788f = new C4071c();

    /* renamed from: g */
    final C4071c f14789g = new C4071c();

    /* renamed from: h */
    EnumC4042b f14790h = null;

    /* renamed from: com.bytedance.sdk.a.b.a.e.i$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i$a.class */
    public final class C4069a implements AbstractC3989r {

        /* renamed from: c */
        static final /* synthetic */ boolean f14795c = true;

        /* renamed from: a */
        boolean f14796a;

        /* renamed from: b */
        boolean f14797b;

        /* renamed from: e */
        private final C3969c f14799e = new C3969c();

        C4069a() {
            C4068i.this = r5;
        }

        /* renamed from: a */
        private void m36722a(boolean z) throws IOException {
            long min;
            synchronized (C4068i.this) {
                C4068i.this.f14789g.m37147a();
                while (C4068i.this.f14784b <= 0 && !this.f14797b && !this.f14796a && C4068i.this.f14790h == null) {
                    C4068i.this.m36724l();
                }
                C4068i.this.f14789g.m36713h();
                C4068i.this.m36725k();
                min = Math.min(C4068i.this.f14784b, this.f14799e.m37124b());
                C4068i.this.f14784b -= min;
            }
            C4068i.this.f14789g.m37147a();
            try {
                C4068i.this.f14786d.m36791a(C4068i.this.f14785c, z && min == this.f14799e.m37124b(), this.f14799e, min);
            } finally {
                C4068i.this.f14789g.m36713h();
            }
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
        /* renamed from: a */
        public final C3991t mo36723a() {
            return C4068i.this.f14789g;
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
        /* renamed from: a_ */
        public final void mo36721a_(C3969c c3969c, long j) throws IOException {
            if (f14795c || !Thread.holdsLock(C4068i.this)) {
                this.f14799e.mo36721a_(c3969c, j);
                while (this.f14799e.m37124b() >= 16384) {
                    m36722a(false);
                }
                return;
            }
            throw new AssertionError();
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (f14795c || !Thread.holdsLock(C4068i.this)) {
                synchronized (C4068i.this) {
                    if (this.f14796a) {
                        return;
                    }
                    if (!C4068i.this.f14787e.f14797b) {
                        if (this.f14799e.m37124b() > 0) {
                            while (this.f14799e.m37124b() > 0) {
                                m36722a(true);
                            }
                        } else {
                            C4068i.this.f14786d.m36791a(C4068i.this.f14785c, true, (C3969c) null, 0L);
                        }
                    }
                    synchronized (C4068i.this) {
                        this.f14796a = true;
                    }
                    C4068i.this.f14786d.m36784b();
                    C4068i.this.m36726j();
                    return;
                }
            }
            throw new AssertionError();
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
        public final void flush() throws IOException {
            if (f14795c || !Thread.holdsLock(C4068i.this)) {
                synchronized (C4068i.this) {
                    C4068i.this.m36725k();
                }
                while (this.f14799e.m37124b() > 0) {
                    m36722a(false);
                    C4068i.this.f14786d.m36784b();
                }
                return;
            }
            throw new AssertionError();
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.e.i$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i$b.class */
    public final class C4070b implements AbstractC3990s {

        /* renamed from: c */
        static final /* synthetic */ boolean f14800c = true;

        /* renamed from: a */
        boolean f14801a;

        /* renamed from: b */
        boolean f14802b;

        /* renamed from: e */
        private final C3969c f14804e = new C3969c();

        /* renamed from: f */
        private final C3969c f14805f = new C3969c();

        /* renamed from: g */
        private final long f14806g;

        C4070b(long j) {
            C4068i.this = r5;
            this.f14806g = j;
        }

        /* renamed from: b */
        private void m36717b() throws IOException {
            C4068i.this.f14788f.m37147a();
            while (this.f14805f.m37124b() == 0 && !this.f14802b && !this.f14801a && C4068i.this.f14790h == null) {
                try {
                    C4068i.this.m36724l();
                } finally {
                    C4068i.this.f14788f.m36713h();
                }
            }
        }

        /* renamed from: c */
        private void m36716c() throws IOException {
            if (!this.f14801a) {
                if (C4068i.this.f14790h != null) {
                    throw new C4079o(C4068i.this.f14790h);
                }
                return;
            }
            throw new IOException("stream closed");
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public final long mo36719a(C3969c c3969c, long j) throws IOException {
            if (j >= 0) {
                synchronized (C4068i.this) {
                    m36717b();
                    m36716c();
                    if (this.f14805f.m37124b() == 0) {
                        return -1L;
                    }
                    C3969c c3969c2 = this.f14805f;
                    long mo36719a = c3969c2.mo36719a(c3969c, Math.min(j, c3969c2.m37124b()));
                    C4068i.this.f14783a += mo36719a;
                    if (C4068i.this.f14783a >= C4068i.this.f14786d.f14720l.m36674d() / 2) {
                        C4068i.this.f14786d.m36796a(C4068i.this.f14785c, C4068i.this.f14783a);
                        C4068i.this.f14783a = 0L;
                    }
                    synchronized (C4068i.this.f14786d) {
                        C4068i.this.f14786d.f14718j += mo36719a;
                        if (C4068i.this.f14786d.f14718j >= C4068i.this.f14786d.f14720l.m36674d() / 2) {
                            C4068i.this.f14786d.m36796a(0, C4068i.this.f14786d.f14718j);
                            C4068i.this.f14786d.f14718j = 0L;
                        }
                    }
                    return mo36719a;
                }
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public final C3991t mo36720a() {
            return C4068i.this.f14788f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v33, types: [long] */
        /* renamed from: a */
        final void m36718a(AbstractC3972e abstractC3972e, long j) throws IOException {
            boolean z;
            boolean z2;
            char c = j;
            if (!f14800c) {
                if (Thread.holdsLock(C4068i.this)) {
                    throw new AssertionError();
                }
                c = j;
            }
            while (c > 0) {
                synchronized (C4068i.this) {
                    z = this.f14802b;
                    z2 = this.f14805f.m37124b() + c > this.f14806g;
                }
                if (z2) {
                    abstractC3972e.mo37053h(c);
                    C4068i.this.m36736b(EnumC4042b.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    abstractC3972e.mo37053h(c);
                    return;
                } else {
                    long a = abstractC3972e.mo36719a(this.f14804e, c);
                    if (a == -1) {
                        throw new EOFException();
                    }
                    c -= a;
                    synchronized (C4068i.this) {
                        boolean z3 = this.f14805f.m37124b() == 0;
                        this.f14805f.m37129a(this.f14804e);
                        if (z3) {
                            C4068i.this.notifyAll();
                        }
                    }
                }
            }
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            synchronized (C4068i.this) {
                this.f14801a = true;
                this.f14805f.m37106r();
                C4068i.this.notifyAll();
            }
            C4068i.this.m36726j();
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.e.i$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i$c.class */
    public class C4071c extends C3964a {
        C4071c() {
            C4068i.this = r4;
        }

        @Override // com.bytedance.sdk.p127a.p128a.C3964a
        /* renamed from: a_ */
        public void mo36715a_() {
            C4068i.this.m36736b(EnumC4042b.CANCEL);
        }

        @Override // com.bytedance.sdk.p127a.p128a.C3964a
        /* renamed from: b */
        public IOException mo36714b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        /* renamed from: h */
        public void m36713h() throws IOException {
            if (!m37140b()) {
                return;
            }
            throw mo36714b((IOException) null);
        }
    }

    public C4068i(int i, C4050g c4050g, boolean z, boolean z2, List<C4043c> list) {
        Objects.requireNonNull(c4050g, "connection == null");
        Objects.requireNonNull(list, "requestHeaders == null");
        this.f14785c = i;
        this.f14786d = c4050g;
        this.f14784b = c4050g.f14721m.m36674d();
        C4070b c4070b = new C4070b(c4050g.f14720l.m36674d());
        this.f14794m = c4070b;
        C4069a c4069a = new C4069a();
        this.f14787e = c4069a;
        c4070b.f14802b = z2;
        c4069a.f14797b = z;
        this.f14791j = list;
    }

    /* renamed from: d */
    private boolean m36732d(EnumC4042b enumC4042b) {
        if (f14782i || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.f14790h != null) {
                    return false;
                }
                if (this.f14794m.f14802b && this.f14787e.f14797b) {
                    return false;
                }
                this.f14790h = enumC4042b;
                notifyAll();
                this.f14786d.m36783b(this.f14785c);
                return true;
            }
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public final int m36742a() {
        return this.f14785c;
    }

    /* renamed from: a */
    public final void m36741a(long j) {
        this.f14784b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public final void m36740a(AbstractC3972e abstractC3972e, int i) throws IOException {
        if (f14782i || !Thread.holdsLock(this)) {
            this.f14794m.m36718a(abstractC3972e, i);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public final void m36739a(EnumC4042b enumC4042b) throws IOException {
        if (!m36732d(enumC4042b)) {
            return;
        }
        this.f14786d.m36782b(this.f14785c, enumC4042b);
    }

    /* renamed from: a */
    public final void m36738a(List<C4043c> list) {
        boolean z;
        if (f14782i || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = true;
                this.f14793l = true;
                if (this.f14792k == null) {
                    this.f14792k = list;
                    z = m36737b();
                    notifyAll();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.f14792k);
                    arrayList.add(null);
                    arrayList.addAll(list);
                    this.f14792k = arrayList;
                }
            }
            if (z) {
                return;
            }
            this.f14786d.m36783b(this.f14785c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: b */
    public final void m36736b(EnumC4042b enumC4042b) {
        if (!m36732d(enumC4042b)) {
            return;
        }
        this.f14786d.m36794a(this.f14785c, enumC4042b);
    }

    /* renamed from: b */
    public final boolean m36737b() {
        synchronized (this) {
            if (this.f14790h != null) {
                return false;
            }
            if ((this.f14794m.f14802b || this.f14794m.f14801a) && (this.f14787e.f14797b || this.f14787e.f14796a)) {
                if (this.f14793l) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: c */
    public final void m36734c(EnumC4042b enumC4042b) {
        synchronized (this) {
            if (this.f14790h == null) {
                this.f14790h = enumC4042b;
                notifyAll();
            }
        }
    }

    /* renamed from: c */
    public final boolean m36735c() {
        return this.f14786d.f14710b == ((this.f14785c & 1) == 1);
    }

    /* renamed from: d */
    public final List<C4043c> m36733d() throws IOException {
        List<C4043c> list;
        synchronized (this) {
            if (!m36735c()) {
                throw new IllegalStateException("servers cannot read response headers");
            }
            this.f14788f.m37147a();
            while (this.f14792k == null && this.f14790h == null) {
                m36724l();
            }
            this.f14788f.m36713h();
            list = this.f14792k;
            if (list == null) {
                throw new C4079o(this.f14790h);
            }
            this.f14792k = null;
        }
        return list;
    }

    /* renamed from: e */
    public final C3991t m36731e() {
        return this.f14788f;
    }

    /* renamed from: f */
    public final C3991t m36730f() {
        return this.f14789g;
    }

    /* renamed from: g */
    public final AbstractC3990s m36729g() {
        return this.f14794m;
    }

    /* renamed from: h */
    public final AbstractC3989r m36728h() {
        synchronized (this) {
            if (!this.f14793l && !m36735c()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f14787e;
    }

    /* renamed from: i */
    public final void m36727i() {
        boolean m36737b;
        if (f14782i || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.f14794m.f14802b = true;
                m36737b = m36737b();
                notifyAll();
            }
            if (m36737b) {
                return;
            }
            this.f14786d.m36783b(this.f14785c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: j */
    final void m36726j() throws IOException {
        boolean z;
        boolean m36737b;
        if (f14782i || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = !this.f14794m.f14802b && this.f14794m.f14801a && (this.f14787e.f14797b || this.f14787e.f14796a);
                m36737b = m36737b();
            }
            if (z) {
                m36739a(EnumC4042b.CANCEL);
                return;
            } else if (m36737b) {
                return;
            } else {
                this.f14786d.m36783b(this.f14785c);
                return;
            }
        }
        throw new AssertionError();
    }

    /* renamed from: k */
    final void m36725k() throws IOException {
        if (!this.f14787e.f14796a) {
            if (this.f14787e.f14797b) {
                throw new IOException("stream finished");
            }
            if (this.f14790h != null) {
                throw new C4079o(this.f14790h);
            }
            return;
        }
        throw new IOException("stream closed");
    }

    /* renamed from: l */
    final void m36724l() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }
}
