package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cel.class */
public final class cel implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final String f25691a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f25692b;

    public cel(String str, boolean z) {
        this.f25691a = str;
        this.f25692b = z;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f25691a);
        if (this.f25692b) {
            bundle2.putString("de", "1");
        }
    }
}
