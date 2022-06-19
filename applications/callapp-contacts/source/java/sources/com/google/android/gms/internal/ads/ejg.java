package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejg.class */
public final class ejg extends eld {

    /* renamed from: a */
    final AppEventListener f49087a;

    public ejg(AppEventListener appEventListener) {
        this.f49087a = appEventListener;
    }

    @Override // com.google.android.gms.internal.ads.ele
    /* renamed from: a */
    public final void mo14809a(String str, String str2) {
        this.f49087a.onAppEvent(str, str2);
    }
}
