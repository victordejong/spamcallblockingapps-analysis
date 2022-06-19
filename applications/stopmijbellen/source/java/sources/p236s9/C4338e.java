package p236s9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;
import p086f.C2678t;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4114n;
import p204p9.AbstractC4116o;
import p204p9.C4080a;
import p204p9.C4099e0;
import p204p9.C4106i;
import p204p9.C4123s;
import p204p9.C4128v;
import p214q9.AbstractC4169a;
import p214q9.C4171c;
import p236s9.C4336d;
import p246t9.AbstractC4433c;
import p268v9.C4667f;
/* renamed from: s9.e */
/* loaded from: classes2-dex2jar.jar:s9/e.class */
public final class C4338e {

    /* renamed from: a */
    public final C4080a f13508a;

    /* renamed from: b */
    public C4336d.C4337a f13509b;

    /* renamed from: c */
    public C4099e0 f13510c;

    /* renamed from: d */
    public final C4106i f13511d;

    /* renamed from: e */
    public final AbstractC4097e f13512e;

    /* renamed from: f */
    public final AbstractC4116o f13513f;

    /* renamed from: g */
    public final Object f13514g;

    /* renamed from: h */
    public final C4336d f13515h;

    /* renamed from: i */
    public int f13516i;

    /* renamed from: j */
    public C4335c f13517j;

    /* renamed from: k */
    public boolean f13518k;

    /* renamed from: l */
    public boolean f13519l;

    /* renamed from: m */
    public boolean f13520m;

    /* renamed from: n */
    public AbstractC4433c f13521n;

    /* renamed from: s9.e$a */
    /* loaded from: classes2-dex2jar.jar:s9/e$a.class */
    public static final class C4339a extends WeakReference<C4338e> {

        /* renamed from: a */
        public final Object f13522a;

        public C4339a(C4338e c4338e, Object obj) {
            super(c4338e);
            this.f13522a = obj;
        }
    }

    public C4338e(C4106i c4106i, C4080a c4080a, AbstractC4097e abstractC4097e, AbstractC4116o abstractC4116o, Object obj) {
        this.f13511d = c4106i;
        this.f13508a = c4080a;
        this.f13512e = abstractC4097e;
        this.f13513f = abstractC4116o;
        Objects.requireNonNull((C4128v.C4129a) AbstractC4169a.f13142a);
        this.f13515h = new C4336d(c4080a, c4106i.f12914e, abstractC4097e, abstractC4116o);
        this.f13514g = obj;
    }

