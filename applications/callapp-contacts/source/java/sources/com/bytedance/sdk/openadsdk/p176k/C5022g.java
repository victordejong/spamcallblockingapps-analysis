package com.bytedance.sdk.openadsdk.p176k;

import android.util.Log;
import com.bytedance.sdk.adnet.err.C4239a;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.p176k.C4977b;
import com.bytedance.sdk.openadsdk.p176k.C5032h;
import com.bytedance.sdk.openadsdk.p176k.C5034i;
import com.bytedance.sdk.openadsdk.p176k.C5041l;
import com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4964b;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4980a;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4987a;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4988b;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4989c;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4990d;
import com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* renamed from: com.bytedance.sdk.openadsdk.k.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g.class */
public class C5022g extends AbstractC4961a {

    /* renamed from: m */
    private final Socket f18197m;

    /* renamed from: n */
    private final AbstractC5026c f18198n;

    /* renamed from: o */
    private final ExecutorService f18199o;

    /* renamed from: q */
    private volatile C4977b f18201q;

    /* renamed from: r */
    private volatile boolean f18202r = true;

    /* renamed from: p */
    private final C4991d f18200p = C4991d.m33345c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.k.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g$a.class */
    public static final class C5024a {

        /* renamed from: a */
        AbstractC4963a f18204a;

        /* renamed from: b */
        C4982c f18205b;

        /* renamed from: c */
        ExecutorService f18206c;

        /* renamed from: d */
        Socket f18207d;

        /* renamed from: e */
        AbstractC5026c f18208e;

        /* renamed from: a */
        public final C5024a m33256a(C4982c c4982c) {
            if (c4982c != null) {
                this.f18205b = c4982c;
                return this;
            }
            throw new IllegalArgumentException("db == null");
        }

        /* renamed from: a */
        public final C5024a m33255a(AbstractC5026c abstractC5026c) {
            this.f18208e = abstractC5026c;
            return this;
        }

        /* renamed from: a */
        public final C5024a m33251a(Socket socket) {
            if (socket != null) {
                this.f18207d = socket;
                return this;
            }
            throw new IllegalArgumentException("socket == null");
        }

        /* renamed from: a */
        public final C5024a m33250a(ExecutorService executorService) {
            if (executorService != null) {
                this.f18206c = executorService;
                return this;
            }
            throw new IllegalArgumentException("executor == null");
        }

