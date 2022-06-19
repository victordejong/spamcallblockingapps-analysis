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
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.fy */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fy.class */
public final class C12569fy extends UnifiedNativeAd {

    /* renamed from: a */
    private final AbstractC12564ft f49284a;

    /* renamed from: c */
    private final C12430dw f49286c;

    /* renamed from: e */
    private final NativeAd.AdChoicesInfo f49288e;

    /* renamed from: b */
    private final List<NativeAd.Image> f49285b = new ArrayList();

    /* renamed from: d */
    private final VideoController f49287d = new VideoController();

    /* renamed from: f */
    private final List<MuteThisAdReason> f49289f = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:58|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:60|20|63)(1:62)|61|6|7)))|(3:56|23|(2:25|(7:29|(1:31)(1:32)|33|(3:64|35|67)(1:66)|65|26|27)))|(2:54|38)|(7:40|44|52|45|(1:47)|50|51)|43|44|52|45|(0)|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x015d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x015e, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0149 A[Catch: RemoteException -> 0x015d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x015d, blocks: (B:45:0x013d, B:47:0x0149), top: B:52:0x013d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12569fy(com.google.android.gms.internal.ads.AbstractC12564ft r5) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12569fy.<init>(com.google.android.gms.internal.ads.ft):void");
    }

    /* renamed from: a */
    public final AbstractC12126b zzjw() {
        try {
            return this.f49284a.mo14657n();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.f49284a.mo14654q();
        } catch (RemoteException e) {
            C13088za.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void destroy() {
        try {
            this.f49284a.mo14659l();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void enableCustomClickGesture() {
        try {
            this.f49284a.mo14651t();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f49288e;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.f49284a.mo14665f();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.f49284a.mo14669c();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.f49284a.mo14666e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Bundle getExtras() {
        try {
            Bundle mo14655p = this.f49284a.mo14655p();
            if (mo14655p != null) {
                return mo14655p;
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.f49284a.mo14677a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.f49286c;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.f49285b;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.f49284a.mo14649v() == null) {
                return null;
            }
            return new C12297d(this.f49284a.mo14649v());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getMediationAdapterClassName() {
        try {
            return this.f49284a.mo14660k();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.f49289f;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.f49284a.mo14662i();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f49284a.mo14647x();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double mo14664g = this.f49284a.mo14664g();
            if (mo14664g != -1.0d) {
                return Double.valueOf(mo14664g);
            }
            return null;
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.f49284a.mo14663h();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.f49284a.mo14661j() != null) {
                this.f49287d.zza(this.f49284a.mo14661j());
            }
        } catch (RemoteException e) {
            C13088za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f49287d;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.f49284a.mo14648w();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f49284a.mo14652s();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                C13088za.zzex("Ad is not custom mute enabled");
            } else if (muteThisAdReason == null) {
                this.f49284a.mo14674a((ely) null);
            } else if (muteThisAdReason instanceof elz) {
                this.f49284a.mo14674a(((elz) muteThisAdReason).f49169a);
            } else {
                C13088za.zzex("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f49284a.mo14676a(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void recordCustomClickGesture() {
        try {
            this.f49284a.mo14650u();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f49284a.mo14670b(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f49284a.mo14668c(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.f49284a.mo14675a(new elv(muteThisAdListener));
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f49284a.mo14673a(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zzc("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setUnconfirmedClickListener(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.f49284a.mo14672a(new BinderC12584gm(unconfirmedClickListener));
        } catch (RemoteException e) {
            C13088za.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzka() {
        try {
            AbstractC12126b mo14656o = this.f49284a.mo14656o();
            if (mo14656o == null) {
                return null;
            }
            return BinderC12129d.m18980a(mo14656o);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }
}
