package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlz.class */
final class dlz extends dmh {

    /* renamed from: c  reason: collision with root package name */
    private final int f26945c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26946d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dlz(byte[] bArr, int i, int i2) {
        super(bArr);
        c(i, i + i2, bArr.length);
        this.f26945c = i;
        this.f26946d = i2;
    }

    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    public final byte a(int i) {
        b(i, b());
        return this.f26955b[this.f26945c + i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    public final byte b(int i) {
        return this.f26955b[this.f26945c + i];
    }

    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    public final int b() {
        return this.f26946d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    public final void b(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f26955b, l() + i, bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dmh
    public final int l() {
        return this.f26945c;
    }
}
