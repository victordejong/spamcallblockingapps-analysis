package com.google.android.gms.internal.clearcut;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbm.class */
public final class zzbm extends zzbk {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzfu;
    private int zzfv;
    private int zzfw;
    private int zzfx;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbm(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzfx = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzfw = this.pos;
        this.zzfu = z;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbk
    public final int zzaf() {
        return this.pos - this.zzfw;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbk
    public final int zzl(int i) {
        if (i >= 0) {
            int zzaf = i + zzaf();
            int i2 = this.zzfx;
            if (zzaf > i2) {
                throw zzco.zzbl();
            }
            this.zzfx = zzaf;
            this.limit += this.zzfv;
            int i3 = this.limit;
            int i4 = i3 - this.zzfw;
            int i5 = this.zzfx;
            if (i4 > i5) {
                this.zzfv = i4 - i5;
                this.limit = i3 - this.zzfv;
            } else {
                this.zzfv = 0;
            }
            return i2;
        }
        throw new zzco("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
}
