package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g;
/* renamed from: n3.y.b.a.n0.b0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/b0.class */
public final class C27112b0 implements AbstractC27121g {

    /* renamed from: h */
    public boolean f75811h;

    /* renamed from: i */
    public C27108a0 f75812i;

    /* renamed from: j */
    public ByteBuffer f75813j;

    /* renamed from: k */
    public ShortBuffer f75814k;

    /* renamed from: l */
    public ByteBuffer f75815l;

    /* renamed from: m */
    public long f75816m;

    /* renamed from: n */
    public long f75817n;

    /* renamed from: o */
    public boolean f75818o;

    /* renamed from: d */
    public float f75807d = 1.0f;

    /* renamed from: e */
    public float f75808e = 1.0f;

    /* renamed from: b */
    public int f75805b = -1;

    /* renamed from: c */
    public int f75806c = -1;

    /* renamed from: f */
    public int f75809f = -1;

    /* renamed from: g */
    public int f75810g = -1;

    public C27112b0() {
        ByteBuffer byteBuffer = AbstractC27121g.f75837a;
        this.f75813j = byteBuffer;
        this.f75814k = byteBuffer.asShortBuffer();
        this.f75815l = byteBuffer;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: b */
    public boolean mo837b() {
        return this.f75806c != -1 && (Math.abs(this.f75807d - 1.0f) >= 0.01f || Math.abs(this.f75808e - 1.0f) >= 0.01f || this.f75809f != this.f75806c);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: c */
    public boolean mo821c() {
        C27108a0 c27108a0;
        return this.f75818o && ((c27108a0 = this.f75812i) == null || (c27108a0.f75791m * c27108a0.f75780b) * 2 == 0);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: d */
    public void mo836d(ByteBuffer byteBuffer) {
        C27108a0 c27108a0 = this.f75812i;
        Objects.requireNonNull(c27108a0);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f75816m += remaining;
            int remaining2 = asShortBuffer.remaining();
            int i = c27108a0.f75780b;
            int i2 = remaining2 / i;
            short[] m849c = c27108a0.m849c(c27108a0.f75788j, c27108a0.f75789k, i2);
            c27108a0.f75788j = m849c;
            asShortBuffer.get(m849c, c27108a0.f75789k * c27108a0.f75780b, ((i * i2) * 2) / 2);
            c27108a0.f75789k += i2;
            c27108a0.m846f();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int i3 = c27108a0.f75791m * c27108a0.f75780b * 2;
        if (i3 > 0) {
            if (this.f75813j.capacity() < i3) {
                ByteBuffer order = ByteBuffer.allocateDirect(i3).order(ByteOrder.nativeOrder());
                this.f75813j = order;
                this.f75814k = order.asShortBuffer();
            } else {
                this.f75813j.clear();
                this.f75814k.clear();
            }
            ShortBuffer shortBuffer = this.f75814k;
            int min = Math.min(shortBuffer.remaining() / c27108a0.f75780b, c27108a0.f75791m);
            shortBuffer.put(c27108a0.f75790l, 0, c27108a0.f75780b * min);
            int i4 = c27108a0.f75791m - min;
            c27108a0.f75791m = i4;
            short[] sArr = c27108a0.f75790l;
            int i5 = c27108a0.f75780b;
            System.arraycopy(sArr, min * i5, sArr, 0, i4 * i5);
            this.f75817n += i3;
            this.f75813j.limit(i3);
            this.f75815l = this.f75813j;
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: e */
    public void mo820e() {
        int i;
        C27108a0 c27108a0 = this.f75812i;
        if (c27108a0 != null) {
            int i2 = c27108a0.f75789k;
            float f = c27108a0.f75781c;
            float f2 = c27108a0.f75782d;
            int i3 = c27108a0.f75791m + ((int) ((((i2 / (f / f2)) + c27108a0.f75793o) / (c27108a0.f75783e * f2)) + 0.5f));
            c27108a0.f75788j = c27108a0.m849c(c27108a0.f75788j, i2, (c27108a0.f75786h * 2) + i2);
            int i4 = 0;
            while (true) {
                i = c27108a0.f75786h * 2;
                int i5 = c27108a0.f75780b;
                if (i4 >= i * i5) {
                    break;
                }
                c27108a0.f75788j[(i5 * i2) + i4] = (short) 0;
                i4++;
            }
            c27108a0.f75789k = i + c27108a0.f75789k;
            c27108a0.m846f();
            if (c27108a0.f75791m > i3) {
                c27108a0.f75791m = i3;
            }
            c27108a0.f75789k = 0;
            c27108a0.f75796r = 0;
            c27108a0.f75793o = 0;
        }
        this.f75818o = true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: f */
    public ByteBuffer mo819f() {
        ByteBuffer byteBuffer = this.f75815l;
        this.f75815l = AbstractC27121g.f75837a;
        return byteBuffer;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    public void flush() {
        if (mo837b()) {
            if (this.f75811h) {
                this.f75812i = new C27108a0(this.f75806c, this.f75805b, this.f75807d, this.f75808e, this.f75809f);
            } else {
                C27108a0 c27108a0 = this.f75812i;
                if (c27108a0 != null) {
                    c27108a0.f75789k = 0;
                    c27108a0.f75791m = 0;
                    c27108a0.f75793o = 0;
                    c27108a0.f75794p = 0;
                    c27108a0.f75795q = 0;
                    c27108a0.f75796r = 0;
                    c27108a0.f75797s = 0;
                    c27108a0.f75798t = 0;
                    c27108a0.f75799u = 0;
                    c27108a0.f75800v = 0;
                }
            }
        }
        this.f75815l = AbstractC27121g.f75837a;
        this.f75816m = 0L;
        this.f75817n = 0L;
        this.f75818o = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: g */
    public int mo818g() {
        return this.f75805b;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: h */
    public int mo817h() {
        return this.f75809f;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: i */
    public int mo816i() {
        return 2;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    /* renamed from: j */
    public boolean mo835j(int i, int i2, int i3) throws AbstractC27121g.C27122a {
        if (i3 == 2) {
            int i4 = this.f75810g;
            int i5 = i4;
            if (i4 == -1) {
                i5 = i;
            }
            if (this.f75806c == i && this.f75805b == i2 && this.f75809f == i5) {
                return false;
            }
            this.f75806c = i;
            this.f75805b = i2;
            this.f75809f = i5;
            this.f75811h = true;
            return true;
        }
        throw new AbstractC27121g.C27122a(i, i2, i3);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g
    public void reset() {
        this.f75807d = 1.0f;
        this.f75808e = 1.0f;
        this.f75805b = -1;
        this.f75806c = -1;
        this.f75809f = -1;
        ByteBuffer byteBuffer = AbstractC27121g.f75837a;
        this.f75813j = byteBuffer;
        this.f75814k = byteBuffer.asShortBuffer();
        this.f75815l = byteBuffer;
        this.f75810g = -1;
        this.f75811h = false;
        this.f75812i = null;
        this.f75816m = 0L;
        this.f75817n = 0L;
        this.f75818o = false;
    }
}
