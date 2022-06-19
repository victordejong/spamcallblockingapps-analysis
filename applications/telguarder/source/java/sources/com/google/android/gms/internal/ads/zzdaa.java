package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.ArrayList;
import javax.annotation.Nonnull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdaa.class */
final class zzdaa implements zzdzl<ArrayList<Uri>> {
    private final /* synthetic */ zzasj zzgzx;

    public zzdaa(zzczo zzczoVar, zzasj zzasjVar) {
        this.zzgzx = zzasjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@Nonnull ArrayList<Uri> arrayList) {
        try {
            this.zzgzx.onSuccess(arrayList);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        try {
            zzasj zzasjVar = this.zzgzx;
            String valueOf = String.valueOf(th.getMessage());
            zzasjVar.onError(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
