package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dth.class */
public final class dth implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f27194a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ boolean f27195b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ dtg f27196c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dth(dtg dtgVar, int i, boolean z) {
        this.f27196c = dtgVar;
        this.f27194a = i;
        this.f27195b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        beb.a b2 = this.f27196c.b(this.f27194a, this.f27195b);
        this.f27196c.f = b2;
        if (dtg.a(this.f27194a, b2)) {
            this.f27196c.a(this.f27194a + 1, this.f27195b);
        }
    }
}
