package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccl.class */
public final class zzccl extends zzccg {
    public final /* synthetic */ UpdateClickUrlCallback zza;

    public zzccl(zzccn zzccnVar, UpdateClickUrlCallback updateClickUrlCallback) {
        this.zza = updateClickUrlCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final void zze(String str) {
        this.zza.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final void zzf(List<Uri> list) {
        this.zza.onSuccess(list.get(0));
    }
}
