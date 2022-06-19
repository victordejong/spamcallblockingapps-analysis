package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbma.class */
public final class zzbma extends NativeAd.AdChoicesInfo {
    private final zzblz zza;
    private final List<NativeAd.Image> zzb = new ArrayList();
    private String zzc;

    public zzbma(zzblz zzblzVar) {
        this.zza = zzblzVar;
        try {
            this.zzc = zzblzVar.zzb();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            this.zzc = "";
        }
        try {
            for (zzbmh zzbmhVar : zzblzVar.zzc()) {
                zzbmf zzbmfVar = null;
                if (zzbmhVar instanceof IBinder) {
                    IBinder iBinder = (IBinder) zzbmhVar;
                    if (iBinder == null) {
                        zzbmfVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzbmfVar = queryLocalInterface instanceof zzbmh ? (zzbmh) queryLocalInterface : new zzbmf(iBinder);
                    }
                }
                if (zzbmfVar != null) {
                    this.zzb.add(new zzbmi(zzbmfVar));
                }
            }
        } catch (RemoteException e2) {
            zzcgt.zzg("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzc;
    }
}
