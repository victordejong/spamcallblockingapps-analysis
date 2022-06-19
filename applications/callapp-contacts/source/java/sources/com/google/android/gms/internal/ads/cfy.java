package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfy.class */
public final class cfy implements cgy<Bundle> {

    /* renamed from: a */
    private String f45692a;

    /* renamed from: b */
    private final String f45693b;

    public cfy(String str, String str2) {
        this.f45692a = str;
        this.f45693b = str2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42894es)).booleanValue()) {
            bundle2.putString("request_id", this.f45693b);
        } else {
            bundle2.putString("request_id", this.f45692a);
        }
    }
}