        /* renamed from: a */
        public final C5022g m33259a() {
            if (this.f18205b == null || this.f18206c == null || this.f18207d == null) {
                throw new IllegalArgumentException();
            }
            return new C5022g(this);
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.g$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g$b.class */
    public static class C5025b {

        /* renamed from: a */
        private final OutputStream f18209a;

        /* renamed from: b */
        private int f18210b;

        /* renamed from: c */
        private boolean f18211c;

        C5025b(OutputStream outputStream, int i) {
            this.f18209a = outputStream;
            this.f18210b = i;
        }

        /* renamed from: a */
        void m33241a(byte[] bArr, int i, int i2) throws C4990d {
            if (!this.f18211c) {
                try {
                    this.f18209a.write(bArr, i, i2);
                    this.f18211c = true;
                } catch (IOException e) {
                    throw new C4990d(e);
                }
            }
        }

        /* renamed from: a */
        boolean m33244a() {
            return this.f18211c;
        }

        /* renamed from: b */
        int m33240b() {
            return this.f18210b;
        }

        /* renamed from: b */
        void m33239b(byte[] bArr, int i, int i2) throws C4990d {
            try {
                this.f18209a.write(bArr, i, i2);
                this.f18210b += i2;
            } catch (IOException e) {
                throw new C4990d(e);
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.g$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g$c.class */
    public interface AbstractC5026c {
        /* renamed from: a */
        void mo33237a(C5022g c5022g);

        /* renamed from: b */
        void mo33235b(C5022g c5022g);
    }

    C5022g(C5024a c5024a) {
        super(c5024a.f18204a, c5024a.f18205b);
        this.f18199o = c5024a.f18206c;
        this.f18197m = c5024a.f18207d;
        this.f18198n = c5024a.f18208e;
    }

    /* renamed from: a */
    private void m33270a(C4980a c4980a, File file, C5025b c5025b, C5041l.C5042a c5042a) throws IOException, C4990d, C5032h.C5033a, C4987a, C4988b, VAdError {
        Future<?> future;
        C5032h c5032h;
        Throwable th;
        C5032h c5032h2;
        C4977b c4977b;
        if (!c5025b.m33244a()) {
            byte[] m33271a = m33271a(c4980a, c5025b, c5042a);
            m33410e();
            if (m33271a == null) {
                return;
            }
            c5025b.m33241a(m33271a, 0, m33271a.length);
        }
        C4980a c4980a2 = c4980a;
        if (c4980a == null) {
            C4980a m33364a = this.f18037b.m33364a(this.f18043h, this.f18044i.f18227c.f18228a);
            c4980a2 = m33364a;
            if (m33364a == null) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_ProxyTask", "failed to get video header info from db");
                }
                m33271a((C4980a) null, c5025b, c5042a);
                c4980a2 = this.f18037b.m33364a(this.f18043h, this.f18044i.f18227c.f18228a);
                if (c4980a2 == null) {
                    throw new C4989c("failed to get header, rawKey: " + this.f18042g + ", url: " + c5042a);
                }
            }
        }
        if (file.length() >= c4980a2.f18094c || ((c4977b = this.f18201q) != null && !c4977b.m33413b() && !c4977b.m33411d())) {
            future = null;
        } else {
            C4977b m33381a = new C4977b.C4978a().m33379a(this.f18036a).m33377a(this.f18037b).m33373a(this.f18042g).m33371b(this.f18043h).m33375a(new C5041l(c5042a.f18251a)).m33372a(this.f18041f).m33376a(this.f18044i).m33378a(new C4977b.AbstractC4979b() { // from class: com.bytedance.sdk.openadsdk.k.g.1
                @Override // com.bytedance.sdk.openadsdk.p176k.C4977b.AbstractC4979b
                /* renamed from: a */
                public void mo33260a(C4977b c4977b2) {
                    C5022g.this.f18038c.addAndGet(c4977b2.f18038c.get());
                    C5022g.this.f18039d.addAndGet(c4977b2.f18039d.get());
                    synchronized (c4977b2.f18076m) {
                        c4977b2.f18076m.notifyAll();
                    }
                    if (c4977b2.m33411d()) {
                        C5022g.this.f18200p.m33351a(C5022g.this.m33408g(), null);
                    }
                }
            }).m33381a();
            this.f18201q = m33381a;
            Future<?> submit = this.f18199o.submit(m33381a);
            future = submit;
            if (C5001e.f18140c) {
                Log.e("TAG_PROXY_ProxyTask", "fire download in process cache task");
                future = submit;
            }
        }
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        try {
            c5032h2 = new C5032h(file, "r");
        } catch (Throwable th2) {
            th = th2;
            c5032h = null;
        }
        try {
            c5032h2.m33209a(c5025b.m33240b());
            int min = this.f18044i.f18227c.f18232e > 0 ? Math.min(c4980a2.f18094c, this.f18044i.f18227c.f18232e) : c4980a2.f18094c;
            while (c5025b.m33240b() < min) {
                m33410e();
                int m33208a = c5032h2.m33208a(bArr);
                if (m33208a <= 0) {
                    C4977b c4977b2 = this.f18201q;
                    if (c4977b2 != null) {
                        C4988b m33383i = c4977b2.m33383i();
                        if (m33383i != null) {
                            throw m33383i;
                        }
                        C5032h.C5033a m33384h = c4977b2.m33384h();
                        if (m33384h != null) {
                            throw m33384h;
                        }
                    }
                    if (c4977b2 != null && !c4977b2.m33413b() && !c4977b2.m33411d()) {
                        m33410e();
                        synchronized (c4977b2.f18076m) {
                            try {
                                c4977b2.f18076m.wait(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    if (C5001e.f18140c) {
                        Log.e("TAG_PROXY_ProxyTask", "download task has finished!!!");
                    }
                    throw new C4989c("illegal state download task has finished, rawKey: " + this.f18042g + ", url: " + c5042a);
                }
                c5025b.m33239b(bArr, 0, m33208a);
                m33410e();
            }
            if (C5001e.f18140c) {
                StringBuilder sb = new StringBuilder("read cache file complete: ");
                sb.append(c5025b.m33240b());
                sb.append(", ");
                sb.append(min);
            }
            m33412c();
            c5032h2.m33210a();
            if (future == null) {
                return;
            }
            try {
                future.get();
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
        } catch (Throwable th4) {
            th = th4;
            c5032h = c5032h2;
            if (c5032h != null) {
                c5032h.m33210a();
            }
            if (future != null) {
                try {
                    future.get();
                } catch (Throwable th5) {
                    th5.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    private void m33268a(C5025b c5025b, C5041l.C5042a c5042a) throws C4990d, IOException, C5032h.C5033a, C4987a, C4988b, VAdError {
        if ("HEAD".equalsIgnoreCase(this.f18044i.f18225a.f18237a)) {
            m33265b(c5025b, c5042a);
        } else {
            m33264c(c5025b, c5042a);
        }
    }

    /* renamed from: a */
    private void m33266a(boolean z, int i, int i2, int i3, int i4) {
    }

    /* renamed from: a */
    private boolean m33269a(C5025b c5025b) throws C4987a, VAdError {
        while (this.f18045j.m33199a()) {
            m33410e();
            C5041l.C5042a m33198b = this.f18045j.m33198b();
            try {
                m33268a(c5025b, m33198b);
                return true;
            } catch (C4239a e) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e));
                }
            } catch (C4988b e2) {
                if (!C5001e.f18140c) {
                    return false;
                }
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
                return false;
            } catch (C4989c e3) {
                m33198b.m33195a();
                m33414a(Boolean.valueOf(m33408g()), this.f18042g, e3);
            } catch (C4990d e4) {
                if (!C5001e.f18140c) {
                    return true;
                }
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e4));
                return true;
            } catch (C5032h.C5033a e5) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e5));
                }
                this.f18202r = false;
                m33414a(Boolean.valueOf(m33408g()), this.f18042g, e5);
            } catch (IOException e6) {
                if (e6 instanceof SocketTimeoutException) {
                    m33198b.m33194b();
                }
                if (!m33413b()) {
                    m33414a(Boolean.valueOf(m33408g()), this.f18042g, e6);
                } else if (C5001e.f18140c) {
                    if ("Canceled".equalsIgnoreCase(e6.getMessage())) {
                        Log.w("TAG_PROXY_ProxyTask", "okhttp call canceled");
                    } else {
                        Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e6));
                    }
                }
            } catch (Exception e7) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e7));
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    private byte[] m33271a(C4980a c4980a, C5025b c5025b, C5041l.C5042a c5042a) throws IOException, VAdError {
        if (c4980a != null) {
            boolean z = C5001e.f18140c;
            return C5030d.m33232a(c4980a, c5025b.m33240b()).getBytes(C5030d.f18220a);
        }
        AbstractC5003a a = m33415a(c5042a, 0, -1, "HEAD");
        if (a == null) {
            return null;
        }
        try {
            String m33228a = C5030d.m33228a(a, false, false);
            if (m33228a == null) {
                C4980a m33229a = C5030d.m33229a(a, this.f18037b, this.f18043h, this.f18044i.f18227c.f18228a);
                if (C5001e.f18140c) {
                    Log.w("TAG_PROXY_ProxyTask", "get header from network");
                }
                return C5030d.m33232a(m33229a, c5025b.m33240b()).getBytes(C5030d.f18220a);
            }
            throw new C4989c(m33228a + ", rawKey: " + this.f18042g + ", url: " + c5042a);
        } finally {
            C5030d.m33227a(a.mo33318d());
        }
    }

