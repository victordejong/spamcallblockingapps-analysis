package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.l9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/l9.class */
public final class C7315l9 extends UnifiedNativeAd {

    /* renamed from: a */
    public final AbstractC7290j9 f17383a;

    /* renamed from: c */
    public final C7434v7 f17385c;

    /* renamed from: e */
    public final NativeAd.AdChoicesInfo f17387e;

    /* renamed from: b */
    public final List<NativeAd.Image> f17384b = new ArrayList();

    /* renamed from: d */
    public final VideoController f17386d = new VideoController();

    /* renamed from: f */
    public final List<MuteThisAdReason> f17388f = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(3:56|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:60|20|63)(1:62)|61|6|7)))|(3:58|23|(2:25|(7:29|(1:31)(1:32)|33|(3:64|35|67)(1:66)|65|26|27)))|(2:54|38)|(7:40|44|52|45|(1:47)|50|51)|43|44|52|45|(0)|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0160, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0161, code lost:
        p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014c A[Catch: RemoteException -> 0x0160, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0160, blocks: (B:45:0x0140, B:47:0x014c), top: B:52:0x0140 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7315l9(p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9 r5) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p260a.C7315l9.<init>(h.i.a.e.j.a.j9):void");
    }

    /* renamed from: a */
    public final AbstractC7106b zzbd() {
        try {
            return this.f17383a.mo20825t();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.f17383a.mo20844L();
        } catch (RemoteException e) {
            C7452x1.m20571b("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void destroy() {
        try {
            this.f17383a.destroy();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f17387e;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.f17383a.mo20827q();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.f17383a.mo20833j();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.f17383a.mo20835h();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Bundle getExtras() {
        try {
            Bundle extras = this.f17383a.getExtras();
            if (extras != null) {
                return extras;
            }
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.f17383a.mo20834i();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.f17385c;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.f17384b;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getMediationAdapterClassName() {
        try {
            return this.f17383a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.f17388f;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.f17383a.mo20830n();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double p = this.f17383a.mo20828p();
            if (p == -1.0d) {
                return null;
            }
            return Double.valueOf(p);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.f17383a.mo20826r();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.f17383a.getVideoController() != null) {
                this.f17386d.zza(this.f17383a.getVideoController());
            }
        } catch (RemoteException e) {
            C7452x1.m20571b("Exception occurred while getting video controller", e);
        }
        return this.f17386d;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f17383a.mo20843Q();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                C7452x1.m20574a("Ad is not custom mute enabled");
            } else if (muteThisAdReason == null) {
                this.f17383a.mo20839a((AbstractC7311l5) null);
            } else if (muteThisAdReason instanceof C7347o5) {
                this.f17383a.mo20839a(((C7347o5) muteThisAdReason).m20742a());
            } else {
                C7452x1.m20574a("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f17383a.mo20837c(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f17383a.mo20842a(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f17383a.mo20838b(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.f17383a.mo20840a(new BinderC7299k5(muteThisAdListener));
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setUnconfirmedClickListener(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.f17383a.mo20841a(new BinderC7436v9(unconfirmedClickListener));
        } catch (RemoteException e) {
            C7452x1.m20571b("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzbh() {
        try {
            AbstractC7106b m = this.f17383a.mo20831m();
            if (m != null) {
                return BinderC7110d.m21059A(m);
            }
            return null;
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }
}
