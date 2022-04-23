package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdev.class */
public final class zzdev implements zzdgu<Bundle> {

    /* renamed from: a */
    public final zzdnt f27219a;

    public zzdev(zzdnt zzdntVar) {
        this.f27219a = zzdntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzdnt zzdntVar = this.f27219a;
        if (zzdntVar != null) {
            bundle2.putBoolean("render_in_browser", zzdntVar.m13454b());
            bundle2.putBoolean("disable_ml", this.f27219a.m13453c());
        }
    }
}
