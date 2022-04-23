package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejg.class */
public final class ejg extends eld {

    /* renamed from: a  reason: collision with root package name */
    final AppEventListener f27879a;

    public ejg(AppEventListener appEventListener) {
        this.f27879a = appEventListener;
    }

    @Override // com.google.android.gms.internal.ads.ele
    public final void a(String str, String str2) {
        this.f27879a.onAppEvent(str, str2);
    }
}
