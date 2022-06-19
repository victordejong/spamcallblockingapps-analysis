package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.zxing.common.reedsolomon.c */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/reedsolomon/c.class */
public final class C16195c {

    /* renamed from: a */
    private final C16193a f57178a;

    /* renamed from: b */
    private final List<C16194b> f57179b;

    public C16195c(C16193a c16193a) {
        this.f57178a = c16193a;
        ArrayList arrayList = new ArrayList();
        this.f57179b = arrayList;
        arrayList.add(new C16194b(c16193a, new int[]{1}));
    }

    /* renamed from: a */
    private C16194b m7668a(int i) {
        C16194b c16194b;
        if (i >= this.f57179b.size()) {
            List<C16194b> list = this.f57179b;
            C16194b c16194b2 = list.get(list.size() - 1);
            for (int size = this.f57179b.size(); size <= i; size++) {
                C16193a c16193a = this.f57178a;
                C16194b c16194b3 = new C16194b(c16193a, new int[]{1, c16193a.f57169i[(size - 1) + c16193a.f57173m]});
                if (!c16194b2.f57176a.equals(c16194b3.f57176a)) {
                    throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
                }
                if (c16194b2.m7673a() || c16194b3.m7673a()) {
                    c16194b = c16194b2.f57176a.f57171k;
                } else {
                    int[] iArr = c16194b2.f57177b;
                    int length = iArr.length;
                    int[] iArr2 = c16194b3.f57177b;
                    int length2 = iArr2.length;
                    int[] iArr3 = new int[(length + length2) - 1];
                    for (int i2 = 0; i2 < length; i2++) {
                        int i3 = iArr[i2];
                        for (int i4 = 0; i4 < length2; i4++) {
                            int i5 = i2 + i4;
                            iArr3[i5] = C16193a.m7675a(iArr3[i5], c16194b2.f57176a.m7674b(i3, iArr2[i4]));
                        }
                    }
                    c16194b = new C16194b(c16194b2.f57176a, iArr3);
                }
                c16194b2 = c16194b;
                this.f57179b.add(c16194b2);
            }
        }
        return this.f57179b.get(i);
    }

    /* renamed from: a */
    public final void m7667a(int[] iArr, int i) {
        if (i != 0) {
            int length = iArr.length - i;
            if (length <= 0) {
                throw new IllegalArgumentException("No data bytes provided");
            }
            C16194b m7668a = m7668a(i);
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            int[] iArr3 = new C16194b(this.f57178a, iArr2).m7671a(i, 1).m7670a(m7668a)[1].f57177b;
            int length2 = i - iArr3.length;
            for (int i2 = 0; i2 < length2; i2++) {
                iArr[length + i2] = 0;
            }
            System.arraycopy(iArr3, 0, iArr, length + length2, iArr3.length);
            return;
        }
        throw new IllegalArgumentException("No error correction bytes");
    }
}
