package com.bumptech.glide.p109b;

import android.util.Log;
import io.objectbox.model.PropertyFlags;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: com.bumptech.glide.b.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/d.class */
public final class C3546d {

    /* renamed from: a */
    public ByteBuffer f13503a;

    /* renamed from: b */
    public C3545c f13504b;

    /* renamed from: c */
    private final byte[] f13505c = new byte[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

    /* renamed from: d */
    private int f13506d = 0;

    /* renamed from: a */
    private int[] m37751a(int i) {
        int[] iArr;
        byte[] bArr = new byte[i * 3];
        try {
            this.f13503a.get(bArr);
            int[] iArr2 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
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
            iArr = null;
            Log.isLoggable("GifHeaderParser", 3);
            this.f13504b.f13491b = 1;
        }
        return iArr;
    }

    /* renamed from: b */
    private void m37749b() {
        boolean z = false;
        while (!z && !m37743h() && this.f13504b.f13492c <= Integer.MAX_VALUE) {
            int m37744g = m37744g();
            if (m37744g == 33) {
                int m37744g2 = m37744g();
                if (m37744g2 == 1) {
                    m37746e();
                } else if (m37744g2 == 249) {
                    this.f13504b.f13493d = new C3544b();
                    m37744g();
                    int m37744g3 = m37744g();
                    this.f13504b.f13493d.f13485g = (m37744g3 & 28) >> 2;
                    if (this.f13504b.f13493d.f13485g == 0) {
                        this.f13504b.f13493d.f13485g = 1;
                    }
                    this.f13504b.f13493d.f13484f = (m37744g3 & 1) != 0;
                    short s = this.f13503a.getShort();
                    short s2 = s;
                    if (s < 2) {
                        s2 = 10;
                    }
                    this.f13504b.f13493d.f13487i = s2 * 10;
                    this.f13504b.f13493d.f13486h = m37744g();
                    m37744g();
                } else if (m37744g2 == 254) {
                    m37746e();
                } else if (m37744g2 != 255) {
                    m37746e();
                } else {
                    m37745f();
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < 11; i++) {
                        sb.append((char) this.f13505c[i]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        m37748c();
                    } else {
                        m37746e();
                    }
                }
            } else if (m37744g == 44) {
                if (this.f13504b.f13493d == null) {
                    this.f13504b.f13493d = new C3544b();
                }
                this.f13504b.f13493d.f13479a = this.f13503a.getShort();
                this.f13504b.f13493d.f13480b = this.f13503a.getShort();
                this.f13504b.f13493d.f13481c = this.f13503a.getShort();
                this.f13504b.f13493d.f13482d = this.f13503a.getShort();
                int m37744g4 = m37744g();
                boolean z2 = (m37744g4 & 128) != 0;
                int pow = (int) Math.pow(2.0d, (m37744g4 & 7) + 1);
                this.f13504b.f13493d.f13483e = (m37744g4 & 64) != 0;
                if (z2) {
                    this.f13504b.f13493d.f13489k = m37751a(pow);
                } else {
                    this.f13504b.f13493d.f13489k = null;
                }
                this.f13504b.f13493d.f13488j = this.f13503a.position();
                m37744g();
                m37746e();
                if (!m37743h()) {
                    this.f13504b.f13492c++;
                    this.f13504b.f13494e.add(this.f13504b.f13493d);
                }
            } else if (m37744g != 59) {
                this.f13504b.f13491b = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: c */
    private void m37748c() {
        do {
            m37745f();
            byte[] bArr = this.f13505c;
            if (bArr[0] == 1) {
                byte b = bArr[1];
                this.f13504b.f13502m = ((bArr[2] & 255) << 8) | (b & 255);
            }
            if (this.f13506d <= 0) {
                return;
            }
        } while (!m37743h());
    }

    /* renamed from: d */
    private void m37747d() {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i = 0; i < 6; i++) {
            sb.append((char) m37744g());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f13504b.f13491b = 1;
            return;
        }
        this.f13504b.f13495f = this.f13503a.getShort();
        this.f13504b.f13496g = this.f13503a.getShort();
        int m37744g = m37744g();
        C3545c c3545c = this.f13504b;
        if ((m37744g & 128) != 0) {
            z = true;
        }
        c3545c.f13497h = z;
        this.f13504b.f13498i = (int) Math.pow(2.0d, (m37744g & 7) + 1);
        this.f13504b.f13499j = m37744g();
        this.f13504b.f13500k = m37744g();
        if (!this.f13504b.f13497h || m37743h()) {
            return;
        }
        C3545c c3545c2 = this.f13504b;
        c3545c2.f13490a = m37751a(c3545c2.f13498i);
        C3545c c3545c3 = this.f13504b;
        c3545c3.f13501l = c3545c3.f13490a[this.f13504b.f13499j];
    }

    /* renamed from: e */
    private void m37746e() {
        int m37744g;
        do {
            m37744g = m37744g();
            this.f13503a.position(Math.min(this.f13503a.position() + m37744g, this.f13503a.limit()));
        } while (m37744g > 0);
    }

    /* renamed from: f */
    private void m37745f() {
        int m37744g = m37744g();
        this.f13506d = m37744g;
        if (m37744g > 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                try {
                    m37744g = i2;
                    int i3 = this.f13506d;
                    if (i >= i3) {
                        return;
                    }
                    int i4 = i3 - i;
                    m37744g = i4;
                    this.f13503a.get(this.f13505c, i, i4);
                    i += i4;
                    i2 = i4;
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        StringBuilder sb = new StringBuilder("Error Reading Block n: ");
                        sb.append(i);
                        sb.append(" count: ");
                        sb.append(m37744g);
                        sb.append(" blockSize: ");
                        sb.append(this.f13506d);
                    }
                    this.f13504b.f13491b = 1;
                    return;
                }
            }
        }
    }

    /* renamed from: g */
    private int m37744g() {
        int i;
        try {
            i = this.f13503a.get() & 255;
        } catch (Exception e) {
            this.f13504b.f13491b = 1;
            i = 0;
        }
        return i;
    }

    /* renamed from: h */
    private boolean m37743h() {
        return this.f13504b.f13491b != 0;
    }

    /* renamed from: a */
    public final C3545c m37752a() {
        if (this.f13503a != null) {
            if (m37743h()) {
                return this.f13504b;
            }
            m37747d();
            if (!m37743h()) {
                m37749b();
                if (this.f13504b.f13492c < 0) {
                    this.f13504b.f13491b = 1;
                }
            }
            return this.f13504b;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    /* renamed from: a */
    public final C3546d m37750a(ByteBuffer byteBuffer) {
        this.f13503a = null;
        Arrays.fill(this.f13505c, (byte) 0);
        this.f13504b = new C3545c();
        this.f13506d = 0;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f13503a = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f13503a.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
