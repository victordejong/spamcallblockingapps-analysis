package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cqf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csb.class */
final class csb extends cqf.C2887j<Void> implements Runnable {

    /* renamed from: a */
    private final Runnable f13632a;

    public csb(Runnable runnable) {
        this.f13632a = (Runnable) cor.m10936a(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f13632a.run();
        } catch (Throwable th) {
            mo10754a(th);
            throw cou.m10921b(th);
        }
    }
}
