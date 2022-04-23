package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcw.class */
public final class zzdcw implements zzdgu<Bundle> {

    /* renamed from: a */
    public final boolean f27140a = false;

    /* renamed from: b */
    public final boolean f27141b = false;

    /* renamed from: c */
    public final boolean f27142c;

    public zzdcw(boolean z, boolean z2, boolean z3) {
        this.f27142c = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("c_pcbg", this.f27140a);
        bundle2.putBoolean("c_phbg", this.f27141b);
        bundle2.putBoolean("ar_lr", this.f27142c);
    }
}
