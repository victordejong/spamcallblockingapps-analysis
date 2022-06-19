package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzja.class */
final class zzja implements zzij {
    private int[] zzamh;
    private boolean zzami;
    private int[] zzamj;
    private boolean zzaml;
    private ByteBuffer zzamk = zzajc;
    private ByteBuffer zzalj = zzajc;
    private int zzaho = -1;
    private int zzamg = -1;

    @Override // com.google.android.gms.internal.ads.zzij
    public final void flush() {
        this.zzalj = zzajc;
        this.zzaml = false;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean isActive() {
        return this.zzami;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void reset() {
        flush();
        this.zzamk = zzajc;
        this.zzaho = -1;
        this.zzamg = -1;
        this.zzamj = null;
        this.zzami = false;
    }

    public final void zzb(int[] iArr) {
        this.zzamh = iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzb(int i, int i2, int i3) throws zzii {
        boolean z = !Arrays.equals(this.zzamh, this.zzamj);
        int[] iArr = this.zzamh;
        this.zzamj = iArr;
        if (iArr == null) {
            this.zzami = false;
            return z;
        } else if (i3 != 2) {
            throw new zzii(i, i2, i3);
        } else {
            if (!z && this.zzamg == i && this.zzaho == i2) {
                return false;
            }
            this.zzamg = i;
            this.zzaho = i2;
            this.zzami = i2 != iArr.length;
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.zzamj;
                if (i4 >= iArr2.length) {
                    return true;
                }
                int i5 = iArr2[i4];
                if (i5 >= i2) {
                    throw new zzii(i, i2, i3);
                }
                this.zzami = (i5 != i4) | this.zzami;
                i4++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzfe() {
        return this.zzaml && this.zzalj == zzajc;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final int zzfj() {
        int[] iArr = this.zzamj;
        return iArr == null ? this.zzaho : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final int zzfk() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void zzfl() {
        this.zzaml = true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final ByteBuffer zzfm() {
        ByteBuffer byteBuffer = this.zzalj;
        this.zzalj = zzajc;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void zzn(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = (((limit - position) / (this.zzaho * 2)) * this.zzamj.length) << 1;
        if (this.zzamk.capacity() < length) {
            this.zzamk = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.zzamk.clear();
        }
        while (position < limit) {
            for (int i : this.zzamj) {
                this.zzamk.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.zzaho << 1;
        }
        byteBuffer.position(limit);
        this.zzamk.flip();
        this.zzalj = this.zzamk;
    }
}
