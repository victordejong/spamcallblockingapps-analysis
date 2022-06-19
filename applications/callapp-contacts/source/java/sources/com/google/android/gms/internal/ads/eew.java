package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eew.class */
public final class eew extends eld {

    /* renamed from: a */
    final AppEventListener f48911a;

    public eew(AppEventListener appEventListener) {
        this.f48911a = appEventListener;
    }

    @Override // com.google.android.gms.internal.ads.ele
    /* renamed from: a */
    public final void mo14809a(String str, String str2) {
        this.f48911a.onAppEvent(str, str2);
    }
}
