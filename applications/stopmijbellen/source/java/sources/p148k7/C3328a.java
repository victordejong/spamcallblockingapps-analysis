package p148k7;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.util.Objects;
import p124i4.C3102d;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3513c;
import p159l7.AbstractC3517f;
import p255u7.C4534a;
/* renamed from: k7.a */
/* loaded from: classes2-dex2jar.jar:k7/a.class */
public class C3328a implements AbstractC3356j {

    /* renamed from: a */
    public C3377v f11284a;

    /* renamed from: b */
    public SelectionKey f11285b;

    /* renamed from: c */
    public C3343h f11286c;

    /* renamed from: d */
    public C3358l f11287d = new C3358l();

    /* renamed from: e */
    public C4534a f11288e;

    /* renamed from: f */
    public boolean f11289f;

    /* renamed from: g */
    public AbstractC3517f f11290g;

    /* renamed from: h */
    public AbstractC3513c f11291h;

    /* renamed from: i */
    public AbstractC3510a f11292i;

    /* renamed from: j */
    public boolean f11293j;

    /* renamed from: k */
    public AbstractC3510a f11294k;

    /* renamed from: k7.a$a */
    /* loaded from: classes2-dex2jar.jar:k7/a$a.class */
    public class RunnableC3329a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3358l f11295a;

        public RunnableC3329a(C3358l c3358l) {
            C3328a.this = r4;
            this.f11295a = c3358l;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3328a.this.mo1479k(this.f11295a);
        }
    }

    @Override // p148k7.AbstractC3356j, p148k7.AbstractC3360m, p148k7.AbstractC3362o
    /* renamed from: a */
    public C3343h mo940a() {
        return this.f11286c;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: b */
    public void mo939b(AbstractC3513c abstractC3513c) {
        this.f11291h = abstractC3513c;
    }

    /* renamed from: c */
    public final void m2372c() {
        this.f11285b.cancel();
        try {
            this.f11284a.f11413a.close();
        } catch (IOException e) {
        }
    }

    @Override // p148k7.AbstractC3360m
    public void close() {
        m2372c();
        m2370o(null);
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: e */
    public boolean mo938e() {
        return false;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: f */
    public String mo937f() {
        return null;
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: g */
    public void mo1480g(AbstractC3510a abstractC3510a) {
        this.f11292i = abstractC3510a;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: h */
    public void mo936h(AbstractC3510a abstractC3510a) {
        this.f11294k = abstractC3510a;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: i */
    public AbstractC3513c mo935i() {
        return this.f11291h;
    }

    @Override // p148k7.AbstractC3362o
    public boolean isOpen() {
        return this.f11284a.f11414b.isConnected() && this.f11285b.isValid();
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: j */
    public void mo1267j() {
        C3377v c3377v = this.f11284a;
        Objects.requireNonNull(c3377v);
        try {
            c3377v.f11414b.socket().shutdownOutput();
        } catch (Exception e) {
        }
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: k */
    public void mo1479k(C3358l c3358l) {
        if (this.f11286c.f11338e != Thread.currentThread()) {
            this.f11286c.m2355k(new RunnableC3329a(c3358l));
        } else if (this.f11284a.f11414b.isConnected()) {
            try {
                int i = c3358l.f11382c;
                ByteBuffer[] m2347f = c3358l.m2347f();
                this.f11284a.f11414b.write(m2347f);
                for (ByteBuffer byteBuffer : m2347f) {
                    c3358l.m2352a(byteBuffer);
                }
                int i2 = c3358l.f11382c;
                if (!this.f11285b.isValid()) {
                    throw new IOException(new CancelledKeyException());
                }
                if (i2 > 0) {
                    SelectionKey selectionKey = this.f11285b;
                    selectionKey.interestOps(selectionKey.interestOps() | 4);
                } else {
                    SelectionKey selectionKey2 = this.f11285b;
                    selectionKey2.interestOps(selectionKey2.interestOps() & (-5));
                }
                Objects.requireNonNull(this.f11286c);
            } catch (IOException e) {
                m2372c();
                m2369p(e);
                m2370o(e);
            }
        }
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: m */
    public void mo1478m(AbstractC3517f abstractC3517f) {
        this.f11290g = abstractC3517f;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: n */
    public int m2371n() {
        char c;
        int i;
        if (this.f11287d.m2344i()) {
            C3102d.m2623p(this, this.f11287d);
        }
        ByteBuffer m863a = this.f11288e.m863a();
        try {
            c = this.f11284a.read(m863a);
        } catch (Exception e) {
            m2372c();
            m2369p(e);
            m2370o(e);
            c = 65535;
        }
        boolean z = false;
        int i2 = (c > 0L ? 1 : (c == 0L ? 0 : -1));
        if (i2 < 0) {
            m2372c();
            i = 0;
            z = true;
        } else {
            i = (int) (0 + c);
        }
        if (i2 > 0) {
            this.f11288e.m861c(c);
            m863a.flip();
            this.f11287d.m2352a(m863a);
            C3102d.m2623p(this, this.f11287d);
        } else {
            C3358l.m2340m(m863a);
        }
        if (z) {
            m2369p(null);
            m2370o(null);
        }
        return i;
    }

    /* renamed from: o */
    public void m2370o(Exception exc) {
        if (this.f11289f) {
            return;
        }
        this.f11289f = true;
        AbstractC3510a abstractC3510a = this.f11292i;
        if (abstractC3510a == null) {
            return;
        }
        abstractC3510a.mo1098a(exc);
        this.f11292i = null;
    }

    /* renamed from: p */
    public void m2369p(Exception exc) {
        if (!this.f11287d.m2344i() && !this.f11293j) {
            this.f11293j = true;
            AbstractC3510a abstractC3510a = this.f11294k;
            if (abstractC3510a == null) {
                return;
            }
            abstractC3510a.mo1098a(exc);
        }
    }
}
