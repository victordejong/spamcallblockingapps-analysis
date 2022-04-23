package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cef.class */
final class cef implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final String f25682a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25683b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f25684c;

    private cef(String str, String str2, Bundle bundle) {
        this.f25682a = str;
        this.f25683b = str2;
        this.f25684c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f25682a);
        bundle2.putString("fc_consent", this.f25683b);
        bundle2.putBundle("iab_consent_info", this.f25684c);
    }
}
