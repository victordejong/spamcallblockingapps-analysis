package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eew.class */
public final class eew extends eld {

    /* renamed from: a  reason: collision with root package name */
    final AppEventListener f27751a;

    public eew(AppEventListener appEventListener) {
        this.f27751a = appEventListener;
    }

    @Override // com.google.android.gms.internal.ads.ele
    public final void a(String str, String str2) {
        this.f27751a.onAppEvent(str, str2);
    }
}
