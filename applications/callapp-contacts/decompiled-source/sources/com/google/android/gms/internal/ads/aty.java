package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aty.class */
public final class aty implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<atx> f23883a;

    private aty(atx atxVar) {
        this.f23883a = new WeakReference<>(atxVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        atx atxVar = this.f23883a.get();
        if (atxVar != null) {
            atxVar.a(atw.f23878a);
        }
    }
}
