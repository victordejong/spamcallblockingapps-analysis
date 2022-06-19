package com.google.zxing.p174c;

import com.google.zxing.AbstractC5133e;
import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.o */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/o.class */
public final class C5111o implements AbstractC5133e {

    /* renamed from: a */
    private final C5106j f21592a = new C5106j();

    @Override // com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.UPC_A) {
            throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(enumC5069a)));
        }
        return this.f21592a.mo1394a("0".concat(String.valueOf(str)), EnumC5069a.EAN_13, i, i2, map);
    }
}
