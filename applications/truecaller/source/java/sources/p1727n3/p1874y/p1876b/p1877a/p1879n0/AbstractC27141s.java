package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: n3.y.b.a.n0.s */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/s.class */
public abstract class AbstractC27141s implements AbstractC27121g {

    /* renamed from: e */
    public ByteBuffer f75897e;

    /* renamed from: f */
    public ByteBuffer f75898f;

    /* renamed from: g */
    public boolean f75899g;

    /* renamed from: c */
    public int f75895c = -1;

    /* renamed from: b */
    public int f75894b = -1;

    /* renamed from: d */
    public int f75896d = -1;

    public AbstractC27141s() {
        ByteBuffer byteBuffer = AbstractC27121g.f75837a;
        this.f75897e = byteBuffer;
        this.f75898f = byteBuffer;
    }

    /* renamed from: a */
    public void m822a() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: c */
    public boolean mo821c() {
        return this.f75899g && this.f75898f == AbstractC27121g.f75837a;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: e */
    public final void mo820e() {
        this.f75899g = true;
        m815k();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: f */
    public ByteBuffer mo819f() {
        ByteBuffer byteBuffer = this.f75898f;
        this.f75898f = AbstractC27121g.f75837a;
        return byteBuffer;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    public final void flush() {
        this.f75898f = AbstractC27121g.f75837a;
        this.f75899g = false;
        m822a();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: g */
    public int mo818g() {
        return this.f75895c;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: h */
    public int mo817h() {
        return this.f75894b;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: i */
    public int mo816i() {
        return this.f75896d;
    }

    /* renamed from: k */
    public void m815k() {
    }

    /* renamed from: l */
    public void m814l() {
    }

    /* renamed from: m */
    public final ByteBuffer m813m(int i) {
        if (this.f75897e.capacity() < i) {
            this.f75897e = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f75897e.clear();
        }
        ByteBuffer byteBuffer = this.f75897e;
        this.f75898f = byteBuffer;
        return byteBuffer;
    }

    /* renamed from: n */
    public final boolean m812n(int i, int i2, int i3) {
        if (i == this.f75894b && i2 == this.f75895c && i3 == this.f75896d) {
            return false;
        }
        this.f75894b = i;
        this.f75895c = i2;
        this.f75896d = i3;
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    public final void reset() {
        flush();
        this.f75897e = AbstractC27121g.f75837a;
        this.f75894b = -1;
        this.f75895c = -1;
        this.f75896d = -1;
        m814l();
    }
}
