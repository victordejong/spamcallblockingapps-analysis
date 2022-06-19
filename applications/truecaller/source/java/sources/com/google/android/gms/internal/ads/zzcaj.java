package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcaj.class */
public final class zzcaj extends zzcae {
    public final /* synthetic */ UpdateClickUrlCallback zza;

    public zzcaj(zzcal zzcalVar, UpdateClickUrlCallback updateClickUrlCallback) {
        this.zza = updateClickUrlCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zze(List<Uri> list) {
        this.zza.onSuccess(list.get(0));
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzf(String str) {
        this.zza.onFailure(str);
    }
}
