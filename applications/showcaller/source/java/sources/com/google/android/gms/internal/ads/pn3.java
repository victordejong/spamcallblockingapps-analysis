package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pn3.class */
public final class pn3 extends AbstractC7169y4 {

    /* renamed from: f */
    private final byte[] f28074f;

    /* renamed from: g */
    private Uri f28075g;

    /* renamed from: h */
    private int f28076h;

    /* renamed from: i */
    private int f28077i;

    /* renamed from: j */
    private boolean f28078j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pn3(byte[] bArr) {
        super(false);
        boolean z = false;
        Objects.requireNonNull(bArr);
        C7173y8.m8898a(bArr.length > 0 ? true : z);
        this.f28074f = bArr;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f28077i;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f28074f, this.f28076h, bArr, i, min);
        this.f28076h += min;
        this.f28077i -= min;
        m8961r(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        this.f28075g = c6472fb.f22761a;
        m8963p(c6472fb);
        long j = c6472fb.f22766f;
        int length = this.f28074f.length;
        if (j <= length) {
            int i = (int) j;
            this.f28076h = i;
            int i2 = length - i;
            this.f28077i = i2;
            long j2 = c6472fb.f22767g;
            if (j2 != -1) {
                this.f28077i = (int) Math.min(i2, j2);
            }
            this.f28078j = true;
            m8962q(c6472fb);
            long j3 = c6472fb.f22767g;
            return j3 != -1 ? j3 : this.f28077i;
        }
        throw new zzak(2008);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        if (this.f28078j) {
            this.f28078j = false;
            m8960s();
        }
        this.f28075g = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f28075g;
    }
}
