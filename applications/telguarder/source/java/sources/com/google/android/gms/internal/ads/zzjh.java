package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjh.class */
final class zzjh implements zzij {
    private boolean zzaml;
    private int zzamg = -1;
    private int zzaho = -1;
    private int zzake = 0;
    private ByteBuffer zzamk = zzajc;
    private ByteBuffer zzalj = zzajc;

    @Override // com.google.android.gms.internal.ads.zzij
    public final void flush() {
        this.zzalj = zzajc;
        this.zzaml = false;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean isActive() {
        int i = this.zzake;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void reset() {
        flush();
        this.zzamk = zzajc;
        this.zzamg = -1;
        this.zzaho = -1;
        this.zzake = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzb(int i, int i2, int i3) throws zzii {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            if (this.zzamg == i && this.zzaho == i2 && this.zzake == i3) {
                return false;
            }
            this.zzamg = i;
            this.zzaho = i2;
            this.zzake = i3;
            if (i3 != 2) {
                return true;
            }
            this.zzamk = zzajc;
            return true;
        }
        throw new zzii(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzfe() {
        return this.zzaml && this.zzalj == zzajc;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final int zzfj() {
        return this.zzaho;
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed A[LOOP:2: B:31:0x00ed->B:33:0x00f3, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007d, B:33:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzij
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzn(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjh.zzn(java.nio.ByteBuffer):void");
    }
}
