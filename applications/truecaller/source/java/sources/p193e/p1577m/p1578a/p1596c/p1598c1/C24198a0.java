package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l;
/* renamed from: e.m.a.c.c1.a0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/a0.class */
public final class C24198a0 implements AbstractC24213l {

    /* renamed from: e */
    public AbstractC24213l.C24214a f66968e;

    /* renamed from: f */
    public AbstractC24213l.C24214a f66969f;

    /* renamed from: g */
    public AbstractC24213l.C24214a f66970g;

    /* renamed from: h */
    public AbstractC24213l.C24214a f66971h;

    /* renamed from: i */
    public boolean f66972i;

    /* renamed from: j */
    public C24244z f66973j;

    /* renamed from: k */
    public ByteBuffer f66974k;

    /* renamed from: l */
    public ShortBuffer f66975l;

    /* renamed from: m */
    public ByteBuffer f66976m;

    /* renamed from: n */
    public long f66977n;

    /* renamed from: o */
    public long f66978o;

    /* renamed from: p */
    public boolean f66979p;

    /* renamed from: c */
    public float f66966c = 1.0f;

    /* renamed from: d */
    public float f66967d = 1.0f;

    /* renamed from: b */
    public int f66965b = -1;

    public C24198a0() {
        AbstractC24213l.C24214a c24214a = AbstractC24213l.C24214a.f67022e;
        this.f66968e = c24214a;
        this.f66969f = c24214a;
        this.f66970g = c24214a;
        this.f66971h = c24214a;
        ByteBuffer byteBuffer = AbstractC24213l.f67021a;
        this.f66974k = byteBuffer;
        this.f66975l = byteBuffer.asShortBuffer();
        this.f66976m = byteBuffer;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: a */
    public AbstractC24213l.C24214a mo5436a(AbstractC24213l.C24214a c24214a) throws AbstractC24213l.C24215b {
        if (c24214a.f67025c == 2) {
            int i = this.f66965b;
            int i2 = i;
            if (i == -1) {
                i2 = c24214a.f67023a;
            }
            this.f66968e = c24214a;
            AbstractC24213l.C24214a c24214a2 = new AbstractC24213l.C24214a(i2, c24214a.f67024b, 2);
            this.f66969f = c24214a2;
            this.f66972i = true;
            return c24214a2;
        }
        throw new AbstractC24213l.C24215b(c24214a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: b */
    public boolean mo5402b() {
        return this.f66969f.f67023a != -1 && (Math.abs(this.f66966c - 1.0f) >= 0.01f || Math.abs(this.f66967d - 1.0f) >= 0.01f || this.f66969f.f67023a != this.f66968e.f67023a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: c */
    public boolean mo5435c() {
        C24244z c24244z;
        return this.f66979p && ((c24244z = this.f66973j) == null || (c24244z.f67179m * c24244z.f67168b) * 2 == 0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: d */
    public void mo5401d(ByteBuffer byteBuffer) {
        C24244z c24244z = this.f66973j;
        Objects.requireNonNull(c24244z);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f66977n += remaining;
            int remaining2 = asShortBuffer.remaining();
            int i = c24244z.f67168b;
            int i2 = remaining2 / i;
            short[] m5391c = c24244z.m5391c(c24244z.f67176j, c24244z.f67177k, i2);
            c24244z.f67176j = m5391c;
            asShortBuffer.get(m5391c, c24244z.f67177k * c24244z.f67168b, ((i * i2) * 2) / 2);
            c24244z.f67177k += i2;
            c24244z.m5388f();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int i3 = c24244z.f67179m * c24244z.f67168b * 2;
        if (i3 > 0) {
            if (this.f66974k.capacity() < i3) {
                ByteBuffer order = ByteBuffer.allocateDirect(i3).order(ByteOrder.nativeOrder());
                this.f66974k = order;
                this.f66975l = order.asShortBuffer();
            } else {
                this.f66974k.clear();
                this.f66975l.clear();
            }
            ShortBuffer shortBuffer = this.f66975l;
            int min = Math.min(shortBuffer.remaining() / c24244z.f67168b, c24244z.f67179m);
            shortBuffer.put(c24244z.f67178l, 0, c24244z.f67168b * min);
            int i4 = c24244z.f67179m - min;
            c24244z.f67179m = i4;
            short[] sArr = c24244z.f67178l;
            int i5 = c24244z.f67168b;
            System.arraycopy(sArr, min * i5, sArr, 0, i4 * i5);
            this.f66978o += i3;
            this.f66974k.limit(i3);
            this.f66976m = this.f66974k;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: e */
    public void mo5434e() {
        int i;
        C24244z c24244z = this.f66973j;
        if (c24244z != null) {
            int i2 = c24244z.f67177k;
            float f = c24244z.f67169c;
            float f2 = c24244z.f67170d;
            int i3 = c24244z.f67179m + ((int) ((((i2 / (f / f2)) + c24244z.f67181o) / (c24244z.f67171e * f2)) + 0.5f));
            c24244z.f67176j = c24244z.m5391c(c24244z.f67176j, i2, (c24244z.f67174h * 2) + i2);
            int i4 = 0;
            while (true) {
                i = c24244z.f67174h * 2;
                int i5 = c24244z.f67168b;
                if (i4 >= i * i5) {
                    break;
                }
                c24244z.f67176j[(i5 * i2) + i4] = (short) 0;
                i4++;
            }
            c24244z.f67177k = i + c24244z.f67177k;
            c24244z.m5388f();
            if (c24244z.f67179m > i3) {
                c24244z.f67179m = i3;
            }
            c24244z.f67177k = 0;
            c24244z.f67184r = 0;
            c24244z.f67181o = 0;
        }
        this.f66979p = true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: f */
    public ByteBuffer mo5433f() {
        ByteBuffer byteBuffer = this.f66976m;
        this.f66976m = AbstractC24213l.f67021a;
        return byteBuffer;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    public void flush() {
        if (mo5402b()) {
            AbstractC24213l.C24214a c24214a = this.f66968e;
            this.f66970g = c24214a;
            AbstractC24213l.C24214a c24214a2 = this.f66969f;
            this.f66971h = c24214a2;
            if (this.f66972i) {
                this.f66973j = new C24244z(c24214a.f67023a, c24214a.f67024b, this.f66966c, this.f66967d, c24214a2.f67023a);
            } else {
                C24244z c24244z = this.f66973j;
                if (c24244z != null) {
                    c24244z.f67177k = 0;
                    c24244z.f67179m = 0;
                    c24244z.f67181o = 0;
                    c24244z.f67182p = 0;
                    c24244z.f67183q = 0;
                    c24244z.f67184r = 0;
                    c24244z.f67185s = 0;
                    c24244z.f67186t = 0;
                    c24244z.f67187u = 0;
                    c24244z.f67188v = 0;
                }
            }
        }
        this.f66976m = AbstractC24213l.f67021a;
        this.f66977n = 0L;
        this.f66978o = 0L;
        this.f66979p = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    public void reset() {
        this.f66966c = 1.0f;
        this.f66967d = 1.0f;
        AbstractC24213l.C24214a c24214a = AbstractC24213l.C24214a.f67022e;
        this.f66968e = c24214a;
        this.f66969f = c24214a;
        this.f66970g = c24214a;
        this.f66971h = c24214a;
        ByteBuffer byteBuffer = AbstractC24213l.f67021a;
        this.f66974k = byteBuffer;
        this.f66975l = byteBuffer.asShortBuffer();
        this.f66976m = byteBuffer;
        this.f66965b = -1;
        this.f66972i = false;
        this.f66973j = null;
        this.f66977n = 0L;
        this.f66978o = 0L;
        this.f66979p = false;
    }
}
