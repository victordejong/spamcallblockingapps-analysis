package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfz.class */
public final class cfz implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final String f25759a;

    public cfz(String str) {
        this.f25759a = str;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        bundle.putString("rtb", this.f25759a);
    }
}
