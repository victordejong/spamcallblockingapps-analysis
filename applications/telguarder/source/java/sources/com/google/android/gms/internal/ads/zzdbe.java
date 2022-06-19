package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbe.class */
public final class zzdbe implements zzdfj<Bundle> {
    private final Bundle zzhaw;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdbe(Bundle bundle) {
        this.zzhaw = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.zzhaw.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.zzhaw);
        }
    }
}
