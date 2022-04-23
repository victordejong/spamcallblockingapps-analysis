package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acs.class */
final class acs implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ acp f23113a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acs(acp acpVar) {
        this.f23113a = acpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        acr zzlr = zzr.zzlr();
        zzlr.f23112a.remove(this.f23113a);
    }
}
