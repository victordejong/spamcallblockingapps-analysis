package com.google.zxing.a.a;

import com.google.zxing.common.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/b.class */
public final class b extends g {

    /* renamed from: c  reason: collision with root package name */
    private final short f32903c;

    /* renamed from: d  reason: collision with root package name */
    private final short f32904d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g gVar, int i, int i2) {
        super(gVar);
        this.f32903c = (short) i;
        this.f32904d = (short) i2;
    }

    @Override // com.google.zxing.a.a.g
    public final void a(a aVar, byte[] bArr) {
        int i = 0;
        while (true) {
            short s = this.f32904d;
            if (i < s) {
                if (i == 0 || (i == 31 && s <= 62)) {
                    aVar.a(31, 5);
                    short s2 = this.f32904d;
                    if (s2 > 62) {
                        aVar.a(s2 - 31, 16);
                    } else if (i == 0) {
                        aVar.a(Math.min((int) s2, 31), 5);
                    } else {
                        aVar.a(s2 - 31, 5);
                    }
                }
                aVar.a(bArr[this.f32903c + i], 8);
                i++;
            } else {
                return;
            }
        }
    }

    public final String toString() {
        return "<" + ((int) this.f32903c) + "::" + ((this.f32903c + this.f32904d) - 1) + '>';
    }
}
