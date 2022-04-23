package com.google.zxing.d.a;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    int f32993a;

    /* renamed from: b  reason: collision with root package name */
    private final b[] f32994b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32995c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32996d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i, int i2) {
        b[] bVarArr = new b[i];
        this.f32994b = bVarArr;
        int length = bVarArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f32994b[i3] = new b(((i2 + 4) * 17) + 1);
        }
        this.f32996d = i2 * 17;
        this.f32995c = i;
        this.f32993a = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b a() {
        return this.f32994b[this.f32993a];
    }

    public final byte[][] a(int i, int i2) {
        byte[][] bArr = new byte[this.f32995c * i2][this.f32996d * i];
        int i3 = this.f32995c * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            b bVar = this.f32994b[i4 / i2];
            int length = bVar.f32997a.length * i;
            byte[] bArr2 = new byte[length];
            for (int i5 = 0; i5 < length; i5++) {
                bArr2[i5] = bVar.f32997a[i5 / i];
            }
            bArr[(i3 - i4) - 1] = bArr2;
        }
        return bArr;
    }
}
