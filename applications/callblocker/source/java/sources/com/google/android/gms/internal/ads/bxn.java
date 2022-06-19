package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxn.class */
final class bxn implements cae<Bundle> {

    /* renamed from: a */
    private final String f12454a;

    /* renamed from: b */
    private final String f12455b;

    /* renamed from: c */
    private final Bundle f12456c;

    /* JADX INFO: Access modifiers changed from: private */
    public bxn(String str, String str2, Bundle bundle) {
        this.f12454a = str;
        this.f12455b = str2;
        this.f12456c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f12454a);
        bundle2.putString("fc_consent", this.f12455b);
        bundle2.putBundle("iab_consent_info", this.f12456c);
    }
}
