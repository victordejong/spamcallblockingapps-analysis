package p193e.p1485h.p1486a.p1493c.p1500p0;

import com.tenor.android.core.constant.MediaCollectionFormat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.c.p0.d */
/* loaded from: classes-dex2jar.jar:e/h/a/c/p0/d.class */
public class C22783d {

    /* renamed from: a */
    public final byte[] f63145a = new byte[256];

    /* renamed from: b */
    public int f63146b = 0;

    /* renamed from: c */
    public C22782c f63147c;

    /* renamed from: d */
    public ByteBuffer f63148d;

    /* renamed from: a */
    public final boolean m7773a() {
        return this.f63147c.f63143k != 0;
    }

    /* renamed from: b */
    public C22782c m7772b() {
        if (this.f63148d != null) {
            if (m7773a()) {
                return this.f63147c;
            }
            String str = "";
            for (int i = 0; i < 6; i++) {
                StringBuilder m8728C = C22128a.m8728C(str);
                m8728C.append((char) m7771c());
                str = m8728C.toString();
            }
            if (!str.startsWith(MediaCollectionFormat.GIF)) {
                this.f63147c.f63143k = 1;
            } else {
                this.f63147c.f63144l = m7768f();
                this.f63147c.f63141i = m7768f();
                int m7771c = m7771c();
                C22782c c22782c = this.f63147c;
                c22782c.f63139g = (m7771c & 128) != 0;
                c22782c.f63140h = 2 << (m7771c & 7);
                c22782c.f63134b = m7771c();
                C22782c c22782c2 = this.f63147c;
                m7771c();
                Objects.requireNonNull(c22782c2);
                if (this.f63147c.f63139g && !m7773a()) {
                    C22782c c22782c3 = this.f63147c;
                    c22782c3.f63138f = m7769e(c22782c3.f63140h);
                    C22782c c22782c4 = this.f63147c;
                    c22782c4.f63133a = c22782c4.f63138f[c22782c4.f63134b];
                }
            }
            if (!m7773a()) {
                boolean z = false;
                while (!z && !m7773a() && this.f63147c.f63136d <= Integer.MAX_VALUE) {
                    int m7771c2 = m7771c();
                    if (m7771c2 == 33) {
                        int m7771c3 = m7771c();
                        if (m7771c3 == 1) {
                            m7766h();
                        } else if (m7771c3 == 249) {
                            this.f63147c.f63135c = new C22781b();
                            m7771c();
                            int m7771c4 = m7771c();
                            C22781b c22781b = this.f63147c.f63135c;
                            int i2 = (m7771c4 & 28) >> 2;
                            c22781b.f63124c = i2;
                            if (i2 == 0) {
                                c22781b.f63124c = 1;
                            }
                            c22781b.f63132k = (m7771c4 & 1) != 0;
                            int m7768f = m7768f();
                            int i3 = m7768f;
                            if (m7768f < 2) {
                                i3 = 10;
                            }
                            C22781b c22781b2 = this.f63147c.f63135c;
                            c22781b2.f63123b = i3 * 10;
                            c22781b2.f63131j = m7771c();
                            m7771c();
                        } else if (m7771c3 == 254) {
                            m7766h();
                        } else if (m7771c3 != 255) {
                            m7766h();
                        } else {
                            m7770d();
                            String str2 = "";
                            for (int i4 = 0; i4 < 11; i4++) {
                                StringBuilder m8728C2 = C22128a.m8728C(str2);
                                m8728C2.append((char) this.f63145a[i4]);
                                str2 = m8728C2.toString();
                            }
                            if (str2.equals("NETSCAPE2.0")) {
                                do {
                                    m7770d();
                                    byte[] bArr = this.f63145a;
                                    if (bArr[0] == 1) {
                                        byte b = bArr[1];
                                        byte b2 = bArr[2];
                                        C22782c c22782c5 = this.f63147c;
                                        int i5 = ((b2 & 255) << 8) | (b & 255);
                                        c22782c5.f63142j = i5;
                                        if (i5 == 0) {
                                            c22782c5.f63142j = -1;
                                        }
                                    }
                                    if (this.f63146b > 0) {
                                    }
                                } while (!m7773a());
                            } else {
                                m7766h();
                            }
                        }
                    } else if (m7771c2 == 44) {
                        C22782c c22782c6 = this.f63147c;
                        if (c22782c6.f63135c == null) {
                            c22782c6.f63135c = new C22781b();
                        }
                        c22782c6.f63135c.f63126e = m7768f();
                        this.f63147c.f63135c.f63127f = m7768f();
                        this.f63147c.f63135c.f63128g = m7768f();
                        this.f63147c.f63135c.f63129h = m7768f();
                        int m7771c5 = m7771c();
                        boolean z2 = (m7771c5 & 128) != 0;
                        int pow = (int) Math.pow(2.0d, (m7771c5 & 7) + 1);
                        C22781b c22781b3 = this.f63147c.f63135c;
                        c22781b3.f63125d = (m7771c5 & 64) != 0;
                        if (z2) {
                            c22781b3.f63130i = m7769e(pow);
                        } else {
                            c22781b3.f63130i = null;
                        }
                        this.f63147c.f63135c.f63122a = this.f63148d.position();
                        m7771c();
                        m7766h();
                        if (!m7773a()) {
                            C22782c c22782c7 = this.f63147c;
                            c22782c7.f63136d++;
                            c22782c7.f63137e.add(c22782c7.f63135c);
                        }
                    } else if (m7771c2 != 59) {
                        this.f63147c.f63143k = 1;
                    } else {
                        z = true;
                    }
                }
                C22782c c22782c8 = this.f63147c;
                if (c22782c8.f63136d < 0) {
                    c22782c8.f63143k = 1;
                }
            }
            return this.f63147c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    /* renamed from: c */
    public final int m7771c() {
        int i;
        try {
            i = this.f63148d.get() & 255;
        } catch (Exception e) {
            this.f63147c.f63143k = 1;
            i = 0;
        }
        return i;
    }

    /* renamed from: d */
    public final int m7770d() {
        int m7771c = m7771c();
        this.f63146b = m7771c;
        int i = 0;
        int i2 = 0;
        if (m7771c > 0) {
            while (true) {
                try {
                    int i3 = this.f63146b;
                    i = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int i4 = i3 - i2;
                    this.f63148d.get(this.f63145a, i2, i4);
                    i2 += i4;
                } catch (Exception e) {
                    this.f63147c.f63143k = 1;
                    i = i2;
                }
            }
        }
        return i;
    }

    /* renamed from: e */
    public final int[] m7769e(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f63148d.get(bArr);
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
            this.f63147c.f63143k = 1;
        }
        return iArr;
    }

    /* renamed from: f */
    public final int m7768f() {
        return this.f63148d.getShort();
    }

    /* renamed from: g */
    public C22783d m7767g(byte[] bArr) {
        if (bArr != null) {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            this.f63148d = null;
            Arrays.fill(this.f63145a, (byte) 0);
            this.f63147c = new C22782c();
            this.f63146b = 0;
            ByteBuffer asReadOnlyBuffer = wrap.asReadOnlyBuffer();
            this.f63148d = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f63148d.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f63148d = null;
            this.f63147c.f63143k = 2;
        }
        return this;
    }

    /* renamed from: h */
    public final void m7766h() {
        int m7771c;
        do {
            try {
                m7771c = m7771c();
                ByteBuffer byteBuffer = this.f63148d;
                byteBuffer.position(byteBuffer.position() + m7771c);
            } catch (IllegalArgumentException e) {
                return;
            }
        } while (m7771c > 0);
    }
}
