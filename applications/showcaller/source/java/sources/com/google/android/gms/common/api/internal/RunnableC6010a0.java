package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.C5984a;
/* renamed from: com.google.android.gms.common.api.internal.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/a0.class */
final class RunnableC6010a0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C6013b0 f19217d;

    public RunnableC6010a0(C6013b0 c6013b0) {
        this.f19217d = c6013b0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C5984a.AbstractC5993f abstractC5993f;
        C5984a.AbstractC5993f abstractC5993f2;
        abstractC5993f = this.f19217d.f19223a.f19231e;
        abstractC5993f2 = this.f19217d.f19223a.f19231e;
        abstractC5993f.mo17317e(abstractC5993f2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
