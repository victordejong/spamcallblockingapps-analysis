package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acs.class */
final class acs implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ acp f39917a;

    public acs(acp acpVar) {
        this.f39917a = acpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        acr zzlr = zzr.zzlr();
        zzlr.f39916a.remove(this.f39917a);
    }
}
