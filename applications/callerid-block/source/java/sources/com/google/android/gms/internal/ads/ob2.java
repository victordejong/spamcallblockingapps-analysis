package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ob2.class */
public final class ob2 extends OutputStream {

    /* renamed from: g */
    private static final byte[] f7832g = new byte[0];

    /* renamed from: d */
    private int f7835d;

    /* renamed from: f */
    private int f7837f;

    /* renamed from: b */
    private final int f7833b = 128;

    /* renamed from: c */
    private final ArrayList<zzesf> f7834c = new ArrayList<>();

    /* renamed from: e */
    private byte[] f7836e = new byte[128];

    public ob2(int i) {
    }

    /* renamed from: x */
    private final void m6339x(int i) {
        this.f7834c.add(new zzesc(this.f7836e));
        int length = this.f7835d + this.f7836e.length;
        this.f7835d = length;
        this.f7836e = new byte[Math.max(this.f7833b, Math.max(i, length >>> 1))];
        this.f7837f = 0;
    }

    /* renamed from: a */
    public final zzesf m6341a() {
        zzesf zzw;
        synchronized (this) {
            int i = this.f7837f;
            byte[] bArr = this.f7836e;
            int length = bArr.length;
            if (i >= length) {
                this.f7834c.add(new zzesc(bArr));
                this.f7836e = f7832g;
            } else if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(length, i));
                this.f7834c.add(new zzesc(bArr2));
            }
            this.f7835d += this.f7837f;
            this.f7837f = 0;
            zzw = zzesf.zzw(this.f7834c);
        }
        return zzw;
    }

    /* renamed from: p */
    public final int m6340p() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f7835d;
            i2 = this.f7837f;
        }
        return i + i2;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m6340p()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.f7837f == this.f7836e.length) {
                m6339x(1);
            }
            byte[] bArr = this.f7836e;
            int i2 = this.f7837f;
            this.f7837f = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            byte[] bArr2 = this.f7836e;
            int length = bArr2.length;
            int i3 = this.f7837f;
            int i4 = length - i3;
            if (i2 <= i4) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f7837f += i2;
                return;
            }
            System.arraycopy(bArr, i, bArr2, i3, i4);
            int i5 = i2 - i4;
            m6339x(i5);
            System.arraycopy(bArr, i + i4, this.f7836e, 0, i5);
            this.f7837f = i5;
        }
    }
}
