package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.oe */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oe.class */
final class C6809oe implements AbstractC6735me {

    /* renamed from: a */
    private final int f27509a;

    /* renamed from: b */
    private final int f27510b;

    /* renamed from: c */
    private final C6665ki f27511c;

    public C6809oe(C6624je c6624je) {
        C6665ki c6665ki = c6624je.f24849P0;
        this.f27511c = c6665ki;
        c6665ki.m13899i(12);
        this.f27509a = c6665ki.m13887u();
        this.f27510b = c6665ki.m13887u();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6735me
    /* renamed from: b */
    public final int mo12307b() {
        int i = this.f27509a;
        int i2 = i;
        if (i == 0) {
            i2 = this.f27511c.m13887u();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6735me
    /* renamed from: c */
    public final boolean mo12306c() {
        return this.f27509a != 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6735me
    public final int zza() {
        return this.f27510b;
    }
}
