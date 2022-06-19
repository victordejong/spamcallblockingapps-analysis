package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.zxing.common.reedsolomon.c */
/* loaded from: classes-dex2jar.jar:com/google/zxing/common/reedsolomon/c.class */
public final class C5121c {

    /* renamed from: a */
    private final C5119a f21655a;

    /* renamed from: b */
    private final List<C5120b> f21656b = new ArrayList();

    public C5121c(C5119a c5119a) {
        this.f21655a = c5119a;
        this.f21656b.add(new C5120b(c5119a, new int[]{1}));
    }

    /* renamed from: a */
    private C5120b m1437a(int i) {
        if (i >= this.f21656b.size()) {
            C5120b c5120b = this.f21656b.get(this.f21656b.size() - 1);
            for (int size = this.f21656b.size(); size <= i; size++) {
                c5120b = c5120b.m1440b(new C5120b(this.f21655a, new int[]{1, this.f21655a.m1452a((size - 1) + this.f21655a.m1450b())}));
                this.f21656b.add(c5120b);
            }
        }
        return this.f21656b.get(i);
    }

    /* renamed from: a */
    public void m1436a(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        C5120b m1437a = m1437a(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] m1445a = new C5120b(this.f21655a, iArr2).m1443a(i, 1).m1438c(m1437a)[1].m1445a();
        int length2 = i - m1445a.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(m1445a, 0, iArr, length + length2, m1445a.length);
    }
}
