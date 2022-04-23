package com.bumptech.glide.b;

import android.util.Log;
import io.objectbox.model.PropertyFlags;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public ByteBuffer f7224a;

    /* renamed from: b  reason: collision with root package name */
    public c f7225b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f7226c = new byte[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

    /* renamed from: d  reason: collision with root package name */
    private int f7227d = 0;

    private int[] a(int i) {
        int[] iArr;
        byte[] bArr = new byte[i * 3];
        try {
            this.f7224a.get(bArr);
            int[] iArr2 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i2 >= i) {
                    break;
                }
                int i4 = i3 + 1;
                byte b2 = bArr[i3];
                int i5 = i4 + 1;
                iArr2[i2] = ((b2 & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3 = i5 + 1;
                i2++;
            }
        } catch (BufferUnderflowException e) {
            iArr = null;
            Log.isLoggable("GifHeaderParser", 3);
            this.f7225b.f7221b = 1;
        }
        return iArr;
    }

    private void b() {
        boolean z = false;
        while (!z && !h() && this.f7225b.f7222c <= Integer.MAX_VALUE) {
            int g = g();
            if (g == 33) {
                int g2 = g();
                if (g2 == 1) {
                    e();
                } else if (g2 == 249) {
                    this.f7225b.f7223d = new b();
                    g();
                    int g3 = g();
                    this.f7225b.f7223d.g = (g3 & 28) >> 2;
                    if (this.f7225b.f7223d.g == 0) {
                        this.f7225b.f7223d.g = 1;
                    }
                    this.f7225b.f7223d.f = (g3 & 1) != 0;
                    short s = this.f7224a.getShort();
                    short s2 = s;
                    if (s < 2) {
                        s2 = 10;
                    }
                    this.f7225b.f7223d.i = s2 * 10;
                    this.f7225b.f7223d.h = g();
                    g();
                } else if (g2 == 254) {
                    e();
                } else if (g2 != 255) {
                    e();
                } else {
                    f();
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < 11; i++) {
                        sb.append((char) this.f7226c[i]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        c();
                    } else {
                        e();
                    }
                }
            } else if (g == 44) {
                if (this.f7225b.f7223d == null) {
                    this.f7225b.f7223d = new b();
                }
                this.f7225b.f7223d.f7216a = this.f7224a.getShort();
                this.f7225b.f7223d.f7217b = this.f7224a.getShort();
                this.f7225b.f7223d.f7218c = this.f7224a.getShort();
                this.f7225b.f7223d.f7219d = this.f7224a.getShort();
                int g4 = g();
                boolean z2 = (g4 & 128) != 0;
                int pow = (int) Math.pow(2.0d, (g4 & 7) + 1);
                this.f7225b.f7223d.e = (g4 & 64) != 0;
                if (z2) {
                    this.f7225b.f7223d.k = a(pow);
                } else {
                    this.f7225b.f7223d.k = null;
                }
                this.f7225b.f7223d.j = this.f7224a.position();
                g();
                e();
                if (!h()) {
                    this.f7225b.f7222c++;
                    this.f7225b.e.add(this.f7225b.f7223d);
                }
            } else if (g != 59) {
                this.f7225b.f7221b = 1;
            } else {
                z = true;
            }
        }
    }

    private void c() {
        do {
            f();
            byte[] bArr = this.f7226c;
            if (bArr[0] == 1) {
                byte b2 = bArr[1];
                this.f7225b.m = ((bArr[2] & 255) << 8) | (b2 & 255);
            }
            if (this.f7227d <= 0) {
                return;
            }
        } while (!h());
    }

    private void d() {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i = 0; i < 6; i++) {
            sb.append((char) g());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f7225b.f7221b = 1;
            return;
        }
        this.f7225b.f = this.f7224a.getShort();
        this.f7225b.g = this.f7224a.getShort();
        int g = g();
        c cVar = this.f7225b;
        if ((g & 128) != 0) {
            z = true;
        }
        cVar.h = z;
        this.f7225b.i = (int) Math.pow(2.0d, (g & 7) + 1);
        this.f7225b.j = g();
        this.f7225b.k = g();
        if (this.f7225b.h && !h()) {
            c cVar2 = this.f7225b;
            cVar2.f7220a = a(cVar2.i);
            c cVar3 = this.f7225b;
            cVar3.l = cVar3.f7220a[this.f7225b.j];
        }
    }

    private void e() {
        int g;
        do {
            g = g();
            this.f7224a.position(Math.min(this.f7224a.position() + g, this.f7224a.limit()));
        } while (g > 0);
    }

    private void f() {
        int g = g();
        this.f7227d = g;
        if (g > 0) {
            int i = 0;
            g = 0;
            while (true) {
                try {
                    int i2 = this.f7227d;
                    if (i < i2) {
                        int i3 = i2 - i;
                        g = i3;
                        this.f7224a.get(this.f7226c, i, i3);
                        i += i3;
                        g = i3;
                    } else {
                        return;
                    }
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        StringBuilder sb = new StringBuilder("Error Reading Block n: ");
                        sb.append(i);
                        sb.append(" count: ");
                        sb.append(g);
                        sb.append(" blockSize: ");
                        sb.append(this.f7227d);
                    }
                    this.f7225b.f7221b = 1;
                    return;
                }
            }
        }
    }

    private int g() {
        int i;
        try {
            i = this.f7224a.get() & 255;
        } catch (Exception e) {
            this.f7225b.f7221b = 1;
            i = 0;
        }
        return i;
    }

    private boolean h() {
        return this.f7225b.f7221b != 0;
    }

    public final c a() {
        if (this.f7224a == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        } else if (h()) {
            return this.f7225b;
        } else {
            d();
            if (!h()) {
                b();
                if (this.f7225b.f7222c < 0) {
                    this.f7225b.f7221b = 1;
                }
            }
            return this.f7225b;
        }
    }

    public final d a(ByteBuffer byteBuffer) {
        this.f7224a = null;
        Arrays.fill(this.f7226c, (byte) 0);
        this.f7225b = new c();
        this.f7227d = 0;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f7224a = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f7224a.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
