package p193e.p1451f.p1452a.p1454l;

import android.util.Log;
import com.tenor.android.core.constant.MediaCollectionFormat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.Objects;
/* renamed from: e.f.a.l.d */
/* loaded from: classes-dex2jar.jar:e/f/a/l/d.class */
public class C22253d {

    /* renamed from: b */
    public ByteBuffer f61849b;

    /* renamed from: c */
    public C22252c f61850c;

    /* renamed from: a */
    public final byte[] f61848a = new byte[256];

    /* renamed from: d */
    public int f61851d = 0;

    /* renamed from: a */
    public final boolean m8379a() {
        return this.f61850c.f61838b != 0;
    }

    /* renamed from: b */
    public C22252c m8378b() {
        if (this.f61849b != null) {
            if (m8379a()) {
                return this.f61850c;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 6; i++) {
                sb.append((char) m8377c());
            }
            if (!sb.toString().startsWith(MediaCollectionFormat.GIF)) {
                this.f61850c.f61838b = 1;
            } else {
                this.f61850c.f61842f = m8374f();
                this.f61850c.f61843g = m8374f();
                int m8377c = m8377c();
                C22252c c22252c = this.f61850c;
                c22252c.f61844h = (m8377c & 128) != 0;
                c22252c.f61845i = (int) Math.pow(2.0d, (m8377c & 7) + 1);
                this.f61850c.f61846j = m8377c();
                C22252c c22252c2 = this.f61850c;
                m8377c();
                Objects.requireNonNull(c22252c2);
                if (this.f61850c.f61844h && !m8379a()) {
                    C22252c c22252c3 = this.f61850c;
                    c22252c3.f61837a = m8375e(c22252c3.f61845i);
                    C22252c c22252c4 = this.f61850c;
                    c22252c4.f61847k = c22252c4.f61837a[c22252c4.f61846j];
                }
            }
            if (!m8379a()) {
                boolean z = false;
                while (!z && !m8379a() && this.f61850c.f61839c <= Integer.MAX_VALUE) {
                    int m8377c2 = m8377c();
                    if (m8377c2 == 33) {
                        int m8377c3 = m8377c();
                        if (m8377c3 == 1) {
                            m8373g();
                        } else if (m8377c3 == 249) {
                            this.f61850c.f61840d = new C22251b();
                            m8377c();
                            int m8377c4 = m8377c();
                            C22251b c22251b = this.f61850c.f61840d;
                            int i2 = (m8377c4 & 28) >> 2;
                            c22251b.f61832g = i2;
                            if (i2 == 0) {
                                c22251b.f61832g = 1;
                            }
                            c22251b.f61831f = (m8377c4 & 1) != 0;
                            int m8374f = m8374f();
                            int i3 = m8374f;
                            if (m8374f < 2) {
                                i3 = 10;
                            }
                            C22251b c22251b2 = this.f61850c.f61840d;
                            c22251b2.f61834i = i3 * 10;
                            c22251b2.f61833h = m8377c();
                            m8377c();
                        } else if (m8377c3 == 254) {
                            m8373g();
                        } else if (m8377c3 != 255) {
                            m8373g();
                        } else {
                            m8376d();
                            StringBuilder sb2 = new StringBuilder();
                            for (int i4 = 0; i4 < 11; i4++) {
                                sb2.append((char) this.f61848a[i4]);
                            }
                            if (sb2.toString().equals("NETSCAPE2.0")) {
                                do {
                                    m8376d();
                                    byte[] bArr = this.f61848a;
                                    if (bArr[0] == 1) {
                                        byte b = bArr[1];
                                        byte b2 = bArr[2];
                                        Objects.requireNonNull(this.f61850c);
                                    }
                                    if (this.f61851d > 0) {
                                    }
                                } while (!m8379a());
                            } else {
                                m8373g();
                            }
                        }
                    } else if (m8377c2 == 44) {
                        C22252c c22252c5 = this.f61850c;
                        if (c22252c5.f61840d == null) {
                            c22252c5.f61840d = new C22251b();
                        }
                        c22252c5.f61840d.f61826a = m8374f();
                        this.f61850c.f61840d.f61827b = m8374f();
                        this.f61850c.f61840d.f61828c = m8374f();
                        this.f61850c.f61840d.f61829d = m8374f();
                        int m8377c5 = m8377c();
                        boolean z2 = (m8377c5 & 128) != 0;
                        int pow = (int) Math.pow(2.0d, (m8377c5 & 7) + 1);
                        C22251b c22251b3 = this.f61850c.f61840d;
                        c22251b3.f61830e = (m8377c5 & 64) != 0;
                        if (z2) {
                            c22251b3.f61836k = m8375e(pow);
                        } else {
                            c22251b3.f61836k = null;
                        }
                        this.f61850c.f61840d.f61835j = this.f61849b.position();
                        m8377c();
                        m8373g();
                        if (!m8379a()) {
                            C22252c c22252c6 = this.f61850c;
                            c22252c6.f61839c++;
                            c22252c6.f61841e.add(c22252c6.f61840d);
                        }
                    } else if (m8377c2 != 59) {
                        this.f61850c.f61838b = 1;
                    } else {
                        z = true;
                    }
                }
                C22252c c22252c7 = this.f61850c;
                if (c22252c7.f61839c < 0) {
                    c22252c7.f61838b = 1;
                }
            }
            return this.f61850c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    /* renamed from: c */
    public final int m8377c() {
        int i;
        try {
            i = this.f61849b.get() & 255;
        } catch (Exception e) {
            this.f61850c.f61838b = 1;
            i = 0;
        }
        return i;
    }

    /* renamed from: d */
    public final void m8376d() {
        int m8377c = m8377c();
        this.f61851d = m8377c;
        if (m8377c > 0) {
            int i = 0;
            while (true) {
                try {
                    int i2 = i;
                    int i3 = this.f61851d;
                    if (i2 >= i3) {
                        return;
                    }
                    int i4 = i3 - i2;
                    this.f61849b.get(this.f61848a, i2, i4);
                    i = i2 + i4;
                } catch (Exception e) {
                    Log.isLoggable("GifHeaderParser", 3);
                    this.f61850c.f61838b = 1;
                    return;
                }
            }
        }
    }

    /* renamed from: e */
    public final int[] m8375e(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f61849b.get(bArr);
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
            Log.isLoggable("GifHeaderParser", 3);
            this.f61850c.f61838b = 1;
        }
        return iArr;
    }

    /* renamed from: f */
    public final int m8374f() {
        return this.f61849b.getShort();
    }

    /* renamed from: g */
    public final void m8373g() {
        int m8377c;
        do {
            m8377c = m8377c();
            this.f61849b.position(Math.min(this.f61849b.position() + m8377c, this.f61849b.limit()));
        } while (m8377c > 0);
    }
}
