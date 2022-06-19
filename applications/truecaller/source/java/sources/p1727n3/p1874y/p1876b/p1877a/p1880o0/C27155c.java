package p1727n3.p1874y.p1876b.p1877a.p1880o0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.o0.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/o0/c.class */
public class C27155c {

    /* renamed from: a */
    public int f75983a;

    /* renamed from: b */
    public final C27151a f75984b = new C27151a();

    /* renamed from: c */
    public ByteBuffer f75985c;

    /* renamed from: d */
    public long f75986d;

    /* renamed from: e */
    public ByteBuffer f75987e;

    /* renamed from: f */
    public final int f75988f;

    public C27155c(int i) {
        this.f75988f = i;
    }

    /* renamed from: a */
    public void m785a() {
        this.f75983a = 0;
        ByteBuffer byteBuffer = this.f75985c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    /* renamed from: b */
    public final ByteBuffer m784b(int i) {
        int i2 = this.f75988f;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f75985c;
        StringBuilder m8546z = C22128a.m8546z(44, "Buffer too small (", byteBuffer == null ? 0 : byteBuffer.capacity(), " < ", i);
        m8546z.append(")");
        throw new IllegalStateException(m8546z.toString());
    }

    @EnsuresNonNull({RemoteMessageConst.DATA})
    /* renamed from: c */
    public void m783c(int i) {
        ByteBuffer byteBuffer = this.f75985c;
        if (byteBuffer == null) {
            this.f75985c = m784b(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f75985c.position();
        int i2 = i + position;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer m784b = m784b(i2);
        if (position > 0) {
            this.f75985c.position(0);
            this.f75985c.limit(position);
            m784b.put(this.f75985c);
        }
        this.f75985c = m784b;
    }

    /* renamed from: d */
    public final void m782d() {
        this.f75985c.flip();
        ByteBuffer byteBuffer = this.f75987e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
    }

    /* renamed from: e */
    public final boolean m781e(int i) {
        return (this.f75983a & i) == i;
    }

    /* renamed from: f */
    public final boolean m780f() {
        return m781e(Integer.MIN_VALUE);
    }

    /* renamed from: g */
    public final boolean m779g() {
        return m781e(4);
    }
}
