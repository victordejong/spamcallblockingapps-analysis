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
        int d = m11235d();
        boolean z = false;
        boolean z2 = (d & 128) != 0;
        int pow = (int) Math.pow(2.0d, (d & 7) + 1);
        C0722b bVar = this.f3485c.f3473d;
        if ((d & 64) != 0) {
            z = true;
        }
        bVar.f3463e = z;
        if (z2) {
            bVar.f3469k = m11232g(pow);
        } else {
            bVar.f3469k = null;
        }
        this.f3485c.f3473d.f3468j = this.f3484b.position();
        m11221r();
        if (!m11237b()) {
            C0723c cVar = this.f3485c;
            cVar.f3472c++;
            cVar.f3474e.add(cVar.f3473d);
        }
    }

    /* renamed from: f */
    private void m11233f() {
        int d = m11235d();
        this.f3486d = d;
        if (d > 0) {
            int i = 0;
            d = 0;
            while (true) {
                try {
                    int i2 = this.f3486d;
                    if (i < i2) {
                        int i3 = i2 - i;
                        d = i3;
                        this.f3484b.get(this.f3483a, i, i3);
                        i += i3;
                        d = i3;
                    } else {
                        return;
                    }
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + d + " blockSize: " + this.f3486d, e);
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
            int d = m11235d();
            if (d == 33) {
                int d2 = m11235d();
                if (d2 != 1) {
                    if (d2 == 249) {
                        this.f3485c.f3473d = new C0722b();
                        m11229j();
                    } else if (d2 != 254 && d2 == 255) {
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
            } else if (d == 44) {
                C0723c cVar = this.f3485c;
                if (cVar.f3473d == null) {
                    cVar.f3473d = new C0722b();
                }
                m11234e();
            } else if (d != 59) {
                this.f3485c.f3471b = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: j */
    private void m11229j() {
        m11235d();
        int d = m11235d();
        C0722b bVar = this.f3485c.f3473d;
        int i = (d & 28) >> 2;
        bVar.f3465g = i;
        boolean z = true;
        if (i == 0) {
            bVar.f3465g = 1;
        }
        if ((d & 1) == 0) {
            z = false;
        }
        bVar.f3464f = z;
        int n = m11225n();
        int i2 = n;
        if (n < 2) {
            i2 = 10;
        }
        C0722b bVar2 = this.f3485c.f3473d;
        bVar2.f3467i = i2 * 10;
        bVar2.f3466h = m11235d();
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
        if (this.f3485c.f3477h && !m11237b()) {
            C0723c cVar = this.f3485c;
            cVar.f3470a = m11232g(cVar.f3478i);
            C0723c cVar2 = this.f3485c;
            cVar2.f3481l = cVar2.f3470a[cVar2.f3479j];
        }
    }

    /* renamed from: l */
    private void m11227l() {
        this.f3485c.f3475f = m11225n();
        this.f3485c.f3476g = m11225n();
        int d = m11235d();
        C0723c cVar = this.f3485c;
        cVar.f3477h = (d & 128) != 0;
        cVar.f3478i = (int) Math.pow(2.0d, (d & 7) + 1);
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
        int d;
        do {
            d = m11235d();
            this.f3484b.position(Math.min(this.f3484b.position() + d, this.f3484b.limit()));
        } while (d > 0);
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
        if (this.f3484b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        } else if (m11237b()) {
            return this.f3485c;
        } else {
            m11228k();
            if (!m11237b()) {
                m11231h();
                C0723c cVar = this.f3485c;
                if (cVar.f3472c < 0) {
                    cVar.f3471b = 1;
                }
            }
            return this.f3485c;
        }
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
