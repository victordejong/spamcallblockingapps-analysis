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
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fy.class */
public final class fy extends UnifiedNativeAd {

    /* renamed from: a  reason: collision with root package name */
    private final ft f27996a;

    /* renamed from: c  reason: collision with root package name */
    private final dw f27998c;
    private final NativeAd.AdChoicesInfo e;

    /* renamed from: b  reason: collision with root package name */
    private final List<NativeAd.Image> f27997b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final VideoController f27999d = new VideoController();
    private final List<MuteThisAdReason> f = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:58|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:60|20|63)(1:62)|61|6|7)))|(3:56|23|(2:25|(7:29|(1:31)(1:32)|33|(3:64|35|67)(1:66)|65|26|27)))|(2:54|38)|(7:40|44|52|45|(1:47)|50|51)|43|44|52|45|(0)|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x015d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x015e, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0149 A[Catch: RemoteException -> 0x015d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x015d, blocks: (B:45:0x013d, B:47:0x0149), top: B:52:0x013d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public fy(com.google.android.gms.internal.ads.ft r5) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fy.<init>(com.google.android.gms.internal.ads.ft):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final b zzjw() {
        try {
            return this.f27996a.n();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.f27996a.q();
        } catch (RemoteException e) {
            za.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void destroy() {
        try {
            this.f27996a.l();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void enableCustomClickGesture() {
        try {
            this.f27996a.t();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.f27996a.f();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.f27996a.c();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.f27996a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Bundle getExtras() {
        try {
            Bundle p = this.f27996a.p();
            if (p != null) {
                return p;
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.f27996a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.f27998c;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.f27997b;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.f27996a.v() != null) {
                return new d(this.f27996a.v());
            }
            return null;
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getMediationAdapterClassName() {
        try {
            return this.f27996a.k();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.f27996a.i();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f27996a.x();
        } catch (RemoteException e) {
            za.zzc("", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double g = this.f27996a.g();
            if (g == -1.0d) {
                return null;
            }
            return Double.valueOf(g);
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.f27996a.h();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.f27996a.j() != null) {
                this.f27999d.zza(this.f27996a.j());
            }
        } catch (RemoteException e) {
            za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f27999d;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.f27996a.w();
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f27996a.s();
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                za.zzex("Ad is not custom mute enabled");
            } else if (muteThisAdReason == null) {
                this.f27996a.a((ely) null);
            } else if (muteThisAdReason instanceof elz) {
                this.f27996a.a(((elz) muteThisAdReason).f27946a);
            } else {
                za.zzex("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f27996a.a(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void recordCustomClickGesture() {
        try {
            this.f27996a.u();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f27996a.b(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f27996a.c(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.f27996a.a(new elv(muteThisAdListener));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f27996a.a(new s(onPaidEventListener));
        } catch (RemoteException e) {
            za.zzc("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setUnconfirmedClickListener(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.f27996a.a(new gm(unconfirmedClickListener));
        } catch (RemoteException e) {
            za.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzka() {
        try {
            b o = this.f27996a.o();
            if (o != null) {
                return d.a(o);
            }
            return null;
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }
}
