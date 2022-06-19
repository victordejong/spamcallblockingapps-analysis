package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpy.class */
final class dpy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ IOException f15351a;

    /* renamed from: b */
    private final /* synthetic */ dpt f15352b;

    public dpy(dpt dptVar, IOException iOException) {
        this.f15352b = dptVar;
        this.f15351a = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dqb dqbVar;
        dqbVar = this.f15352b.f15311e;
        dqbVar.mo8901a(this.f15351a);
    }
}
