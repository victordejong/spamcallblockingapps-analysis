package p193e.p1577m.p1578a.p1596c.p1600e1;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.e1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/e1/e.class */
public class C24265e extends AbstractC24259a {

    /* renamed from: a */
    public final C24260b f67300a = new C24260b();

    /* renamed from: b */
    public ByteBuffer f67301b;

    /* renamed from: c */
    public boolean f67302c;

    /* renamed from: d */
    public long f67303d;

    /* renamed from: e */
    public ByteBuffer f67304e;

    /* renamed from: f */
    public final int f67305f;

    public C24265e(int i) {
        this.f67305f = i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24259a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.f67301b;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f67304e;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f67302c = false;
    }

    /* renamed from: f */
    public final ByteBuffer m5330f(int i) {
        int i2 = this.f67305f;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f67301b;
        throw new IllegalStateException(C22128a.m8591n2("Buffer too small (", byteBuffer == null ? 0 : byteBuffer.capacity(), " < ", i, ")"));
    }

    @EnsuresNonNull({RemoteMessageConst.DATA})
    /* renamed from: g */
    public void m5329g(int i) {
        ByteBuffer byteBuffer = this.f67301b;
        if (byteBuffer == null) {
            this.f67301b = m5330f(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f67301b.position();
        int i2 = i + position;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer m5330f = m5330f(i2);
        m5330f.order(this.f67301b.order());
        if (position > 0) {
            this.f67301b.flip();
            m5330f.put(this.f67301b);
        }
        this.f67301b = m5330f;
    }

    /* renamed from: h */
    public final void m5328h() {
        this.f67301b.flip();
        ByteBuffer byteBuffer = this.f67304e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
    }
}