    /* renamed from: b */
    private void m33265b(C5025b c5025b, C5041l.C5042a c5042a) throws IOException, C4990d, VAdError {
        byte[] m33271a = m33271a(this.f18037b.m33364a(this.f18043h, this.f18044i.f18227c.f18228a), c5025b, c5042a);
        if (m33271a == null) {
            return;
        }
        c5025b.m33241a(m33271a, 0, m33271a.length);
    }

    /* renamed from: c */
    private void m33264c(C5025b c5025b, C5041l.C5042a c5042a) throws C5032h.C5033a, C4990d, IOException, C4987a, C4988b, VAdError {
        if (this.f18202r) {
            File mo33391c = this.f18036a.mo33391c(this.f18043h);
            long length = mo33391c.length();
            C4980a m33364a = this.f18037b.m33364a(this.f18043h, this.f18044i.f18227c.f18228a);
            int m33240b = c5025b.m33240b();
            long j = length - m33240b;
            int i = (int) j;
            int i2 = m33364a == null ? -1 : m33364a.f18094c;
            if (length > c5025b.m33240b()) {
                if (C5001e.f18140c) {
                    new StringBuilder("cache hit, remainSize: ").append(j);
                }
                m33266a(true, i, i2, (int) length, m33240b);
                m33270a(m33364a, mo33391c, c5025b, c5042a);
                return;
            }
            m33266a(false, i, i2, (int) length, m33240b);
        } else {
            m33266a(false, 0, 0, 0, c5025b.m33240b());
        }
        m33263d(c5025b, c5042a);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0349 A[EDGE_INSN: B:118:0x0349->B:90:0x0349 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x036d  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m33263d(com.bytedance.sdk.openadsdk.p176k.C5022g.C5025b r7, com.bytedance.sdk.openadsdk.p176k.C5041l.C5042a r8) throws com.bytedance.sdk.openadsdk.p176k.p179c.C4990d, java.io.IOException, com.bytedance.sdk.openadsdk.p176k.p179c.C4987a, com.bytedance.sdk.openadsdk.p176k.p179c.C4988b, com.bytedance.sdk.adnet.err.VAdError {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.p176k.C5022g.m33263d(com.bytedance.sdk.openadsdk.k.g$b, com.bytedance.sdk.openadsdk.k.l$a):void");
    }

    /* renamed from: h */
    private C5025b m33262h() {
        try {
            this.f18044i = C5034i.m33206a(this.f18197m.getInputStream());
            OutputStream outputStream = this.f18197m.getOutputStream();
            C4964b c4964b = this.f18044i.f18227c.f18228a == 1 ? C5001e.f18138a : C5001e.f18139b;
            if (c4964b == null) {
                if (!C5001e.f18140c) {
                    return null;
                }
                Log.e("TAG_PROXY_ProxyTask", "cache is null");
                return null;
            }
            this.f18036a = c4964b;
            this.f18042g = this.f18044i.f18227c.f18229b;
            this.f18043h = this.f18044i.f18227c.f18230c;
            this.f18045j = new C5041l(this.f18044i.f18227c.f18234g);
            this.f18041f = this.f18044i.f18226b;
            if (C5001e.f18140c) {
                new StringBuilder("request from MediaPlayer:    ").append(this.f18044i.toString());
            }
            return new C5025b(outputStream, this.f18044i.f18227c.f18231d);
        } catch (C5034i.C5038d e) {
            C5030d.m33221a(this.f18197m);
            if (C5001e.f18140c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e));
            }
            m33414a(this.f18036a == null ? null : Boolean.valueOf(m33408g()), this.f18042g, e);
            return null;
        } catch (IOException e2) {
            C5030d.m33221a(this.f18197m);
            if (C5001e.f18140c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
            m33414a(this.f18036a == null ? null : Boolean.valueOf(m33408g()), this.f18042g, e2);
            return null;
        }
    }

    /* renamed from: i */
    private void m33261i() {
        C4977b c4977b = this.f18201q;
        this.f18201q = null;
        if (c4977b != null) {
            c4977b.mo33272a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.AbstractC4961a
    /* renamed from: a */
    public void mo33272a() {
        super.mo33272a();
        m33261i();
    }

    @Override // java.lang.Runnable
    public void run() {
        C4980a m33364a;
        C5025b m33262h = m33262h();
        if (m33262h == null) {
            return;
        }
        AbstractC5026c abstractC5026c = this.f18198n;
        if (abstractC5026c != null) {
            abstractC5026c.mo33237a(this);
        }
        this.f18036a.mo33398a(this.f18043h);
        if (C5001e.f18145h != 0 && ((m33364a = this.f18037b.m33364a(this.f18043h, this.f18044i.f18227c.f18228a)) == null || this.f18036a.mo33391c(this.f18043h).length() < m33364a.f18094c)) {
            this.f18200p.m33351a(m33408g(), this.f18043h);
        }
        try {
            m33269a(m33262h);
        } catch (VAdError e) {
            e.printStackTrace();
        } catch (C4987a e2) {
            if (C5001e.f18140c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
        } catch (Throwable th) {
            if (C5001e.f18140c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(th));
            }
        }
        this.f18036a.mo33394b(this.f18043h);
        this.f18200p.m33351a(m33408g(), null);
        mo33272a();
        C5030d.m33221a(this.f18197m);
        AbstractC5026c abstractC5026c2 = this.f18198n;
        if (abstractC5026c2 == null) {
            return;
        }
        abstractC5026c2.mo33235b(this);
    }
}
