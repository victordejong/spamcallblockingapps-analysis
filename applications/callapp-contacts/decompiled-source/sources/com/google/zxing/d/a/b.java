package com.google.zxing.d.a;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f32997a;

    /* renamed from: b  reason: collision with root package name */
    private int f32998b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i) {
        this.f32997a = new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f32998b;
            this.f32998b = i3 + 1;
            this.f32997a[i3] = z ? (byte) 1 : (byte) 0;
        }
    }
}
