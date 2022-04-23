package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aag.class */
final class aag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f23003a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f23004b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ zzbbq f23005c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aag(zzbbq zzbbqVar, int i, int i2) {
        this.f23005c = zzbbqVar;
        this.f23003a = i;
        this.f23004b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f23005c.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f23005c.f28604a;
            aakVar2.a(this.f23003a, this.f23004b);
        }
    }
}
