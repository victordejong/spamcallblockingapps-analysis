package p193e.p1485h.p1486a.p1493c.p1500p0;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.Objects;
/* renamed from: e.h.a.c.p0.a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/p0/a.class */
public class C22779a {

    /* renamed from: a */
    public int[] f63098a;

    /* renamed from: b */
    public final AbstractC22780a f63099b;

    /* renamed from: c */
    public byte[] f63100c;

    /* renamed from: d */
    public int f63101d;

    /* renamed from: e */
    public int f63102e;

    /* renamed from: f */
    public int f63103f;

    /* renamed from: h */
    public boolean f63105h;

    /* renamed from: i */
    public int f63106i;

    /* renamed from: j */
    public byte[] f63107j;

    /* renamed from: k */
    public int[] f63108k;

    /* renamed from: l */
    public C22783d f63109l;

    /* renamed from: n */
    public byte[] f63111n;

    /* renamed from: o */
    public short[] f63112o;

    /* renamed from: p */
    public Bitmap f63113p;

    /* renamed from: q */
    public ByteBuffer f63114q;

    /* renamed from: r */
    public int f63115r;

    /* renamed from: s */
    public boolean f63116s;

    /* renamed from: t */
    public int f63117t;

    /* renamed from: u */
    public byte[] f63118u;

    /* renamed from: v */
    public byte[] f63119v;

    /* renamed from: m */
    public final int[] f63110m = new int[256];

    /* renamed from: w */
    public int f63120w = 0;

    /* renamed from: x */
    public int f63121x = 0;

    /* renamed from: g */
    public C22782c f63104g = new C22782c();

    /* renamed from: e.h.a.c.p0.a$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/p0/a$a.class */
    public interface AbstractC22780a {
    }

    public C22779a() {
        C22784e c22784e = new C22784e();
        this.f63099b = c22784e;
    }

    /* renamed from: a */
    public final void m7781a(int[] iArr, C22781b c22781b, int i) {
        int i2 = c22781b.f63129h;
        int i3 = this.f63115r;
        int i4 = i2 / i3;
        int i5 = c22781b.f63127f / i3;
        int i6 = c22781b.f63128g / i3;
        int i7 = c22781b.f63126e / i3;
        int i8 = this.f63102e;
        int i9 = (i5 * i8) + i7;
        int i10 = i9;
        while (true) {
            int i11 = i10;
            if (i11 < (i4 * i8) + i9) {
                for (int i12 = i11; i12 < i11 + i6; i12++) {
                    iArr[i12] = i;
                }
                i10 = i11 + this.f63102e;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final Bitmap m7780b() {
        Bitmap.Config config = this.f63105h ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        AbstractC22780a abstractC22780a = this.f63099b;
        int i = this.f63102e;
        int i2 = this.f63101d;
        Objects.requireNonNull((C22784e) abstractC22780a);
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
        createBitmap.setHasAlpha(true);
        return createBitmap;
    }

    /* renamed from: c */
    public Bitmap m7779c() {
        synchronized (this) {
            C22782c c22782c = this.f63104g;
            if (c22782c.f63136d <= 0 || this.f63103f < 0) {
                this.f63117t = 1;
            }
            int i = this.f63117t;
            if (i == 1 || i == 2) {
                return null;
            }
            this.f63117t = 0;
            C22781b c22781b = c22782c.f63137e.get(this.f63103f);
            int i2 = this.f63103f - 1;
            C22781b c22781b2 = i2 >= 0 ? this.f63104g.f63137e.get(i2) : null;
            int[] iArr = c22781b.f63130i;
            if (iArr == null) {
                iArr = this.f63104g.f63138f;
            }
            this.f63098a = iArr;
            if (iArr == null) {
                this.f63117t = 1;
                return null;
            }
            if (c22781b.f63132k) {
                System.arraycopy(iArr, 0, this.f63110m, 0, iArr.length);
                int[] iArr2 = this.f63110m;
                this.f63098a = iArr2;
                iArr2[c22781b.f63131j] = 0;
            }
            return m7774h(c22781b, c22781b2);
        }
    }

    /* renamed from: d */
    public int m7778d(byte[] bArr) {
        int i;
        synchronized (this) {
            if (this.f63109l == null) {
                this.f63109l = new C22783d();
            }
            C22783d c22783d = this.f63109l;
            c22783d.m7767g(bArr);
            C22782c m7772b = c22783d.m7772b();
            this.f63104g = m7772b;
            if (bArr != null) {
                synchronized (this) {
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    synchronized (this) {
                        m7775g(m7772b, wrap, 1);
                    }
                }
            }
            i = this.f63117t;
        }
        return i;
    }

    /* renamed from: e */
    public final int m7777e() {
        try {
            m7776f();
            byte[] bArr = this.f63119v;
            int i = this.f63120w;
            this.f63120w = i + 1;
            return bArr[i] & 255;
        } catch (Exception e) {
            this.f63117t = 1;
            return 0;
        }
    }

    /* renamed from: f */
    public final void m7776f() {
        if (this.f63121x > this.f63120w) {
            return;
        }
        if (this.f63119v == null) {
            Objects.requireNonNull((C22784e) this.f63099b);
            this.f63119v = new byte[16384];
        }
        this.f63120w = 0;
        int min = Math.min(this.f63114q.remaining(), 16384);
        this.f63121x = min;
        this.f63114q.get(this.f63119v, 0, min);
    }

    /* renamed from: g */
    public void m7775g(C22782c c22782c, ByteBuffer byteBuffer, int i) {
        synchronized (this) {
            if (i <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
            int highestOneBit = Integer.highestOneBit(i);
            this.f63117t = 0;
            this.f63104g = c22782c;
            this.f63105h = false;
            this.f63103f = -1;
            this.f63106i = 0;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f63114q = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f63114q.order(ByteOrder.LITTLE_ENDIAN);
            this.f63116s = false;
            Iterator<C22781b> it = c22782c.f63137e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().f63124c == 3) {
                        this.f63116s = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f63115r = highestOneBit;
            int i2 = c22782c.f63144l;
            this.f63102e = i2 / highestOneBit;
            int i3 = c22782c.f63141i;
            this.f63101d = i3 / highestOneBit;
            Objects.requireNonNull((C22784e) this.f63099b);
            this.f63107j = new byte[i2 * i3];
            AbstractC22780a abstractC22780a = this.f63099b;
            int i4 = this.f63102e;
            int i5 = this.f63101d;
            Objects.requireNonNull((C22784e) abstractC22780a);
            this.f63108k = new int[i4 * i5];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
        if (r0.f63134b == r10.f63131j) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02b7  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m7774h(p193e.p1485h.p1486a.p1493c.p1500p0.C22781b r10, p193e.p1485h.p1486a.p1493c.p1500p0.C22781b r11) {
        /*
            Method dump skipped, instructions count: 2215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1500p0.C22779a.m7774h(e.h.a.c.p0.b, e.h.a.c.p0.b):android.graphics.Bitmap");
    }
}
