package com.google.zxing.p404a.p405a;

import com.google.zxing.common.C16190a;
/* renamed from: com.google.zxing.a.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/b.class */
public final class C16142b extends AbstractC16148g {

    /* renamed from: c */
    private final short f57055c;

    /* renamed from: d */
    private final short f57056d;

    public C16142b(AbstractC16148g abstractC16148g, int i, int i2) {
        super(abstractC16148g);
        this.f57055c = (short) i;
        this.f57056d = (short) i2;
    }

    @Override // com.google.zxing.p404a.p405a.AbstractC16148g
    /* renamed from: a */
    public final void mo7746a(C16190a c16190a, byte[] bArr) {
        int i = 0;
        while (true) {
            short s = this.f57056d;
            if (i < s) {
                if (i == 0 || (i == 31 && s <= 62)) {
                    c16190a.m7685a(31, 5);
                    short s2 = this.f57056d;
                    if (s2 > 62) {
                        c16190a.m7685a(s2 - 31, 16);
                    } else if (i == 0) {
                        c16190a.m7685a(Math.min((int) s2, 31), 5);
                    } else {
                        c16190a.m7685a(s2 - 31, 5);
                    }
                }
                c16190a.m7685a(bArr[this.f57055c + i], 8);
                i++;
            } else {
                return;
            }
        }
    }

    public final String toString() {
        return "<" + ((int) this.f57055c) + "::" + ((this.f57055c + this.f57056d) - 1) + '>';
    }
}
