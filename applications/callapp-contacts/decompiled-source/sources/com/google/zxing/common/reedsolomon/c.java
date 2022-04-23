package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/reedsolomon/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final a f32990a;

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f32991b;

    public c(a aVar) {
        this.f32990a = aVar;
        ArrayList arrayList = new ArrayList();
        this.f32991b = arrayList;
        arrayList.add(new b(aVar, new int[]{1}));
    }

    private b a(int i) {
        if (i >= this.f32991b.size()) {
            List<b> list = this.f32991b;
            b bVar = list.get(list.size() - 1);
            for (int size = this.f32991b.size(); size <= i; size++) {
                a aVar = this.f32990a;
                b bVar2 = new b(aVar, new int[]{1, aVar.i[(size - 1) + aVar.m]});
                if (bVar.f32988a.equals(bVar2.f32988a)) {
                    if (bVar.a() || bVar2.a()) {
                        bVar = bVar.f32988a.k;
                    } else {
                        int[] iArr = bVar.f32989b;
                        int length = iArr.length;
                        int[] iArr2 = bVar2.f32989b;
                        int length2 = iArr2.length;
                        int[] iArr3 = new int[(length + length2) - 1];
                        for (int i2 = 0; i2 < length; i2++) {
                            int i3 = iArr[i2];
                            for (int i4 = 0; i4 < length2; i4++) {
                                int i5 = i2 + i4;
                                iArr3[i5] = a.a(iArr3[i5], bVar.f32988a.b(i3, iArr2[i4]));
                            }
                        }
                        bVar = new b(bVar.f32988a, iArr3);
                    }
                    this.f32991b.add(bVar);
                } else {
                    throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
                }
            }
        }
        return this.f32991b.get(i);
    }

    public final void a(int[] iArr, int i) {
        if (i != 0) {
            int length = iArr.length - i;
            if (length > 0) {
                b a2 = a(i);
                int[] iArr2 = new int[length];
                System.arraycopy(iArr, 0, iArr2, 0, length);
                int[] iArr3 = new b(this.f32990a, iArr2).a(i, 1).a(a2)[1].f32989b;
                int length2 = i - iArr3.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    iArr[length + i2] = 0;
                }
                System.arraycopy(iArr3, 0, iArr, length + length2, iArr3.length);
                return;
            }
            throw new IllegalArgumentException("No data bytes provided");
        }
        throw new IllegalArgumentException("No error correction bytes");
    }
}
