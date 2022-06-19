package com.google.zxing.p404a.p405a;

import com.google.zxing.common.C16190a;
/* renamed from: com.google.zxing.a.a.e */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/e.class */
public final class C16146e extends AbstractC16148g {

    /* renamed from: c */
    private final short f57064c;

    /* renamed from: d */
    private final short f57065d;

    public C16146e(AbstractC16148g abstractC16148g, int i, int i2) {
        super(abstractC16148g);
        this.f57064c = (short) i;
        this.f57065d = (short) i2;
    }

    @Override // com.google.zxing.p404a.p405a.AbstractC16148g
    /* renamed from: a */
    public final void mo7746a(C16190a c16190a, byte[] bArr) {
        c16190a.m7685a(this.f57064c, this.f57065d);
    }

    public final String toString() {
        short s = this.f57064c;
        short s2 = this.f57065d;
        return "<" + Integer.toBinaryString((s & ((1 << s2) - 1)) | (1 << s2) | (1 << this.f57065d)).substring(1) + '>';
    }
}
