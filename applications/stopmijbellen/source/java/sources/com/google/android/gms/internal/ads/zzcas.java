package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcas.class */
public final class zzcas extends NativeAd.AdChoicesInfo {
    private final List<NativeAd.Image> zza = new ArrayList();
    private String zzb;

    public zzcas(zzboa zzboaVar) {
        try {
            this.zzb = zzboaVar.zzg();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            this.zzb = "";
        }
        try {
            for (zzboi zzboiVar : zzboaVar.zzh()) {
                zzboi zzg = zzboiVar instanceof IBinder ? zzboh.zzg((IBinder) zzboiVar) : null;
                if (zzg != null) {
                    this.zza.add(new zzcau(zzg));
                }
            }
        } catch (RemoteException e2) {
            zzciz.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzb;
    }
}