    /* renamed from: a */
    public void m1080a(C4335c c4335c, boolean z) {
        if (this.f13517j == null) {
            this.f13517j = c4335c;
            this.f13518k = z;
            c4335c.f13497n.add(new C4339a(this, this.f13514g));
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public C4335c m1079b() {
        C4335c c4335c;
        synchronized (this) {
            c4335c = this.f13517j;
        }
        return c4335c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004c, code lost:
        if (r0.f13494k != false) goto L19;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.net.Socket m1078c(boolean r5, boolean r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p236s9.C4338e.m1078c(boolean, boolean, boolean):java.net.Socket");
    }

    /* renamed from: d */
    public final C4335c m1077d(int i, int i2, int i3, int i4, boolean z) throws IOException {
        Socket m1078c;
        C4335c c4335c;
        boolean z2;
        C4099e0 c4099e0;
        C4335c c4335c2;
        boolean z3;
        boolean z4;
        C4335c c4335c3;
        Socket socket;
        C4336d.C4337a c4337a;
        int i5;
        String str;
        boolean contains;
        synchronized (this.f13511d) {
            if (this.f13519l) {
                throw new IllegalStateException("released");
            }
            if (this.f13521n != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.f13520m) {
                throw new IOException("Canceled");
            }
            C4335c c4335c4 = this.f13517j;
            C4099e0 c4099e02 = null;
            m1078c = (c4335c4 == null || !c4335c4.f13494k) ? null : m1078c(false, false, true);
            C4335c c4335c5 = this.f13517j;
            if (c4335c5 != null) {
                c4335c4 = null;
            } else {
                c4335c5 = null;
            }
            c4335c = c4335c4;
            if (!this.f13518k) {
                c4335c = null;
            }
            if (c4335c5 == null) {
                AbstractC4169a.f13142a.mo1337c(this.f13511d, this.f13508a, this, null);
                c4335c2 = this.f13517j;
                if (c4335c2 != null) {
                    z2 = true;
                    c4099e0 = null;
                } else {
                    c4099e02 = this.f13510c;
                }
            }
            z2 = false;
            c4335c2 = c4335c5;
            c4099e0 = c4099e02;
        }
        C4171c.m1331e(m1078c);
        if (c4335c != null) {
            Objects.requireNonNull(this.f13513f);
        }
        if (z2) {
            Objects.requireNonNull(this.f13513f);
        }
        if (c4335c2 != null) {
            return c4335c2;
        }
        if (c4099e0 != null || ((c4337a = this.f13509b) != null && c4337a.m1081a())) {
            z3 = false;
        } else {
            C4336d c4336d = this.f13515h;
            if (!c4336d.m1083b()) {
                throw new NoSuchElementException();
            }
            ArrayList arrayList = new ArrayList();
            while (c4336d.m1082c()) {
                if (!c4336d.m1082c()) {
                    StringBuilder m8752j = C0082b.m8752j("No route to ");
                    m8752j.append(c4336d.f13499a.f12785a.f12958d);
                    m8752j.append("; exhausted proxy configurations: ");
                    m8752j.append(c4336d.f13502d);
                    throw new SocketException(m8752j.toString());
                }
                List<Proxy> list = c4336d.f13502d;
                int i6 = c4336d.f13503e;
                c4336d.f13503e = i6 + 1;
                Proxy proxy = list.get(i6);
                c4336d.f13504f = new ArrayList();
                if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                    C4123s c4123s = c4336d.f13499a.f12785a;
                    str = c4123s.f12958d;
                    i5 = c4123s.f12959e;
                } else {
                    SocketAddress address = proxy.address();
                    if (!(address instanceof InetSocketAddress)) {
                        StringBuilder m8752j2 = C0082b.m8752j("Proxy.address() is not an InetSocketAddress: ");
                        m8752j2.append(address.getClass());
                        throw new IllegalArgumentException(m8752j2.toString());
                    }
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                    InetAddress address2 = inetSocketAddress.getAddress();
                    str = address2 == null ? inetSocketAddress.getHostName() : address2.getHostAddress();
                    i5 = inetSocketAddress.getPort();
                }
                if (i5 < 1 || i5 > 65535) {
                    throw new SocketException("No route to " + str + ":" + i5 + "; port is out of range");
                }
                if (proxy.type() == Proxy.Type.SOCKS) {
                    c4336d.f13504f.add(InetSocketAddress.createUnresolved(str, i5));
                } else {
                    Objects.requireNonNull(c4336d.f13501c);
                    Objects.requireNonNull((AbstractC4114n.C4115a) c4336d.f13499a.f12786b);
                    if (str == null) {
                        throw new UnknownHostException("hostname == null");
                    }
                    try {
                        List asList = Arrays.asList(InetAddress.getAllByName(str));
                        if (asList.isEmpty()) {
                            throw new UnknownHostException(c4336d.f13499a.f12786b + " returned no addresses for " + str);
                        }
                        Objects.requireNonNull(c4336d.f13501c);
                        int size = asList.size();
                        for (int i7 = 0; i7 < size; i7++) {
                            c4336d.f13504f.add(new InetSocketAddress((InetAddress) asList.get(i7), i5));
                        }
                    } catch (NullPointerException e) {
                        UnknownHostException unknownHostException = new UnknownHostException(C1676a.m4789h("Broken system behaviour for dns lookup of ", str));
                        unknownHostException.initCause(e);
                        throw unknownHostException;
                    }
                }
                int size2 = c4336d.f13504f.size();
                for (int i8 = 0; i8 < size2; i8++) {
                    C4099e0 c4099e03 = new C4099e0(c4336d.f13499a, proxy, c4336d.f13504f.get(i8));
                    C2678t c2678t = c4336d.f13500b;
                    synchronized (c2678t) {
                        contains = ((Set) c2678t.f9203a).contains(c4099e03);
                    }
                    if (contains) {
                        c4336d.f13505g.add(c4099e03);
                    } else {
                        arrayList.add(c4099e03);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(c4336d.f13505g);
                c4336d.f13505g.clear();
            }
            this.f13509b = new C4336d.C4337a(arrayList);
            z3 = true;
        }
        synchronized (this.f13511d) {
            if (this.f13520m) {
                throw new IOException("Canceled");
            }
            z4 = z2;
            C4335c c4335c6 = c4335c2;
            if (z3) {
                C4336d.C4337a c4337a2 = this.f13509b;
                Objects.requireNonNull(c4337a2);
                ArrayList arrayList2 = new ArrayList(c4337a2.f13506a);
                int size3 = arrayList2.size();
                int i9 = 0;
                while (true) {
                    z4 = z2;
                    c4335c6 = c4335c2;
                    if (i9 >= size3) {
                        break;
                    }
                    C4099e0 c4099e04 = (C4099e0) arrayList2.get(i9);
                    AbstractC4169a.f13142a.mo1337c(this.f13511d, this.f13508a, this, c4099e04);
                    c4335c6 = this.f13517j;
                    if (c4335c6 != null) {
                        this.f13510c = c4099e04;
                        z4 = true;
                        break;
                    }
                    i9++;
                }
            }
            c4335c3 = c4335c6;
            if (!z4) {
                C4099e0 c4099e05 = c4099e0;
                if (c4099e0 == null) {
                    C4336d.C4337a c4337a3 = this.f13509b;
                    if (!c4337a3.m1081a()) {
                        throw new NoSuchElementException();
                    }
                    List<C4099e0> list2 = c4337a3.f13506a;
                    int i10 = c4337a3.f13507b;
                    c4337a3.f13507b = i10 + 1;
                    c4099e05 = list2.get(i10);
                }
                this.f13510c = c4099e05;
                this.f13516i = 0;
                C4335c c4335c7 = new C4335c(this.f13511d, c4099e05);
                m1080a(c4335c7, false);
                c4335c3 = c4335c7;
            }
        }
        if (z4) {
            Objects.requireNonNull(this.f13513f);
            return c4335c3;
        }
        c4335c3.m1093c(i, i2, i3, i4, z, this.f13512e, this.f13513f);
        AbstractC4169a abstractC4169a = AbstractC4169a.f13142a;
        C4106i c4106i = this.f13511d;
        Objects.requireNonNull((C4128v.C4129a) abstractC4169a);
        c4106i.f12914e.m3288b(c4335c3.f13486c);
        synchronized (this.f13511d) {
            this.f13518k = true;
            AbstractC4169a abstractC4169a2 = AbstractC4169a.f13142a;
            C4106i c4106i2 = this.f13511d;
            Objects.requireNonNull((C4128v.C4129a) abstractC4169a2);
            if (!c4106i2.f12915f) {
                c4106i2.f12915f = true;
                ((ThreadPoolExecutor) C4106i.f12909g).execute(c4106i2.f12912c);
            }
            c4106i2.f12913d.add(c4335c3);
            if (c4335c3.m1088h()) {
                socket = AbstractC4169a.f13142a.mo1338b(this.f13511d, this.f13508a, this);
                c4335c3 = this.f13517j;
            } else {
                socket = null;
            }
        }
        C4171c.m1331e(socket);
        Objects.requireNonNull(this.f13513f);
        return c4335c3;
    }

    /* renamed from: e */
    public final C4335c m1076e(int i, int i2, int i3, int i4, boolean z, boolean z2) throws IOException {
        boolean z3;
        while (true) {
            C4335c m1077d = m1077d(i, i2, i3, i4, z);
            synchronized (this.f13511d) {
                if (m1077d.f13495l == 0) {
                    return m1077d;
                }
                boolean z4 = false;
                if (!m1077d.f13488e.isClosed()) {
                    z4 = false;
                    if (!m1077d.f13488e.isInputShutdown()) {
                        if (m1077d.f13488e.isOutputShutdown()) {
                            z4 = false;
                        } else {
                            C4667f c4667f = m1077d.f13491h;
                            if (c4667f != null) {
                                synchronized (c4667f) {
                                    z3 = c4667f.f14408g;
                                }
                                z4 = !z3;
                            } else {
                                if (z2) {
                                    try {
                                        int soTimeout = m1077d.f13488e.getSoTimeout();
                                        try {
                                            m1077d.f13488e.setSoTimeout(1);
                                            if (m1077d.f13492i.mo8798v()) {
                                                m1077d.f13488e.setSoTimeout(soTimeout);
                                                z4 = false;
                                            } else {
                                                m1077d.f13488e.setSoTimeout(soTimeout);
                                            }
                                        } catch (Throwable th) {
                                            m1077d.f13488e.setSoTimeout(soTimeout);
                                            throw th;
                                            break;
                                        }
                                    } catch (SocketTimeoutException e) {
                                    } catch (IOException e2) {
                                        z4 = false;
                                    }
                                }
                                z4 = true;
                            }
                        }
                    }
                }
                if (z4) {
                    return m1077d;
                }
                m1075f();
            }
        }
    }

    /* renamed from: f */
    public void m1075f() {
        C4335c c4335c;
        Socket m1078c;
        synchronized (this.f13511d) {
            c4335c = this.f13517j;
            m1078c = m1078c(true, false, false);
            if (this.f13517j != null) {
                c4335c = null;
            }
        }
        C4171c.m1331e(m1078c);
        if (c4335c != null) {
            Objects.requireNonNull(this.f13513f);
        }
    }

    /* renamed from: g */
    public void m1074g() {
        C4335c c4335c;
        Socket m1078c;
        synchronized (this.f13511d) {
            c4335c = this.f13517j;
            m1078c = m1078c(false, true, false);
            if (this.f13517j != null) {
                c4335c = null;
            }
        }
        C4171c.m1331e(m1078c);
        if (c4335c != null) {
            AbstractC4169a.f13142a.mo1336d(this.f13512e, null);
            Objects.requireNonNull(this.f13513f);
            Objects.requireNonNull(this.f13513f);
        }
    }

    /* renamed from: h */
    public void m1073h(IOException iOException) {
        boolean z;
        Socket m1078c;
        C4335c c4335c;
        synchronized (this.f13511d) {
            if (iOException instanceof StreamResetException) {
                int i = ((StreamResetException) iOException).f12490a;
                if (i == 5) {
                    int i2 = this.f13516i + 1;
                    this.f13516i = i2;
                    if (i2 > 1) {
                        this.f13510c = null;
                        z = true;
                    }
                    z = false;
                } else {
                    if (i != 6) {
                        this.f13510c = null;
                        z = true;
                    }
                    z = false;
                }
            } else {
                C4335c c4335c2 = this.f13517j;
                if (c4335c2 != null && (!c4335c2.m1088h() || (iOException instanceof ConnectionShutdownException))) {
                    if (this.f13517j.f13495l == 0) {
                        C4099e0 c4099e0 = this.f13510c;
                        if (c4099e0 != null && iOException != null) {
                            this.f13515h.m1084a(c4099e0, iOException);
                        }
                        this.f13510c = null;
                    }
                    z = true;
                }
                z = false;
            }
            C4335c c4335c3 = this.f13517j;
            m1078c = m1078c(z, false, true);
            c4335c = null;
            if (this.f13517j == null) {
                c4335c = !this.f13518k ? null : c4335c3;
            }
        }
        C4171c.m1331e(m1078c);
        if (c4335c != null) {
            Objects.requireNonNull(this.f13513f);
        }
    }

    /* renamed from: i */
    public void m1072i(boolean z, AbstractC4433c abstractC4433c, long j, IOException iOException) {
        C4335c c4335c;
        Socket m1078c;
        boolean z2;
        Objects.requireNonNull(this.f13513f);
        synchronized (this.f13511d) {
            if (abstractC4433c != null) {
                if (abstractC4433c == this.f13521n) {
                    if (!z) {
                        this.f13517j.f13495l++;
                    }
                    c4335c = this.f13517j;
                    m1078c = m1078c(z, false, true);
                    if (this.f13517j != null) {
                        c4335c = null;
                    }
                    z2 = this.f13519l;
                }
            }
            throw new IllegalStateException("expected " + this.f13521n + " but was " + abstractC4433c);
        }
        C4171c.m1331e(m1078c);
        if (c4335c != null) {
            Objects.requireNonNull(this.f13513f);
        }
        if (iOException != null) {
            AbstractC4169a.f13142a.mo1336d(this.f13512e, iOException);
            Objects.requireNonNull(this.f13513f);
        } else if (!z2) {
        } else {
            AbstractC4169a.f13142a.mo1336d(this.f13512e, null);
            Objects.requireNonNull(this.f13513f);
        }
    }

    public String toString() {
        C4335c m1079b = m1079b();
        return m1079b != null ? m1079b.toString() : this.f13508a.toString();
    }
}
