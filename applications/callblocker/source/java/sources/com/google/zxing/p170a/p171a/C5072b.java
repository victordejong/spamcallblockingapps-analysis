package com.google.zxing.p170a.p171a;

import com.google.zxing.common.C5116a;
/* renamed from: com.google.zxing.a.a.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/a/a/b.class */
public final class C5072b extends AbstractC5078g {

    /* renamed from: b */
    private final short f21507b;

    /* renamed from: c */
    private final short f21508c;

    public C5072b(AbstractC5078g abstractC5078g, int i, int i2) {
        super(abstractC5078g);
        this.f21507b = (short) i;
        this.f21508c = (short) i2;
    }

    @Override // com.google.zxing.p170a.p171a.AbstractC5078g
    /* renamed from: a */
    public void mo1570a(C5116a c5116a, byte[] bArr) {
        for (int i = 0; i < this.f21508c; i++) {
            if (i == 0 || (i == 31 && this.f21508c <= 62)) {
                c5116a.m1473a(31, 5);
                if (this.f21508c > 62) {
                    c5116a.m1473a(this.f21508c - 31, 16);
                } else if (i == 0) {
                    c5116a.m1473a(Math.min((int) this.f21508c, 31), 5);
                } else {
                    c5116a.m1473a(this.f21508c - 31, 5);
                }
            }
            c5116a.m1473a(bArr[this.f21507b + i], 8);
        }
    }

    public String toString() {
        return "<" + ((int) this.f21507b) + "::" + ((this.f21507b + this.f21508c) - 1) + '>';
    }
}
