package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdct.class */
final class zzdct implements zzdfj<Bundle> {
    private final String zzdvs;
    private final String zzhbw;
    private final Bundle zzhbx;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdct(String str, String str2, Bundle bundle) {
        this.zzdvs = str;
        this.zzhbw = str2;
        this.zzhbx = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.zzdvs);
        bundle2.putString("fc_consent", this.zzhbw);
        bundle2.putBundle("iab_consent_info", this.zzhbx);
    }
}
