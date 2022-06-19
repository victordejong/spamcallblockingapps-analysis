package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeka.class */
public final class zzeka extends OutputStream {
    private static final byte[] zzimf = new byte[0];
    private int zzimi;
    private int zzimj;
    private final int zzimg = 128;
    private final ArrayList<zzejr> zzimh = new ArrayList<>();
    private byte[] buffer = new byte[128];

    public zzeka(int i) {
    }

    private final int size() {
        int i;
        int i2;
        synchronized (this) {
            i = this.zzimi;
            i2 = this.zzimj;
        }
        return i + i2;
    }

    private final void zzgc(int i) {
        this.zzimh.add(new zzekb(this.buffer));
        int length = this.zzimi + this.buffer.length;
        this.zzimi = length;
        this.buffer = new byte[Math.max(this.zzimg, Math.max(i, length >>> 1))];
        this.zzimj = 0;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.zzimj == this.buffer.length) {
                zzgc(1);
            }
            byte[] bArr = this.buffer;
            int i2 = this.zzimj;
            this.zzimj = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            byte[] bArr2 = this.buffer;
            int length = bArr2.length;
            int i3 = this.zzimj;
            if (i2 <= length - i3) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.zzimj += i2;
                return;
            }
            int length2 = bArr2.length - i3;
            System.arraycopy(bArr, i, bArr2, i3, length2);
            int i4 = i2 - length2;
            zzgc(i4);
            System.arraycopy(bArr, i + length2, this.buffer, 0, i4);
            this.zzimj = i4;
        }
    }

    public final zzejr zzbfz() {
        zzejr zzl;
        synchronized (this) {
            int i = this.zzimj;
            byte[] bArr = this.buffer;
            if (i >= bArr.length) {
                this.zzimh.add(new zzekb(this.buffer));
                this.buffer = zzimf;
            } else if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                this.zzimh.add(new zzekb(bArr2));
            }
            this.zzimi += this.zzimj;
            this.zzimj = 0;
            zzl = zzejr.zzl(this.zzimh);
        }
        return zzl;
    }
}
