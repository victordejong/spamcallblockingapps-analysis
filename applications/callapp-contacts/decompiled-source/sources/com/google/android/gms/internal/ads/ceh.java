package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ceh.class */
public final class ceh implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f25685a;

    public ceh(Bundle bundle) {
        this.f25685a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        bundle.putBundle("content_info", this.f25685a);
    }
}
