package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzags.class */
public final class zzags extends UnifiedNativeAd {
    private final zzaes zzdgb;
    private final NativeAd.AdChoicesInfo zzdgc;
    private final zzagr zzdgi;
    private final List<NativeAd.Image> zzdga = new ArrayList();
    private final VideoController zzckl = new VideoController();
    private final List<MuteThisAdReason> zzdgj = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:58|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:60|20|63)(1:62)|61|6|7)))|(3:56|23|(2:25|(7:29|(1:31)(1:32)|33|(3:64|35|67)(1:66)|65|26|27)))|(2:54|38)|(7:40|44|52|45|(1:47)|50|51)|43|44|52|45|(0)|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x015d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x015e, code lost:
        com.google.android.gms.internal.ads.zzazk.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0149 A[Catch: RemoteException -> 0x015d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x015d, blocks: (B:45:0x013d, B:47:0x0149), top: B:52:0x013d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzags(com.google.android.gms.internal.ads.zzagr r5) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzags.<init>(com.google.android.gms.internal.ads.zzagr):void");
    }

    /* renamed from: zztm */
    public final IObjectWrapper zzjs() {
        try {
            return this.zzdgi.zztm();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.zzdgi.cancelUnconfirmedClick();
        } catch (RemoteException e) {
            zzazk.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void destroy() {
        try {
            this.zzdgi.destroy();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void enableCustomClickGesture() {
        try {
            this.zzdgi.zztx();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzdgc;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.zzdgi.getAdvertiser();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.zzdgi.getBody();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.zzdgi.getCallToAction();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Bundle getExtras() {
        try {
            Bundle extras = this.zzdgi.getExtras();
            if (extras != null) {
                return extras;
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.zzdgi.getHeadline();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.zzdgb;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.zzdga;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.zzdgi.zzty() == null) {
                return null;
            }
            return new zzzw(this.zzdgi.zzty());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getMediationAdapterClassName() {
        try {
            return this.zzdgi.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.zzdgj;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.zzdgi.getPrice();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final ResponseInfo getResponseInfo() {
        zzyx zzyxVar;
        try {
            zzyxVar = this.zzdgi.zzki();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            zzyxVar = null;
        }
        return ResponseInfo.zza(zzyxVar);
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double starRating = this.zzdgi.getStarRating();
            if (starRating != -1.0d) {
                return Double.valueOf(starRating);
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.zzdgi.getStore();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.zzdgi.getVideoController() != null) {
                this.zzckl.zza(this.zzdgi.getVideoController());
            }
        } catch (RemoteException e) {
            zzazk.zzc("Exception occurred while getting video controller", e);
        }
        return this.zzckl;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.zzdgi.isCustomClickGestureEnabled();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.zzdgi.isCustomMuteThisAdEnabled();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                zzazk.zzev("Ad is not custom mute enabled");
            } else if (muteThisAdReason == null) {
                this.zzdgi.zza((zzyn) null);
            } else if (muteThisAdReason instanceof zzys) {
                this.zzdgi.zza(((zzys) muteThisAdReason).zzrf());
            } else {
                zzazk.zzev("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zzdgi.performClick(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void recordCustomClickGesture() {
        try {
            this.zzdgi.recordCustomClickGesture();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zzdgi.recordImpression(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zzdgi.reportTouchEvent(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.zzdgi.zza(new zzyo(muteThisAdListener));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzdgi.zza(new zzaap(onPaidEventListener));
        } catch (RemoteException e) {
            zzazk.zzc("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setUnconfirmedClickListener(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.zzdgi.zza(new zzahg(unconfirmedClickListener));
        } catch (RemoteException e) {
            zzazk.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzjw() {
        try {
            IObjectWrapper zztp = this.zzdgi.zztp();
            if (zztp == null) {
                return null;
            }
            return ObjectWrapper.unwrap(zztp);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }
}
