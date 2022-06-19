package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l72.class */
final class l72 implements va2<Bundle> {

    /* renamed from: a */
    private final String f25967a;

    /* renamed from: b */
    private final String f25968b;

    /* renamed from: c */
    private final Bundle f25969c;

    public /* synthetic */ l72(String str, String str2, Bundle bundle, m72 m72Var) {
        this.f25967a = str;
        this.f25968b = str2;
        this.f25969c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f25967a);
        bundle2.putString("fc_consent", this.f25968b);
        bundle2.putBundle("iab_consent_info", this.f25969c);
    }
}
