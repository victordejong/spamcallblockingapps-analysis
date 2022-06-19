package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fd3.class */
public final class fd3 extends OutputStream {

    /* renamed from: d */
    private static final byte[] f22796d = new byte[0];

    /* renamed from: g */
    private int f22799g;

    /* renamed from: i */
    private int f22801i;

    /* renamed from: e */
    private final int f22797e = 128;

    /* renamed from: f */
    private final ArrayList<zzgex> f22798f = new ArrayList<>();

    /* renamed from: h */
    private byte[] f22800h = new byte[128];

    public fd3(int i) {
    }

    /* renamed from: f */
    private final void m15273f(int i) {
        this.f22798f.add(new zzget(this.f22800h));
        int length = this.f22799g + this.f22800h.length;
        this.f22799g = length;
        this.f22800h = new byte[Math.max(this.f22797e, Math.max(i, length >>> 1))];
        this.f22801i = 0;
    }

    /* renamed from: a */
    public final zzgex m15275a() {
        zzgex zzx;
        synchronized (this) {
            int i = this.f22801i;
            byte[] bArr = this.f22800h;
            int length = bArr.length;
            if (i >= length) {
                this.f22798f.add(new zzget(bArr));
                this.f22800h = f22796d;
            } else if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(length, i));
                this.f22798f.add(new zzget(bArr2));
            }
            this.f22799g += this.f22801i;
            this.f22801i = 0;
            zzx = zzgex.zzx(this.f22798f);
        }
        return zzx;
    }

    /* renamed from: e */
    public final int m15274e() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f22799g;
            i2 = this.f22801i;
        }
        return i + i2;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m15274e()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.f22801i == this.f22800h.length) {
                m15273f(1);
            }
            byte[] bArr = this.f22800h;
            int i2 = this.f22801i;
            this.f22801i = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            byte[] bArr2 = this.f22800h;
            int length = bArr2.length;
            int i3 = this.f22801i;
            int i4 = length - i3;
            if (i2 <= i4) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f22801i += i2;
                return;
            }
            System.arraycopy(bArr, i, bArr2, i3, i4);
            int i5 = i2 - i4;
            m15273f(i5);
            System.arraycopy(bArr, i + i4, this.f22800h, 0, i5);
            this.f22801i = i5;
        }
    }
}
