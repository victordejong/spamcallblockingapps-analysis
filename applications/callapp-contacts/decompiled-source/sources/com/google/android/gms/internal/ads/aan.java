package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aan.class */
final /* synthetic */ class aan implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final zzbbz f23010a;

    private aan(zzbbz zzbbzVar) {
        this.f23010a = zzbbzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(zzbbz zzbbzVar) {
        return new aan(zzbbzVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23010a.b();
    }
}
