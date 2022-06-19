package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n92.class */
public final class n92 implements va2<Bundle> {

    /* renamed from: a */
    private final String f27040a;

    /* renamed from: b */
    private final String f27041b;

    public n92(String str, String str2) {
        this.f27040a = str;
        this.f27041b = str2;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25708h5)).booleanValue()) {
            bundle2.putString("request_id", this.f27041b);
        } else {
            bundle2.putString("request_id", this.f27040a);
        }
    }
}
