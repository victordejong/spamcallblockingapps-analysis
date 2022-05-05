package com.google.android.gms.internal;

import com.android.vcard.VCardConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f4215a;
    int c;
    private int e;
    private int f;
    private int h;
    private int i = Integer.MAX_VALUE;
    int d = 64;
    private int j = VCardConfig.FLAG_APPEND_TYPE_PARAM;

    /* renamed from: b  reason: collision with root package name */
    int f4216b = 0;
    private int g = 0;

    private n(byte[] bArr, int i) {
        this.f4215a = bArr;
        this.e = i + 0;
    }

    public static n a(byte[] bArr, int i) {
        return new n(bArr, i);
    }

    private void f(int i) {
        if (i < 0) {
            throw u.b();
        } else if (this.g + i > this.i) {
            f(this.i - this.g);
            throw u.a();
        } else if (i <= this.e - this.g) {
            this.g += i;
        } else {
            throw u.a();
        }
    }

    private void j() {
        this.e += this.f;
        int i = this.e;
        if (i > this.i) {
            this.f = i - this.i;
            this.e -= this.f;
            return;
        }
        this.f = 0;
    }

    private byte k() {
        if (this.g == this.e) {
            throw u.a();
        }
        byte[] bArr = this.f4215a;
        int i = this.g;
        this.g = i + 1;
        return bArr[i];
    }

    public final int a() {
        int i = 0;
        if (this.g == this.e) {
            this.h = 0;
        } else {
            this.h = e();
            if (this.h == 0) {
                throw u.d();
            }
            i = this.h;
        }
        return i;
    }

    public final void a(int i) {
        if (this.h != i) {
            throw u.e();
        }
    }

    public final void a(v vVar) {
        int e = e();
        if (this.c >= this.d) {
            throw u.g();
        }
        int c = c(e);
        this.c++;
        vVar.a(this);
        a(0);
        this.c--;
        d(c);
    }

    public final boolean b() {
        return e() != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean b(int i) {
        int a2;
        boolean z = true;
        switch (y.a(i)) {
            case 0:
                e();
                break;
            case 1:
                k();
                k();
                k();
                k();
                k();
                k();
                k();
                k();
                break;
            case 2:
                f(e());
                break;
            case 3:
                do {
                    a2 = a();
                    if (a2 != 0) {
                    }
                    a(y.a(y.b(i), 4));
                    break;
                } while (b(a2));
                a(y.a(y.b(i), 4));
            case 4:
                z = false;
                break;
            case 5:
                g();
                break;
            default:
                throw u.f();
        }
        return z;
    }

    public final int c(int i) {
        if (i < 0) {
            throw u.b();
        }
        int i2 = this.g + i;
        int i3 = this.i;
        if (i2 > i3) {
            throw u.a();
        }
        this.i = i2;
        j();
        return i3;
    }

    public final String c() {
        int e = e();
        if (e < 0) {
            throw u.b();
        } else if (e > this.e - this.g) {
            throw u.a();
        } else {
            String str = new String(this.f4215a, this.g, e, t.f4224a);
            this.g = e + this.g;
            return str;
        }
    }

    public final void d(int i) {
        this.i = i;
        j();
    }

    public final byte[] d() {
        byte[] bArr;
        int e = e();
        if (e < 0) {
            throw u.b();
        }
        if (e == 0) {
            bArr = y.h;
        } else if (e > this.e - this.g) {
            throw u.a();
        } else {
            bArr = new byte[e];
            System.arraycopy(this.f4215a, this.g, bArr, 0, e);
            this.g = e + this.g;
        }
        return bArr;
    }

    public final int e() {
        int k = k();
        if (k < 0) {
            int i = k & 127;
            byte k2 = k();
            if (k2 >= 0) {
                k = i | (k2 << 7);
            } else {
                int i2 = i | ((k2 & Byte.MAX_VALUE) << 7);
                byte k3 = k();
                if (k3 >= 0) {
                    k = i2 | (k3 << 14);
                } else {
                    int i3 = i2 | ((k3 & Byte.MAX_VALUE) << 14);
                    byte k4 = k();
                    if (k4 >= 0) {
                        k = i3 | (k4 << 21);
                    } else {
                        byte k5 = k();
                        int i4 = i3 | ((k4 & Byte.MAX_VALUE) << 21) | (k5 << 28);
                        k = i4;
                        if (k5 < 0) {
                            for (int i5 = 0; i5 < 5; i5++) {
                                k = i4;
                                if (k() < 0) {
                                }
                            }
                            throw u.c();
                        }
                    }
                }
            }
        }
        return k;
    }

    public final void e(int i) {
        if (i > this.g - this.f4216b) {
            throw new IllegalArgumentException(new StringBuilder(50).append("Position ").append(i).append(" is beyond current ").append(this.g - this.f4216b).toString());
        } else if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(24).append("Bad position ").append(i).toString());
        } else {
            this.g = this.f4216b + i;
        }
    }

    public final long f() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte k = k();
            j |= (k & Byte.MAX_VALUE) << i;
            if ((k & 128) == 0) {
                return j;
            }
        }
        throw u.c();
    }

    public final int g() {
        return (k() & 255) | ((k() & 255) << 8) | ((k() & 255) << 16) | ((k() & 255) << 24);
    }

    public final int h() {
        int i;
        if (this.i == Integer.MAX_VALUE) {
            i = -1;
        } else {
            i = this.i - this.g;
        }
        return i;
    }

    public final int i() {
        return this.g - this.f4216b;
    }
}
