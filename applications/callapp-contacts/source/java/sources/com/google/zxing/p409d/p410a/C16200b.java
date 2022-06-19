package com.google.zxing.p409d.p410a;
/* renamed from: com.google.zxing.d.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/b.class */
final class C16200b {

    /* renamed from: a */
    final byte[] f57185a;

    /* renamed from: b */
    private int f57186b = 0;

    public C16200b(int i) {
        this.f57185a = new byte[i];
    }

    /* renamed from: a */
    public final void m7662a(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f57186b;
            this.f57186b = i3 + 1;
            this.f57185a[i3] = z ? (byte) 1 : (byte) 0;
        }
    }
}
