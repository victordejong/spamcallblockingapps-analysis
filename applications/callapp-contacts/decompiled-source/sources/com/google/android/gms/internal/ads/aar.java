package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aar.class */
final class aar implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ boolean f23017a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzbcb f23018b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aar(zzbcb zzbcbVar, boolean z) {
        this.f23018b = zzbcbVar;
        this.f23017a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23018b.a("windowVisibilityChanged", "isVisible", String.valueOf(this.f23017a));
    }
}
