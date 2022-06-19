package com.google.zxing.p170a.p171a;

import com.google.zxing.common.C5116a;
/* renamed from: com.google.zxing.a.a.e */
/* loaded from: classes-dex2jar.jar:com/google/zxing/a/a/e.class */
public final class C5076e extends AbstractC5078g {

    /* renamed from: b */
    private final short f21516b;

    /* renamed from: c */
    private final short f21517c;

    public C5076e(AbstractC5078g abstractC5078g, int i, int i2) {
        super(abstractC5078g);
        this.f21516b = (short) i;
        this.f21517c = (short) i2;
    }

    @Override // com.google.zxing.p170a.p171a.AbstractC5078g
    /* renamed from: a */
    public void mo1570a(C5116a c5116a, byte[] bArr) {
        c5116a.m1473a(this.f21516b, this.f21517c);
    }

    public String toString() {
        return "<" + Integer.toBinaryString((this.f21516b & ((1 << this.f21517c) - 1)) | (1 << this.f21517c) | (1 << this.f21517c)).substring(1) + '>';
    }
}
