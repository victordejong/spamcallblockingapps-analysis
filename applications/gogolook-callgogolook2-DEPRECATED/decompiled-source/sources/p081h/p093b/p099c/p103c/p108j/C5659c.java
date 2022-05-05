package p081h.p093b.p099c.p103c.p108j;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* renamed from: h.b.c.c.j.c */
/* loaded from: classes-dex2jar.jar:h/b/c/c/j/c.class */
public class C5659c {

    /* renamed from: a */
    public InputStream f14165a;

    /* renamed from: b */
    public byte[] f14166b;

    /* renamed from: c */
    public boolean f14167c;

    /* renamed from: d */
    public int f14168d = 0;

    /* renamed from: e */
    public int f14169e = 0;

    public C5659c(InputStream inputStream, int i, boolean z) {
        this.f14165a = inputStream;
        if (i > 0) {
            this.f14166b = new byte[m24863f(i)];
            this.f14167c = z;
            return;
        }
        throw new IllegalArgumentException(String.format("Buffer size %d must be positive.", Integer.valueOf(i)));
    }

    /* renamed from: f */
    public static int m24863f(int i) {
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    /* renamed from: a */
    public void m24868a(int i) throws IllegalStateException, IndexOutOfBoundsException {
        boolean z;
        int i2;
        int i3;
        AbstractC5660d.m24861a("advance to");
        int i4 = i - this.f14168d;
        if (i4 <= 0) {
            AbstractC5660d.m24862a();
            return;
        }
        int i5 = this.f14169e;
        if (i4 < i5) {
            m24864e(i4);
            this.f14168d = i;
            this.f14169e -= i4;
        } else if (this.f14165a != null) {
            int i6 = i4 - i5;
            int i7 = 0;
            while (i6 > 0) {
                try {
                    long j = i6;
                    long skip = this.f14165a.skip(j);
                    if (skip <= 0) {
                        i3 = i7 + 1;
                        i2 = i6;
                    } else {
                        i2 = (int) (j - skip);
                        i3 = i7;
                    }
                    i6 = i2;
                    i7 = i3;
                } catch (IOException e) {
                }
                if (i3 >= 5) {
                    i6 = i2;
                    z = true;
                    break;
                }
            }
            z = false;
            if (z) {
                this.f14165a = null;
            }
            this.f14168d = i - i6;
            this.f14169e = 0;
        } else {
            this.f14168d = i;
            this.f14169e = 0;
        }
        if (Log.isLoggable("InputStreamBuffer", 3)) {
            String.format("advanceTo %d buffer: %s", Integer.valueOf(i4), this);
        }
        AbstractC5660d.m24862a();
    }

    /* renamed from: b */
    public final boolean m24867b(int i) {
        int i2;
        AbstractC5660d.m24861a("fill");
        int i3 = this.f14168d;
        boolean z = true;
        if (i >= i3) {
            int i4 = i - i3;
            if (this.f14165a == null) {
                AbstractC5660d.m24862a();
                return false;
            }
            int i5 = i4 + 1;
            int i6 = i4;
            if (i5 > this.f14166b.length) {
                if (this.f14167c) {
                    m24868a(i);
                    i6 = i - this.f14168d;
                } else {
                    int f = m24863f(i5);
                    String.format("Increasing buffer length from %d to %d. Bad buffer size chosen, or advanceTo() not called.", Integer.valueOf(this.f14166b.length), Integer.valueOf(f));
                    this.f14166b = Arrays.copyOf(this.f14166b, f);
                    i6 = i4;
                }
            }
            try {
                i2 = this.f14165a.read(this.f14166b, this.f14169e, this.f14166b.length - this.f14169e);
            } catch (IOException e) {
                i2 = -1;
            }
            if (i2 != -1) {
                this.f14169e += i2;
            } else {
                this.f14165a = null;
            }
            if (Log.isLoggable("InputStreamBuffer", 3)) {
                String.format("fill %d      buffer: %s", Integer.valueOf(i6), this);
            }
            AbstractC5660d.m24862a();
            if (i6 >= this.f14169e) {
                z = false;
            }
            return z;
        }
        AbstractC5660d.m24862a();
        throw new IllegalStateException(String.format("Index %d is before buffer %d", Integer.valueOf(i), Integer.valueOf(this.f14168d)));
    }

    /* renamed from: c */
    public byte m24866c(int i) throws IllegalStateException, IndexOutOfBoundsException {
        AbstractC5660d.m24861a("get");
        if (m24865d(i)) {
            int i2 = this.f14168d;
            AbstractC5660d.m24862a();
            return this.f14166b[i - i2];
        }
        AbstractC5660d.m24862a();
        throw new IndexOutOfBoundsException(String.format("Index %d beyond length.", Integer.valueOf(i)));
    }

    /* renamed from: d */
    public boolean m24865d(int i) throws IllegalStateException, IndexOutOfBoundsException {
        AbstractC5660d.m24861a("has");
        int i2 = this.f14168d;
        if (i >= i2) {
            int i3 = i - i2;
            if (i3 >= this.f14169e || i3 >= this.f14166b.length) {
                AbstractC5660d.m24862a();
                return m24867b(i);
            }
            AbstractC5660d.m24862a();
            return true;
        }
        AbstractC5660d.m24862a();
        throw new IllegalStateException(String.format("Index %d is before buffer %d", Integer.valueOf(i), Integer.valueOf(this.f14168d)));
    }

    /* renamed from: e */
    public final void m24864e(int i) {
        int i2 = 0;
        if (i < this.f14166b.length) {
            while (true) {
                int i3 = i2 + i;
                if (i3 < this.f14169e) {
                    byte[] bArr = this.f14166b;
                    bArr[i2] = bArr[i3];
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            throw new IndexOutOfBoundsException(String.format("Index %d out of bounds. Length %d", Integer.valueOf(i), Integer.valueOf(this.f14166b.length)));
        }
    }

    public String toString() {
        return String.format("+%d+%d [%d]", Integer.valueOf(this.f14168d), Integer.valueOf(this.f14166b.length), Integer.valueOf(this.f14169e));
    }
}
