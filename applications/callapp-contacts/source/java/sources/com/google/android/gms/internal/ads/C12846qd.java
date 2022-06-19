package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.qd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qd.class */
public final class C12846qd extends NativeAd {

    /* renamed from: a */
    private final AbstractC12564ft f49723a;

    /* renamed from: c */
    private final C12847qe f49725c;

    /* renamed from: d */
    private final NativeAd.AdChoicesInfo f49726d;

    /* renamed from: b */
    private final List<NativeAd.Image> f49724b = new ArrayList();

    /* renamed from: e */
    private final List<MuteThisAdReason> f49727e = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:51|3|(2:5|(7:9|(1:11)(1:12)|13|(3:55|15|58)(1:57)|56|6|7)))|(3:53|18|(2:20|(7:24|(1:26)(1:27)|28|(3:59|30|62)(1:61)|60|21|22)))|(2:49|33)|(7:35|39|47|40|(1:42)|45|46)|38|39|47|40|(0)|45|46) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012d, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0118 A[Catch: RemoteException -> 0x012c, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x012c, blocks: (B:40:0x010c, B:42:0x0118), top: B:47:0x010c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12846qd(com.google.android.gms.internal.ads.AbstractC12564ft r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12846qd.<init>(com.google.android.gms.internal.ads.ft):void");
    }

    /* renamed from: a */
    public final AbstractC12126b zzjw() {
        try {
            return this.f49723a.mo14657n();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.f49723a.mo14654q();
        } catch (RemoteException e) {
            C13088za.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.f49723a.mo14659l();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.f49723a.mo14651t();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f49726d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getAdvertiser() {
        try {
            return this.f49723a.mo14665f();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getBody() {
        try {
            return this.f49723a.mo14669c();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getCallToAction() {
        try {
            return this.f49723a.mo14666e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Bundle getExtras() {
        try {
            Bundle mo14655p = this.f49723a.mo14655p();
            if (mo14655p != null) {
                return mo14655p;
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getHeadline() {
        try {
            return this.f49723a.mo14677a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.Image getIcon() {
        return this.f49725c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<NativeAd.Image> getImages() {
        return this.f49724b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.f49723a.mo14649v() == null) {
                return null;
            }
            return new C12297d(this.f49723a.mo14649v());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.f49727e;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getPrice() {
        try {
            return this.f49723a.mo14662i();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f49723a.mo14647x();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Double getStarRating() {
        try {
            double mo14664g = this.f49723a.mo14664g();
            if (mo14664g != -1.0d) {
                return Double.valueOf(mo14664g);
            }
            return null;
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getStore() {
        try {
            return this.f49723a.mo14663h();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.f49723a.mo14648w();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f49723a.mo14652s();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                C13088za.zzex("Ad is not custom mute enabled");
            } else if (muteThisAdReason == null) {
                this.f49723a.mo14674a((ely) null);
            } else if (muteThisAdReason instanceof elz) {
                this.f49723a.mo14674a(((elz) muteThisAdReason).f49169a);
            } else {
                C13088za.zzex("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f49723a.mo14676a(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.f49723a.mo14650u();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f49723a.mo14670b(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f49723a.mo14668c(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.f49723a.mo14675a(new elv(muteThisAdListener));
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f49723a.mo14673a(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zzc("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.f49723a.mo14672a(new BinderC12855qm(unconfirmedClickListener));
        } catch (RemoteException e) {
            C13088za.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }
}
