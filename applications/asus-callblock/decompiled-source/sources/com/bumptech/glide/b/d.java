package com.bumptech.glide.b;

import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public ByteBuffer f3378a;

    /* renamed from: b  reason: collision with root package name */
    public c f3379b;
    private final byte[] c = new byte[256];
    private int d = 0;

    private int[] a(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f3378a.get(bArr);
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
                byte b2 = bArr[i2];
                int i5 = i4 + 1;
                i2 = i5 + 1;
                iArr2[i3] = ((b2 & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3++;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.f3379b.f3377b = 1;
        }
        return iArr;
    }

    private void b() {
        boolean z = false;
        while (!z && !h()) {
            switch (g()) {
                case 33:
                    switch (g()) {
                        case 1:
                            e();
                            continue;
                        case 249:
                            this.f3379b.d = new b();
                            g();
                            int g = g();
                            this.f3379b.d.g = (g & 28) >> 2;
                            if (this.f3379b.d.g == 0) {
                                this.f3379b.d.g = 1;
                            }
                            this.f3379b.d.f = (g & 1) != 0;
                            short s = this.f3378a.getShort();
                            short s2 = s;
                            if (s < 3) {
                                s2 = 10;
                            }
                            this.f3379b.d.i = s2 * 10;
                            this.f3379b.d.h = g();
                            g();
                            continue;
                        case 254:
                            e();
                            continue;
                        case 255:
                            f();
                            String str = BuildConfig.FLAVOR;
                            for (int i = 0; i < 11; i++) {
                                str = str + ((char) this.c[i]);
                            }
                            if (!str.equals("NETSCAPE2.0")) {
                                e();
                                break;
                            } else {
                                c();
                                continue;
                            }
                        default:
                            e();
                            continue;
                    }
                case 44:
                    if (this.f3379b.d == null) {
                        this.f3379b.d = new b();
                    }
                    this.f3379b.d.f3374a = this.f3378a.getShort();
                    this.f3379b.d.f3375b = this.f3378a.getShort();
                    this.f3379b.d.c = this.f3378a.getShort();
                    this.f3379b.d.d = this.f3378a.getShort();
                    int g2 = g();
                    boolean z2 = (g2 & 128) != 0;
                    int pow = (int) Math.pow(2.0d, (g2 & 7) + 1);
                    this.f3379b.d.e = (g2 & 64) != 0;
                    if (z2) {
                        this.f3379b.d.k = a(pow);
                    } else {
                        this.f3379b.d.k = null;
                    }
                    this.f3379b.d.j = this.f3378a.position();
                    g();
                    e();
                    if (!h()) {
                        this.f3379b.c++;
                        this.f3379b.e.add(this.f3379b.d);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    z = true;
                    break;
                default:
                    this.f3379b.f3377b = 1;
                    break;
            }
        }
    }

    private void c() {
        do {
            f();
            if (this.c[0] == 1) {
                this.f3379b.m = (this.c[1] & 255) | ((this.c[2] & 255) << 8);
            }
            if (this.d <= 0) {
                return;
            }
        } while (!h());
    }

    private void d() {
        boolean z = true;
        String str = BuildConfig.FLAVOR;
        for (int i = 0; i < 6; i++) {
            str = str + ((char) g());
        }
        if (!str.startsWith("GIF")) {
            this.f3379b.f3377b = 1;
            return;
        }
        this.f3379b.f = this.f3378a.getShort();
        this.f3379b.g = this.f3378a.getShort();
        int g = g();
        c cVar = this.f3379b;
        if ((g & 128) == 0) {
            z = false;
        }
        cVar.h = z;
        this.f3379b.i = 2 << (g & 7);
        this.f3379b.j = g();
        this.f3379b.k = g();
        if (this.f3379b.h && !h()) {
            this.f3379b.f3376a = a(this.f3379b.i);
            this.f3379b.l = this.f3379b.f3376a[this.f3379b.j];
        }
    }

    private void e() {
        int g;
        do {
            g = g();
            this.f3378a.position(this.f3378a.position() + g);
        } while (g > 0);
    }

    private int f() {
        int i;
        this.d = g();
        if (this.d > 0) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                try {
                    if (i3 >= this.d) {
                        break;
                    }
                    i2 = this.d - i3;
                    this.f3378a.get(this.c, i3, i2);
                    i3 += i2;
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i3 + " count: " + i2 + " blockSize: " + this.d, e);
                    }
                    this.f3379b.f3377b = 1;
                    i = i3;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }

    private int g() {
        int i = 0;
        try {
            i = this.f3378a.get() & 255;
        } catch (Exception e) {
            this.f3379b.f3377b = 1;
        }
        return i;
    }

    private boolean h() {
        return this.f3379b.f3377b != 0;
    }

    public final c a() {
        c cVar;
        if (this.f3378a == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (h()) {
            cVar = this.f3379b;
        } else {
            d();
            if (!h()) {
                b();
                if (this.f3379b.c < 0) {
                    this.f3379b.f3377b = 1;
                }
            }
            cVar = this.f3379b;
        }
        return cVar;
    }

    public final d a(byte[] bArr) {
        this.f3378a = null;
        Arrays.fill(this.c, (byte) 0);
        this.f3379b = new c();
        this.d = 0;
        if (bArr != null) {
            this.f3378a = ByteBuffer.wrap(bArr);
            this.f3378a.rewind();
            this.f3378a.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f3378a = null;
            this.f3379b.f3377b = 2;
        }
        return this;
    }
}
