package com.google.zxing.a.a;

import com.google.zxing.common.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/e.class */
public final class e extends g {

    /* renamed from: c  reason: collision with root package name */
    private final short f32911c;

    /* renamed from: d  reason: collision with root package name */
    private final short f32912d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(g gVar, int i, int i2) {
        super(gVar);
        this.f32911c = (short) i;
        this.f32912d = (short) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.zxing.a.a.g
    public final void a(a aVar, byte[] bArr) {
        aVar.a(this.f32911c, this.f32912d);
    }

    public final String toString() {
        short s = this.f32911c;
        short s2 = this.f32912d;
        return "<" + Integer.toBinaryString((s & ((1 << s2) - 1)) | (1 << s2) | (1 << this.f32912d)).substring(1) + '>';
    }
}
