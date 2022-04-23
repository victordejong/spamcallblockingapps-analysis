package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eea.class */
final class eea implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f27710a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f27711b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f27712c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ float f27713d;
    private final /* synthetic */ edt e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eea(edt edtVar, int i, int i2, int i3, float f) {
        this.e = edtVar;
        this.f27710a = i;
        this.f27711b = i2;
        this.f27712c = i3;
        this.f27713d = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.f27696b.a(this.f27710a, this.f27711b);
    }
}
