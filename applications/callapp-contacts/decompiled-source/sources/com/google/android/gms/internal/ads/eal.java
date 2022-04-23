package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eal.class */
final class eal implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ IOException f27527a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ eah f27528b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eal(eah eahVar, IOException iOException) {
        this.f27528b = eahVar;
        this.f27527a = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27528b.f27516a.a(this.f27527a);
    }
}
