package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmf.class */
public final class dmf extends OutputStream {

    /* renamed from: a */
    private static final byte[] f47207a = new byte[0];

    /* renamed from: d */
    private int f47210d;

    /* renamed from: f */
    private int f47212f;

    /* renamed from: b */
    private final int f47208b = 128;

    /* renamed from: c */
    private final ArrayList<dlw> f47209c = new ArrayList<>();

    /* renamed from: e */
    private byte[] f47211e = new byte[128];

    public dmf(int i) {
    }

    /* renamed from: a */
    private final void m16460a(int i) {
        this.f47209c.add(new dmh(this.f47211e));
        int length = this.f47210d + this.f47211e.length;
        this.f47210d = length;
        this.f47211e = new byte[Math.max(this.f47208b, Math.max(i, length >>> 1))];
        this.f47212f = 0;
    }

    /* renamed from: b */
    private final int m16459b() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f47210d;
            i2 = this.f47212f;
        }
        return i + i2;
    }

    /* renamed from: a */
    public final dlw m16461a() {
        dlw m16478a;
        synchronized (this) {
            int i = this.f47212f;
            byte[] bArr = this.f47211e;
            if (i >= bArr.length) {
                this.f47209c.add(new dmh(bArr));
                this.f47211e = f47207a;
            } else if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                this.f47209c.add(new dmh(bArr2));
            }
            this.f47210d += this.f47212f;
            this.f47212f = 0;
            m16478a = dlw.m16478a(this.f47209c);
        }
        return m16478a;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m16459b()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.f47212f == this.f47211e.length) {
                m16460a(1);
            }
            byte[] bArr = this.f47211e;
            int i2 = this.f47212f;
            this.f47212f = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            byte[] bArr2 = this.f47211e;
            int length = bArr2.length;
            int i3 = this.f47212f;
            if (i2 <= length - i3) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f47212f += i2;
                return;
            }
            int length2 = bArr2.length - i3;
            System.arraycopy(bArr, i, bArr2, i3, length2);
            int i4 = i2 - length2;
            m16460a(i4);
            System.arraycopy(bArr, i + length2, this.f47211e, 0, i4);
            this.f47212f = i4;
        }
    }
}
