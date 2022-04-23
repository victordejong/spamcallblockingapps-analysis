package com.google.android.gms.common.api.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ad.class */
final class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f22632a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ae aeVar) {
        this.f22632a = aeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f22632a.f22633a.f22634a.disconnect(String.valueOf(this.f22632a.f22633a.f22634a.getClass().getName()).concat(" disconnecting because it was signed out."));
    }
}
