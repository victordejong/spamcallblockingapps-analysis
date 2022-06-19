package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetj.class */
public final class zzetj implements zzevm<Bundle> {
    public final zzfdm zza;

    public zzetj(zzfdm zzfdmVar) {
        this.zza = zzfdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzfdm zzfdmVar = this.zza;
        if (zzfdmVar != null) {
            bundle2.putBoolean("render_in_browser", zzfdmVar.zzd());
            bundle2.putBoolean("disable_ml", this.zza.zzc());
        }
    }
}
