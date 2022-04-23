package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edy.class */
final class edy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzht f27706a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ edt f27707b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public edy(edt edtVar, zzht zzhtVar) {
        this.f27707b = edtVar;
        this.f27706a = zzhtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27707b.f27696b.a(this.f27706a);
    }
}
