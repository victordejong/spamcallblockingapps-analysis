package com.google.zxing.p408c;

import com.google.zxing.AbstractC16207e;
import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.Map;
/* renamed from: com.google.zxing.c.p */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/p.class */
public final class C16182p implements AbstractC16207e {

    /* renamed from: a */
    private final C16176j f57135a = new C16176j();

    @Override // com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (enumC16139a == EnumC16139a.UPC_A) {
            return this.f57135a.mo7642a("0".concat(String.valueOf(str)), EnumC16139a.EAN_13, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(enumC16139a)));
    }
}
