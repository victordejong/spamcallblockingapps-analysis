package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtq.class */
public final class dtq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dtn f27214a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dtq(dtn dtnVar) {
        this.f27214a = dtnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27214a.d();
    }
}
