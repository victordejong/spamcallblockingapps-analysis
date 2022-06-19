package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbob.class */
public final class zzbob extends NativeAd.AdChoicesInfo {
    private final zzboa zza;
    private final List<NativeAd.Image> zzb = new ArrayList();
    private String zzc;

    public zzbob(zzboa zzboaVar) {
        this.zza = zzboaVar;
        try {
            this.zzc = zzboaVar.zzg();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            this.zzc = "";
        }
        try {
            for (zzboi zzboiVar : zzboaVar.zzh()) {
                zzbog zzbogVar = null;
                if (zzboiVar instanceof IBinder) {
                    IBinder iBinder = (IBinder) zzboiVar;
                    if (iBinder == null) {
                        zzbogVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzbogVar = queryLocalInterface instanceof zzboi ? (zzboi) queryLocalInterface : new zzbog(iBinder);
                    }
                }
                if (zzbogVar != null) {
                    this.zzb.add(new zzboj(zzbogVar));
                }
            }
        } catch (RemoteException e2) {
            zzciz.zzh("", e2);
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
