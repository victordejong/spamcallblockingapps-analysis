package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clc.class */
final /* synthetic */ class clc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bza f26012a;

    private clc(bza bzaVar) {
        this.f26012a = bzaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(bza bzaVar) {
        return new clc(bzaVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f26012a.a();
    }
}
