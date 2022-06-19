package com.bumptech.glide.p207l;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: com.bumptech.glide.l.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/l/d.class */
public class C3988d {

    /* renamed from: b */
    private ByteBuffer f12584b;

    /* renamed from: c */
    private C3987c f12585c;

    /* renamed from: a */
    private final byte[] f12583a = new byte[256];

    /* renamed from: d */
    private int f12586d = 0;

    /* renamed from: b */
    private boolean m23560b() {
        return this.f12585c.f12571b != 0;
    }

    /* renamed from: d */
    private int m23558d() {
        int i;
        try {
            i = this.f12584b.get() & 255;
        } catch (Exception e) {
            this.f12585c.f12571b = 1;
            i = 0;
        }
        return i;
    }

    /* renamed from: e */
    private void m23557e() {
        this.f12585c.f12573d.f12559a = m23548n();
        this.f12585c.f12573d.f12560b = m23548n();
        this.f12585c.f12573d.f12561c = m23548n();
        this.f12585c.f12573d.f12562d = m23548n();
        int m23558d = m23558d();
        boolean z = false;
        boolean z2 = (m23558d & 128) != 0;
        int pow = (int) Math.pow(2.0d, (m23558d & 7) + 1);
        C3986b c3986b = this.f12585c.f12573d;
        if ((m23558d & 64) != 0) {
            z = true;
        }
        c3986b.f12563e = z;
        if (z2) {
            c3986b.f12569k = m23555g(pow);
        } else {
            c3986b.f12569k = null;
        }
        this.f12585c.f12573d.f12568j = this.f12584b.position();
        m23544r();
        if (m23560b()) {
            return;
        }
        C3987c c3987c = this.f12585c;
        c3987c.f12572c++;
        c3987c.f12574e.add(c3987c.f12573d);
    }

    /* renamed from: f */
    private void m23556f() {
        int m23558d = m23558d();
        this.f12586d = m23558d;
        if (m23558d > 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                try {
                    m23558d = i2;
                    int i3 = this.f12586d;
                    if (i >= i3) {
                        return;
                    }
                    int i4 = i3 - i;
                    m23558d = i4;
                    this.f12584b.get(this.f12583a, i, i4);
                    i += i4;
                    i2 = i4;
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + m23558d + " blockSize: " + this.f12586d, e);
                    }
                    this.f12585c.f12571b = 1;
                    return;
                }
            }
        }
    }

    /* renamed from: g */
    private int[] m23555g(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f12584b.get(bArr);
            iArr = null;
            int[] iArr2 = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i2 >= i) {
                    break;
                }
                int i4 = i3 + 1;
                byte b = bArr[i3];
                int i5 = i4 + 1;
                iArr2[i2] = ((b & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3 = i5 + 1;
                i2++;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.f12585c.f12571b = 1;
        }
        return iArr;
    }

    /* renamed from: h */
    private void m23554h() {
        m23553i(Integer.MAX_VALUE);
    }

    /* renamed from: i */
    private void m23553i(int i) {
        boolean z = false;
        while (!z && !m23560b() && this.f12585c.f12572c <= i) {
            int m23558d = m23558d();
            if (m23558d == 33) {
                int m23558d2 = m23558d();
                if (m23558d2 == 1) {
                    m23545q();
                } else if (m23558d2 == 249) {
                    this.f12585c.f12573d = new C3986b();
                    m23552j();
                } else if (m23558d2 == 254) {
                    m23545q();
                } else if (m23558d2 != 255) {
                    m23545q();
                } else {
                    m23556f();
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < 11; i2++) {
                        sb.append((char) this.f12583a[i2]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        m23549m();
                    } else {
                        m23545q();
                    }
                }
            } else if (m23558d == 44) {
                C3987c c3987c = this.f12585c;
                if (c3987c.f12573d == null) {
                    c3987c.f12573d = new C3986b();
                }
                m23557e();
            } else if (m23558d != 59) {
                this.f12585c.f12571b = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: j */
    private void m23552j() {
        m23558d();
        int m23558d = m23558d();
        C3986b c3986b = this.f12585c.f12573d;
        int i = (m23558d & 28) >> 2;
        c3986b.f12565g = i;
        boolean z = true;
        if (i == 0) {
            c3986b.f12565g = 1;
        }
        if ((m23558d & 1) == 0) {
            z = false;
        }
        c3986b.f12564f = z;
        int m23548n = m23548n();
        int i2 = m23548n;
        if (m23548n < 2) {
            i2 = 10;
        }
        C3986b c3986b2 = this.f12585c.f12573d;
        c3986b2.f12567i = i2 * 10;
        c3986b2.f12566h = m23558d();
        m23558d();
    }

    /* renamed from: k */
    private void m23551k() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) m23558d());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f12585c.f12571b = 1;
            return;
        }
        m23550l();
        if (!this.f12585c.f12577h || m23560b()) {
            return;
        }
        C3987c c3987c = this.f12585c;
        c3987c.f12570a = m23555g(c3987c.f12578i);
        C3987c c3987c2 = this.f12585c;
        c3987c2.f12581l = c3987c2.f12570a[c3987c2.f12579j];
    }

    /* renamed from: l */
    private void m23550l() {
        this.f12585c.f12575f = m23548n();
        this.f12585c.f12576g = m23548n();
        int m23558d = m23558d();
        C3987c c3987c = this.f12585c;
        c3987c.f12577h = (m23558d & 128) != 0;
        c3987c.f12578i = (int) Math.pow(2.0d, (m23558d & 7) + 1);
        this.f12585c.f12579j = m23558d();
        this.f12585c.f12580k = m23558d();
    }

    /* renamed from: m */
    private void m23549m() {
        do {
            m23556f();
            byte[] bArr = this.f12583a;
            if (bArr[0] == 1) {
                byte b = bArr[1];
                this.f12585c.f12582m = ((bArr[2] & 255) << 8) | (b & 255);
            }
            if (this.f12586d <= 0) {
                return;
            }
        } while (!m23560b());
    }

    /* renamed from: n */
    private int m23548n() {
        return this.f12584b.getShort();
    }

    /* renamed from: o */
    private void m23547o() {
        this.f12584b = null;
        Arrays.fill(this.f12583a, (byte) 0);
        this.f12585c = new C3987c();
        this.f12586d = 0;
    }

    /* renamed from: q */
    private void m23545q() {
        int m23558d;
        do {
            m23558d = m23558d();
            this.f12584b.position(Math.min(this.f12584b.position() + m23558d, this.f12584b.limit()));
        } while (m23558d > 0);
    }

    /* renamed from: r */
    private void m23544r() {
        m23558d();
        m23545q();
    }

    /* renamed from: a */
    public void m23561a() {
        this.f12584b = null;
        this.f12585c = null;
    }

    /* renamed from: c */
    public C3987c m23559c() {
        if (this.f12584b != null) {
            if (m23560b()) {
                return this.f12585c;
            }
            m23551k();
            if (!m23560b()) {
                m23554h();
                C3987c c3987c = this.f12585c;
                if (c3987c.f12572c < 0) {
                    c3987c.f12571b = 1;
                }
            }
            return this.f12585c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    /* renamed from: p */
    public C3988d m23546p(ByteBuffer byteBuffer) {
        m23547o();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f12584b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f12584b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
