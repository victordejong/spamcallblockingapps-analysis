package com.google.zxing.c;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.e;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/p.class */
public final class p implements e {

    /* renamed from: a  reason: collision with root package name */
    private final j f32964a = new j();

    @Override // com.google.zxing.e
    public final b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (aVar == a.UPC_A) {
            return this.f32964a.a("0".concat(String.valueOf(str)), a.EAN_13, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(aVar)));
    }
}
