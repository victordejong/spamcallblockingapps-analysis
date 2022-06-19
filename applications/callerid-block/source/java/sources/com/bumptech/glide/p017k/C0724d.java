package com.bumptech.glide.p017k;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: com.bumptech.glide.k.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/d.class */
public class C0724d {

    /* renamed from: b */
    private ByteBuffer f3484b;

    /* renamed from: c */
    private C0723c f3485c;

    /* renamed from: a */
    private final byte[] f3483a = new byte[256];

    /* renamed from: d */
    private int f3486d = 0;

    /* renamed from: b */
    private boolean m11237b() {
        return this.f3485c.f3471b != 0;
    }

    /* renamed from: d */
    private int m11235d() {
        int i;
        try {
            i = this.f3484b.get() & 255;
        } catch (Exception e) {
            this.f3485c.f3471b = 1;
            i = 0;
        }
        return i;
    }

    /* renamed from: e */
    private void m11234e() {
        this.f3485c.f3473d.f3459a = m11225n();
        this.f3485c.f3473d.f3460b = m11225n();
        this.f3485c.f3473d.f3461c = m11225n();
        this.f3485c.f3473d.f3462d = m11225n();
        int m11235d = m11235d();
        boolean z = false;
        boolean z2 = (m11235d & 128) != 0;
        int pow = (int) Math.pow(2.0d, (m11235d & 7) + 1);
        C0722b c0722b = this.f3485c.f3473d;
        if ((m11235d & 64) != 0) {
            z = true;
        }
        c0722b.f3463e = z;
        if (z2) {
            c0722b.f3469k = m11232g(pow);
        } else {
            c0722b.f3469k = null;
        }
        this.f3485c.f3473d.f3468j = this.f3484b.position();
        m11221r();
        if (m11237b()) {
            return;
        }
        C0723c c0723c = this.f3485c;
        c0723c.f3472c++;
        c0723c.f3474e.add(c0723c.f3473d);
    }

    /* renamed from: f */
    private void m11233f() {
        int m11235d = m11235d();
        this.f3486d = m11235d;
        if (m11235d > 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                try {
                    m11235d = i2;
                    int i3 = this.f3486d;
                    if (i >= i3) {
                        return;
                    }
                    int i4 = i3 - i;
                    m11235d = i4;
                    this.f3484b.get(this.f3483a, i, i4);
                    i += i4;
                    i2 = i4;
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + m11235d + " blockSize: " + this.f3486d, e);
                    }
                    this.f3485c.f3471b = 1;
                    return;
                }
            }
        }
    }

    /* renamed from: g */
    private int[] m11232g(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f3484b.get(bArr);
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
            this.f3485c.f3471b = 1;
        }
        return iArr;
    }

    /* renamed from: h */
    private void m11231h() {
        m11230i(Integer.MAX_VALUE);
    }

    /* renamed from: i */
    private void m11230i(int i) {
        boolean z = false;
        while (!z && !m11237b() && this.f3485c.f3472c <= i) {
            int m11235d = m11235d();
            if (m11235d == 33) {
                int m11235d2 = m11235d();
                if (m11235d2 != 1) {
                    if (m11235d2 == 249) {
                        this.f3485c.f3473d = new C0722b();
                        m11229j();
                    } else if (m11235d2 != 254 && m11235d2 == 255) {
                        m11233f();
                        StringBuilder sb = new StringBuilder();
                        for (int i2 = 0; i2 < 11; i2++) {
                            sb.append((char) this.f3483a[i2]);
                        }
                        if (sb.toString().equals("NETSCAPE2.0")) {
                            m11226m();
                        }
                    }
                }
                m11222q();
            } else if (m11235d == 44) {
                C0723c c0723c = this.f3485c;
                if (c0723c.f3473d == null) {
                    c0723c.f3473d = new C0722b();
                }
                m11234e();
            } else if (m11235d != 59) {
                this.f3485c.f3471b = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: j */
    private void m11229j() {
        m11235d();
        int m11235d = m11235d();
        C0722b c0722b = this.f3485c.f3473d;
        int i = (m11235d & 28) >> 2;
        c0722b.f3465g = i;
        boolean z = true;
        if (i == 0) {
            c0722b.f3465g = 1;
        }
        if ((m11235d & 1) == 0) {
            z = false;
        }
        c0722b.f3464f = z;
        int m11225n = m11225n();
        int i2 = m11225n;
        if (m11225n < 2) {
            i2 = 10;
        }
        C0722b c0722b2 = this.f3485c.f3473d;
        c0722b2.f3467i = i2 * 10;
        c0722b2.f3466h = m11235d();
        m11235d();
    }

    /* renamed from: k */
    private void m11228k() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) m11235d());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f3485c.f3471b = 1;
            return;
        }
        m11227l();
        if (!this.f3485c.f3477h || m11237b()) {
            return;
        }
        C0723c c0723c = this.f3485c;
        c0723c.f3470a = m11232g(c0723c.f3478i);
        C0723c c0723c2 = this.f3485c;
        c0723c2.f3481l = c0723c2.f3470a[c0723c2.f3479j];
    }

    /* renamed from: l */
    private void m11227l() {
        this.f3485c.f3475f = m11225n();
        this.f3485c.f3476g = m11225n();
        int m11235d = m11235d();
        C0723c c0723c = this.f3485c;
        c0723c.f3477h = (m11235d & 128) != 0;
        c0723c.f3478i = (int) Math.pow(2.0d, (m11235d & 7) + 1);
        this.f3485c.f3479j = m11235d();
        this.f3485c.f3480k = m11235d();
    }

    /* renamed from: m */
    private void m11226m() {
        do {
            m11233f();
            byte[] bArr = this.f3483a;
            if (bArr[0] == 1) {
                byte b = bArr[1];
                this.f3485c.f3482m = ((bArr[2] & 255) << 8) | (b & 255);
            }
            if (this.f3486d <= 0) {
                return;
            }
        } while (!m11237b());
    }

    /* renamed from: n */
    private int m11225n() {
        return this.f3484b.getShort();
    }

    /* renamed from: o */
    private void m11224o() {
        this.f3484b = null;
        Arrays.fill(this.f3483a, (byte) 0);
        this.f3485c = new C0723c();
        this.f3486d = 0;
    }

    /* renamed from: q */
    private void m11222q() {
        int m11235d;
        do {
            m11235d = m11235d();
            this.f3484b.position(Math.min(this.f3484b.position() + m11235d, this.f3484b.limit()));
        } while (m11235d > 0);
    }

    /* renamed from: r */
    private void m11221r() {
        m11235d();
        m11222q();
    }

    /* renamed from: a */
    public void m11238a() {
        this.f3484b = null;
        this.f3485c = null;
    }

    /* renamed from: c */
    public C0723c m11236c() {
        if (this.f3484b != null) {
            if (m11237b()) {
                return this.f3485c;
            }
            m11228k();
            if (!m11237b()) {
                m11231h();
                C0723c c0723c = this.f3485c;
                if (c0723c.f3472c < 0) {
                    c0723c.f3471b = 1;
                }
            }
            return this.f3485c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    /* renamed from: p */
    public C0724d m11223p(ByteBuffer byteBuffer) {
        m11224o();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f3484b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f3484b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
