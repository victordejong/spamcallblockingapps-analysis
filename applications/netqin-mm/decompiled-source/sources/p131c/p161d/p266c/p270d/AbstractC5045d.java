package p131c.p161d.p266c.p270d;

import com.google.common.hash.HashCode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.d.d */
/* loaded from: classes2-dex2jar.jar:c/d/c/d/d.class */
public abstract class AbstractC5045d extends AbstractC5044c {

    /* renamed from: a */
    public final ByteBuffer f17645a;

    /* renamed from: b */
    public final int f17646b;

    /* renamed from: c */
    public final int f17647c;

    public AbstractC5045d(int i) {
        this(i, i);
    }

    public AbstractC5045d(int i, int i2) {
        C4933n.m24791a(i2 % i == 0);
        this.f17645a = ByteBuffer.allocate(i2 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f17646b = i2;
        this.f17647c = i;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5044c
    /* renamed from: a */
    public final AbstractC5047f mo7932a(char c) {
        this.f17645a.putChar(c);
        m24605d();
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public final AbstractC5047f mo7931a(int i) {
        this.f17645a.putInt(i);
        m24605d();
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public final AbstractC5047f mo7929a(long j) {
        this.f17645a.putLong(j);
        m24605d();
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f
    /* renamed from: a */
    public final AbstractC5047f mo7927a(ByteBuffer byteBuffer) {
        ByteOrder order = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            m24604d(byteBuffer);
            return this;
        } finally {
            byteBuffer.order(order);
        }
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5044c, p131c.p161d.p266c.p270d.AbstractC5047f
    /* renamed from: a */
    public final AbstractC5047f mo7926a(byte[] bArr, int i, int i2) {
        m24604d(ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN));
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f
    /* renamed from: a */
    public final HashCode mo7934a() {
        m24606c();
        this.f17645a.flip();
        if (this.f17645a.remaining() > 0) {
            mo7921c(this.f17645a);
            ByteBuffer byteBuffer = this.f17645a;
            byteBuffer.position(byteBuffer.limit());
        }
        return mo7925b();
    }

    /* renamed from: b */
    public abstract HashCode mo7925b();

    /* renamed from: b */
    public abstract void mo7922b(ByteBuffer byteBuffer);

    /* renamed from: c */
    public final void m24606c() {
        this.f17645a.flip();
        while (this.f17645a.remaining() >= this.f17647c) {
            mo7922b(this.f17645a);
        }
        this.f17645a.compact();
    }

    /* renamed from: c */
    public abstract void mo7921c(ByteBuffer byteBuffer);

    /* renamed from: d */
    public final AbstractC5047f m24604d(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.f17645a.remaining()) {
            this.f17645a.put(byteBuffer);
            m24605d();
            return this;
        }
        int i = this.f17646b;
        int position = this.f17645a.position();
        for (int i2 = 0; i2 < i - position; i2++) {
            this.f17645a.put(byteBuffer.get());
        }
        m24606c();
        while (byteBuffer.remaining() >= this.f17647c) {
            mo7922b(byteBuffer);
        }
        this.f17645a.put(byteBuffer);
        return this;
    }

    /* renamed from: d */
    public final void m24605d() {
        if (this.f17645a.remaining() < 8) {
            m24606c();
        }
    }
}
