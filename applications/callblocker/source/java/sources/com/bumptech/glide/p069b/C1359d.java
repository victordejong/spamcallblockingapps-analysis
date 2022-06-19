package com.bumptech.glide.p069b;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: com.bumptech.glide.b.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/d.class */
public class C1359d {

    /* renamed from: b */
    private ByteBuffer f4508b;

    /* renamed from: c */
    private C1358c f4509c;

    /* renamed from: a */
    private final byte[] f4507a = new byte[256];

    /* renamed from: d */
    private int f4510d = 0;

    /* renamed from: a */
    private void m17348a(int i) {
        boolean z = false;
        while (!z && !m17332o() && this.f4509c.f4496c <= i) {
            switch (m17334m()) {
                case 33:
                    switch (m17334m()) {
                        case 1:
                            m17336k();
                            continue;
                        case 249:
                            this.f4509c.f4497d = new C1357b();
                            m17342e();
                            continue;
                        case 254:
                            m17336k();
                            continue;
                        case 255:
                            m17335l();
                            StringBuilder sb = new StringBuilder();
                            for (int i2 = 0; i2 < 11; i2++) {
                                sb.append((char) this.f4507a[i2]);
                            }
                            if (!sb.toString().equals("NETSCAPE2.0")) {
                                m17336k();
                                break;
                            } else {
                                m17340g();
                                continue;
                            }
                        default:
                            m17336k();
                            continue;
                    }
                case 44:
                    if (this.f4509c.f4497d == null) {
                        this.f4509c.f4497d = new C1357b();
                    }
                    m17341f();
                    break;
                case 59:
                    z = true;
                    break;
                default:
                    this.f4509c.f4495b = 1;
                    break;
            }
        }
    }

    /* renamed from: b */
    private int[] m17345b(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f4508b.get(bArr);
            iArr = null;
            int[] iArr2 = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i3 >= i) {
                    break;
                }
                int i4 = i2 + 1;
                byte b = bArr[i2];
                int i5 = i4 + 1;
                i2 = i5 + 1;
                iArr2[i3] = ((b & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3++;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.f4509c.f4495b = 1;
        }
        return iArr;
    }

    /* renamed from: c */
    private void m17344c() {
        this.f4508b = null;
        Arrays.fill(this.f4507a, (byte) 0);
        this.f4509c = new C1358c();
        this.f4510d = 0;
    }

    /* renamed from: d */
    private void m17343d() {
        m17348a(Integer.MAX_VALUE);
    }

    /* renamed from: e */
    private void m17342e() {
        boolean z = true;
        m17334m();
        int m17334m = m17334m();
        this.f4509c.f4497d.f4489g = (m17334m & 28) >> 2;
        if (this.f4509c.f4497d.f4489g == 0) {
            this.f4509c.f4497d.f4489g = 1;
        }
        C1357b c1357b = this.f4509c.f4497d;
        if ((m17334m & 1) == 0) {
            z = false;
        }
        c1357b.f4488f = z;
        int m17333n = m17333n();
        int i = m17333n;
        if (m17333n < 2) {
            i = 10;
        }
        this.f4509c.f4497d.f4491i = i * 10;
        this.f4509c.f4497d.f4490h = m17334m();
        m17334m();
    }

    /* renamed from: f */
    private void m17341f() {
        boolean z = true;
        this.f4509c.f4497d.f4483a = m17333n();
        this.f4509c.f4497d.f4484b = m17333n();
        this.f4509c.f4497d.f4485c = m17333n();
        this.f4509c.f4497d.f4486d = m17333n();
        int m17334m = m17334m();
        boolean z2 = (m17334m & 128) != 0;
        int pow = (int) Math.pow(2.0d, (m17334m & 7) + 1);
        C1357b c1357b = this.f4509c.f4497d;
        if ((m17334m & 64) == 0) {
            z = false;
        }
        c1357b.f4487e = z;
        if (z2) {
            this.f4509c.f4497d.f4493k = m17345b(pow);
        } else {
            this.f4509c.f4497d.f4493k = null;
        }
        this.f4509c.f4497d.f4492j = this.f4508b.position();
        m17337j();
        if (m17332o()) {
            return;
        }
        this.f4509c.f4496c++;
        this.f4509c.f4498e.add(this.f4509c.f4497d);
    }

    /* renamed from: g */
    private void m17340g() {
        do {
            m17335l();
            if (this.f4507a[0] == 1) {
                this.f4509c.f4506m = (this.f4507a[1] & 255) | ((this.f4507a[2] & 255) << 8);
            }
            if (this.f4510d <= 0) {
                return;
            }
        } while (!m17332o());
    }

    /* renamed from: h */
    private void m17339h() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) m17334m());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f4509c.f4495b = 1;
            return;
        }
        m17338i();
        if (!this.f4509c.f4501h || m17332o()) {
            return;
        }
        this.f4509c.f4494a = m17345b(this.f4509c.f4502i);
        this.f4509c.f4505l = this.f4509c.f4494a[this.f4509c.f4503j];
    }

    /* renamed from: i */
    private void m17338i() {
        this.f4509c.f4499f = m17333n();
        this.f4509c.f4500g = m17333n();
        int m17334m = m17334m();
        this.f4509c.f4501h = (m17334m & 128) != 0;
        this.f4509c.f4502i = (int) Math.pow(2.0d, (m17334m & 7) + 1);
        this.f4509c.f4503j = m17334m();
        this.f4509c.f4504k = m17334m();
    }

    /* renamed from: j */
    private void m17337j() {
        m17334m();
        m17336k();
    }

    /* renamed from: k */
    private void m17336k() {
        int m17334m;
        do {
            m17334m = m17334m();
            this.f4508b.position(Math.min(this.f4508b.position() + m17334m, this.f4508b.limit()));
        } while (m17334m > 0);
    }

    /* renamed from: l */
    private void m17335l() {
        this.f4510d = m17334m();
        if (this.f4510d > 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                int i4 = i;
                try {
                    if (i3 >= this.f4510d) {
                        return;
                    }
                    int i5 = i;
                    i = this.f4510d - i3;
                    this.f4508b.get(this.f4507a, i3, i);
                    i2 = i3 + i;
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i3 + " count: " + i4 + " blockSize: " + this.f4510d, e);
                    }
                    this.f4509c.f4495b = 1;
                    return;
                }
            }
        }
    }

    /* renamed from: m */
    private int m17334m() {
        int i = 0;
        try {
            i = this.f4508b.get() & 255;
        } catch (Exception e) {
            this.f4509c.f4495b = 1;
        }
        return i;
    }

    /* renamed from: n */
    private int m17333n() {
        return this.f4508b.getShort();
    }

    /* renamed from: o */
    private boolean m17332o() {
        return this.f4509c.f4495b != 0;
    }

    /* renamed from: a */
    public C1359d m17347a(ByteBuffer byteBuffer) {
        m17344c();
        this.f4508b = byteBuffer.asReadOnlyBuffer();
        this.f4508b.position(0);
        this.f4508b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    /* renamed from: a */
    public void m17349a() {
        this.f4508b = null;
        this.f4509c = null;
    }

    /* renamed from: b */
    public C1358c m17346b() {
        C1358c c1358c;
        if (this.f4508b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (m17332o()) {
            c1358c = this.f4509c;
        } else {
            m17339h();
            if (!m17332o()) {
                m17343d();
                if (this.f4509c.f4496c < 0) {
                    this.f4509c.f4495b = 1;
                }
            }
            c1358c = this.f4509c;
        }
        return c1358c;
    }
}
