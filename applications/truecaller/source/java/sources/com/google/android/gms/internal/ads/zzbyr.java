package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyr.class */
public final class zzbyr extends NativeAd.AdChoicesInfo {
    private final List<NativeAd.Image> zza = new ArrayList();
    private String zzb;

    public zzbyr(zzblz zzblzVar) {
        try {
            this.zzb = zzblzVar.zzb();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            this.zzb = "";
        }
        try {
            for (zzbmh zzbmhVar : zzblzVar.zzc()) {
                zzbmh zzg = zzbmhVar instanceof IBinder ? zzbmg.zzg((IBinder) zzbmhVar) : null;
                if (zzg != null) {
                    this.zza.add(new zzbyt(zzg));
                }
            }
        } catch (RemoteException e2) {
            zzcgt.zzg("", e2);
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
