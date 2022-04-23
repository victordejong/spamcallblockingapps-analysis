package p131c.p161d.p170b.p188c.p208u0;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: c.d.b.c.u0.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/u0/d.class */
public class C3016d extends AbstractC3011a {

    /* renamed from: b */
    public final C3012b f10902b = new C3012b();

    /* renamed from: c */
    public ByteBuffer f10903c;

    /* renamed from: d */
    public long f10904d;

    /* renamed from: e */
    public ByteBuffer f10905e;

    /* renamed from: f */
    public final int f10906f;

    public C3016d(int i) {
        this.f10906f = i;
    }

    /* renamed from: i */
    public static C3016d m28129i() {
        return new C3016d(0);
    }

    @Override // p131c.p161d.p170b.p188c.p208u0.AbstractC3011a
    /* renamed from: a */
    public void mo28136a() {
        super.mo28136a();
        ByteBuffer byteBuffer = this.f10903c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f10905e;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
    }

    /* renamed from: d */
    public final ByteBuffer m28135d(int i) {
        int i2 = this.f10906f;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f10903c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        throw new IllegalStateException("Buffer too small (" + capacity + " < " + i + ")");
    }

    @EnsuresNonNull({"data"})
    /* renamed from: e */
    public void m28134e(int i) {
        ByteBuffer byteBuffer = this.f10903c;
        if (byteBuffer == null) {
            this.f10903c = m28135d(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f10903c.position();
        int i2 = i + position;
        if (capacity < i2) {
            ByteBuffer d = m28135d(i2);
            if (position > 0) {
                this.f10903c.flip();
                d.put(this.f10903c);
            }
            this.f10903c = d;
        }
    }

    /* renamed from: f */
    public final void m28133f() {
        this.f10903c.flip();
        ByteBuffer byteBuffer = this.f10905e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
    }

    @EnsuresNonNull({"supplementalData"})
    /* renamed from: f */
    public void m28132f(int i) {
        ByteBuffer byteBuffer = this.f10905e;
        if (byteBuffer == null || byteBuffer.capacity() < i) {
            this.f10905e = ByteBuffer.allocate(i);
        } else {
            this.f10905e.clear();
        }
    }

    /* renamed from: g */
    public final boolean m28131g() {
        return m28146b(1073741824);
    }

    /* renamed from: h */
    public final boolean m28130h() {
        return this.f10903c == null && this.f10906f == 0;
    }
}
