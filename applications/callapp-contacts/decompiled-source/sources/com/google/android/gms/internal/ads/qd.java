package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qd.class */
public final class qd extends NativeAd {

    /* renamed from: a  reason: collision with root package name */
    private final ft f28321a;

    /* renamed from: c  reason: collision with root package name */
    private final qe f28323c;

    /* renamed from: d  reason: collision with root package name */
    private final NativeAd.AdChoicesInfo f28324d;

    /* renamed from: b  reason: collision with root package name */
    private final List<NativeAd.Image> f28322b = new ArrayList();
    private final List<MuteThisAdReason> e = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:51|3|(2:5|(7:9|(1:11)(1:12)|13|(3:55|15|58)(1:57)|56|6|7)))|(3:53|18|(2:20|(7:24|(1:26)(1:27)|28|(3:59|30|62)(1:61)|60|21|22)))|(2:49|33)|(7:35|39|47|40|(1:42)|45|46)|38|39|47|40|(0)|45|46) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012d, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0118 A[Catch: RemoteException -> 0x012c, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x012c, blocks: (B:40:0x010c, B:42:0x0118), top: B:47:0x010c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public qd(com.google.android.gms.internal.ads.ft r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qd.<init>(com.google.android.gms.internal.ads.ft):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final b zzjw() {
        try {
            return this.f28321a.n();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.f28321a.q();
        } catch (RemoteException e) {
            za.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.f28321a.l();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.f28321a.t();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f28324d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getAdvertiser() {
        try {
            return this.f28321a.f();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getBody() {
        try {
            return this.f28321a.c();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getCallToAction() {
        try {
            return this.f28321a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Bundle getExtras() {
        try {
            Bundle p = this.f28321a.p();
            if (p != null) {
                return p;
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getHeadline() {
        try {
            return this.f28321a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.Image getIcon() {
        return this.f28323c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<NativeAd.Image> getImages() {
        return this.f28322b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.f28321a.v() != null) {
                return new d(this.f28321a.v());
            }
            return null;
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getPrice() {
        try {
            return this.f28321a.i();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f28321a.x();
        } catch (RemoteException e) {
            za.zzc("", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Double getStarRating() {
        try {
            double g = this.f28321a.g();
            if (g == -1.0d) {
                return null;
            }
            return Double.valueOf(g);
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getStore() {
        try {
            return this.f28321a.h();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.f28321a.w();
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f28321a.s();
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                za.zzex("Ad is not custom mute enabled");
            } else if (muteThisAdReason == null) {
                this.f28321a.a((ely) null);
            } else if (muteThisAdReason instanceof elz) {
                this.f28321a.a(((elz) muteThisAdReason).f27946a);
            } else {
                za.zzex("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f28321a.a(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.f28321a.u();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f28321a.b(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f28321a.c(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.f28321a.a(new elv(muteThisAdListener));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f28321a.a(new s(onPaidEventListener));
        } catch (RemoteException e) {
            za.zzc("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.f28321a.a(new qm(unconfirmedClickListener));
        } catch (RemoteException e) {
            za.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }
}
