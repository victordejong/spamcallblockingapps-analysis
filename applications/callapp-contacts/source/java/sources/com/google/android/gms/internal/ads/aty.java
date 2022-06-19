package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aty.class */
public final class aty implements Runnable {

    /* renamed from: a */
    private final WeakReference<atx> f43171a;

    /* JADX INFO: Access modifiers changed from: private */
    public aty(atx atxVar) {
        this.f43171a = new WeakReference<>(atxVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        atx atxVar = this.f43171a.get();
        if (atxVar != null) {
            atxVar.m18374a(atw.f43164a);
        }
    }
}
