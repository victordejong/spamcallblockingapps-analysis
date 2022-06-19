package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n51.class */
public final class n51 implements Runnable {

    /* renamed from: d */
    private final WeakReference<o51> f26991d;

    public /* synthetic */ n51(o51 o51Var, m51 m51Var) {
        this.f26991d = new WeakReference<>(o51Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        o51 o51Var = this.f26991d.get();
        if (o51Var != null) {
            o51Var.m13339Q0(l51.f25952a);
        }
    }
}
