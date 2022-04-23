package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddr.class */
public final class zzddr implements zzdgu<Bundle> {

    /* renamed from: a */
    public final String f27181a;

    public zzddr(String str) {
        this.f27181a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!TextUtils.isEmpty(this.f27181a)) {
            bundle2.putString("fwd_cld", this.f27181a);
        }
    }
}
