package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfy.class */
public final class cfy implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private String f25757a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25758b;

    public cfy(String str, String str2) {
        this.f25757a = str;
        this.f25758b = str2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (((Boolean) ekb.e().a(aq.es)).booleanValue()) {
            bundle2.putString("request_id", this.f25758b);
        } else {
            bundle2.putString("request_id", this.f25757a);
        }
    }
}
