package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k62.class */
public final class k62 implements va2<Bundle> {

    /* renamed from: a */
    private final String f25074a;

    /* renamed from: b */
    private final int f25075b;

    public k62(String str, int i) {
        this.f25074a = str;
        this.f25075b = i;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (TextUtils.isEmpty(this.f25074a) || this.f25075b == -1) {
            return;
        }
        Bundle m14101a = jk2.m14101a(bundle2, "pii");
        bundle2.putBundle("pii", m14101a);
        m14101a.putString("pvid", this.f25074a);
        m14101a.putInt("pvid_s", this.f25075b);
    }
}
