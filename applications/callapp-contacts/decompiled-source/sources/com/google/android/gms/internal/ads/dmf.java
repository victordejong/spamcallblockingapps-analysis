package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmf.class */
public final class dmf extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f26949a = new byte[0];

    /* renamed from: d  reason: collision with root package name */
    private int f26952d;
    private int f;

    /* renamed from: b  reason: collision with root package name */
    private final int f26950b = 128;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<dlw> f26951c = new ArrayList<>();
    private byte[] e = new byte[128];

    /* JADX INFO: Access modifiers changed from: package-private */
    public dmf(int i) {
    }

    private final void a(int i) {
        this.f26951c.add(new dmh(this.e));
        int length = this.f26952d + this.e.length;
        this.f26952d = length;
        this.e = new byte[Math.max(this.f26950b, Math.max(i, length >>> 1))];
        this.f = 0;
    }

    private final int b() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f26952d;
            i2 = this.f;
        }
        return i + i2;
    }

    public final dlw a() {
        dlw a2;
        synchronized (this) {
            int i = this.f;
            byte[] bArr = this.e;
            if (i >= bArr.length) {
                this.f26951c.add(new dmh(bArr));
                this.e = f26949a;
            } else if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                this.f26951c.add(new dmh(bArr2));
            }
            this.f26952d += this.f;
            this.f = 0;
            a2 = dlw.a(this.f26951c);
        }
        return a2;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(b()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.f == this.e.length) {
                a(1);
            }
            byte[] bArr = this.e;
            int i2 = this.f;
            this.f = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            byte[] bArr2 = this.e;
            int length = bArr2.length;
            int i3 = this.f;
            if (i2 <= length - i3) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f += i2;
                return;
            }
            int length2 = bArr2.length - i3;
            System.arraycopy(bArr, i, bArr2, i3, length2);
            int i4 = i2 - length2;
            a(i4);
            System.arraycopy(bArr, i + length2, this.e, 0, i4);
            this.f = i4;
        }
    }
}
