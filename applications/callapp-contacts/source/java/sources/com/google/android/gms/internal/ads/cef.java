package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cef.class */
final class cef implements cgy<Bundle> {

    /* renamed from: a */
    private final String f45617a;

    /* renamed from: b */
    private final String f45618b;

    /* renamed from: c */
    private final Bundle f45619c;

    /* JADX INFO: Access modifiers changed from: private */
    public cef(String str, String str2, Bundle bundle) {
        this.f45617a = str;
        this.f45618b = str2;
        this.f45619c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f45617a);
        bundle2.putString("fc_consent", this.f45618b);
        bundle2.putBundle("iab_consent_info", this.f45619c);
    }
}
