package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asa.class */
public final class asa implements Runnable {

    /* renamed from: a */
    private final WeakReference<arz> f10263a;

    /* JADX INFO: Access modifiers changed from: private */
    public asa(arz arzVar) {
        this.f10263a = new WeakReference<>(arzVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        arz arzVar = this.f10263a.get();
        if (arzVar != null) {
            arzVar.m12782d();
        }
    }
}
