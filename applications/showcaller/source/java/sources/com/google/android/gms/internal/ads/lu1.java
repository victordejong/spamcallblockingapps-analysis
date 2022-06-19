package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lu1.class */
final class lu1 extends kt1 {

    /* renamed from: i */
    private int[] f26276i;

    /* renamed from: j */
    private int[] f26277j;

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: g */
    public final void mo8464g(ByteBuffer byteBuffer) {
        int[] iArr = this.f26277j;
        Objects.requireNonNull(iArr);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer m13811h = m13811h(((limit - position) / this.f25343b.f31447e) * this.f25344c.f31447e);
        while (position < limit) {
            for (int i : iArr) {
                m13811h.putShort(byteBuffer.getShort(i + i + position));
            }
            position += this.f25343b.f31447e;
        }
        byteBuffer.position(limit);
        m13811h.flip();
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: j */
    public final w31 mo8463j(w31 w31Var) {
        int[] iArr = this.f26276i;
        if (iArr == null) {
            return w31.f31443a;
        }
        if (w31Var.f31446d != 2) {
            throw new zzdd(w31Var);
        }
        boolean z = w31Var.f31445c != iArr.length;
        int i = 0;
        while (true) {
            int length = iArr.length;
            if (i >= length) {
                return z ? new w31(w31Var.f31444b, length, 2) : w31.f31443a;
            }
            int i2 = iArr[i];
            if (i2 >= w31Var.f31445c) {
                throw new zzdd(w31Var);
            }
            z |= i2 != i;
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: l */
    protected final void mo8461l() {
        this.f26277j = this.f26276i;
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: m */
    protected final void mo8460m() {
        this.f26277j = null;
        this.f26276i = null;
    }

    /* renamed from: n */
    public final void m13416n(int[] iArr) {
        this.f26276i = iArr;
    }
}
