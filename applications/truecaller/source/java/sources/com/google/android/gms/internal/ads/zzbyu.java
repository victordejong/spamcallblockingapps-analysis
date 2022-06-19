package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyu.class */
public final class zzbyu extends NativeAd {
    private final zzboe zza;
    private final zzbyt zzc;
    private final NativeAd.AdChoicesInfo zzd;
    private final List<NativeAd.Image> zzb = new ArrayList();
    private final List<MuteThisAdReason> zze = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:51|3|(2:5|(7:9|(1:11)(1:12)|13|(3:55|15|58)(1:57)|56|6|7)))|(3:53|18|(2:20|(7:24|(1:26)(1:27)|28|(3:59|30|62)(1:61)|60|21|22)))|(2:49|33)|(7:35|39|47|40|(1:42)|45|46)|38|39|47|40|(0)|45|46) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012d, code lost:
        com.google.android.gms.internal.ads.zzcgt.zzg("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0118 A[Catch: RemoteException -> 0x012c, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x012c, blocks: (B:40:0x010c, B:42:0x0118), top: B:47:0x010c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbyu(com.google.android.gms.internal.ads.zzboe r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbyu.<init>(com.google.android.gms.internal.ads.zzboe):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.zza.zzy();
        } catch (RemoteException e) {
            zzcgt.zzg("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.zza.zzD();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getAdvertiser() {
        try {
            return this.zza.zzj();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getBody() {
        try {
            return this.zza.zzg();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getCallToAction() {
        try {
            return this.zza.zzi();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Bundle getExtras() {
        try {
            Bundle zzw = this.zza.zzw();
            if (zzw != null) {
                return zzw;
            }
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getHeadline() {
        try {
            return this.zza.zze();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.Image getIcon() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.zza.zzF() == null) {
                return null;
            }
            return new zzbhw(this.zza.zzF());
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getPrice() {
        try {
            return this.zza.zzm();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final ResponseInfo getResponseInfo() {
        zzbgz zzbgzVar;
        try {
            zzbgzVar = this.zza.zzH();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            zzbgzVar = null;
        }
        return ResponseInfo.zzb(zzbgzVar);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Double getStarRating() {
        Double d = null;
        try {
            double zzk = this.zza.zzk();
            if (zzk != -1.0d) {
                d = Double.valueOf(zzk);
            }
            return d;
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getStore() {
        try {
            return this.zza.zzl();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.zza.zzG();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.zza.zzA();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            try {
                if (this.zza.zzA()) {
                    if (muteThisAdReason == null) {
                        this.zza.zzB(null);
                        return;
                    } else if (muteThisAdReason instanceof zzbgn) {
                        this.zza.zzB(((zzbgn) muteThisAdReason).zza());
                        return;
                    } else {
                        zzcgt.zzf("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
                        return;
                    }
                }
            } catch (RemoteException e) {
                zzcgt.zzg("", e);
            }
            zzcgt.zzf("Ad is not custom mute enabled");
        } catch (RemoteException e2) {
            zzcgt.zzg("", e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zza.zzr(bundle);
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.zza.zzE();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zza.zzs(bundle);
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zza.zzt(bundle);
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.zza.zzC(new zzbgj(muteThisAdListener));
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zza.zzI(new zzbil(onPaidEventListener));
        } catch (RemoteException e) {
            zzcgt.zzg("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.zza.zzx(new zzbzb(unconfirmedClickListener));
        } catch (RemoteException e) {
            zzcgt.zzg("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final /* bridge */ /* synthetic */ Object zza() {
        IObjectWrapper iObjectWrapper;
        try {
            iObjectWrapper = this.zza.zzu();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            iObjectWrapper = null;
        }
        return iObjectWrapper;
    }
}
