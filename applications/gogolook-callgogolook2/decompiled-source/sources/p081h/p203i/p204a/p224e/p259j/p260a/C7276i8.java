package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.i8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/i8.class */
public final class C7276i8 extends NativeAppInstallAd {

    /* renamed from: a */
    public final AbstractC7250g8 f17349a;

    /* renamed from: c */
    public final C7434v7 f17351c;

    /* renamed from: e */
    public final NativeAd.AdChoicesInfo f17353e;

    /* renamed from: b */
    public final List<NativeAd.Image> f17350b = new ArrayList();

    /* renamed from: d */
    public final VideoController f17352d = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(13:2|37|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:43|20|46)(1:45)|44|6|7))|(2:41|23)|(7:25|29|39|30|(1:32)|35|36)|28|29|39|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f2, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f3, code lost:
        p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00de A[Catch: RemoteException -> 0x00f2, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x00f2, blocks: (B:30:0x00d2, B:32:0x00de), top: B:39:0x00d2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7276i8(p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7250g8 r5) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p260a.C7276i8.<init>(h.i.a.e.j.a.g8):void");
    }

    /* renamed from: a */
    public final AbstractC7106b zzbd() {
        try {
            return this.f17349a.mo20902t();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final void destroy() {
        try {
            this.f17349a.destroy();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f17353e;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getBody() {
        try {
            return this.f17349a.mo20908j();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getCallToAction() {
        try {
            return this.f17349a.mo20910h();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Bundle getExtras() {
        try {
            return this.f17349a.getExtras();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getHeadline() {
        try {
            return this.f17349a.mo20909i();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.Image getIcon() {
        return this.f17351c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final List<NativeAd.Image> getImages() {
        return this.f17350b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.f17349a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getPrice() {
        try {
            return this.f17349a.mo20906n();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Double getStarRating() {
        try {
            double p = this.f17349a.mo20904p();
            if (p == -1.0d) {
                return null;
            }
            return Double.valueOf(p);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getStore() {
        try {
            return this.f17349a.mo20903r();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final VideoController getVideoController() {
        try {
            if (this.f17349a.getVideoController() != null) {
                this.f17352d.zza(this.f17349a.getVideoController());
            }
        } catch (RemoteException e) {
            C7452x1.m20571b("Exception occurred while getting video controller", e);
        }
        return this.f17352d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f17349a.mo20912c(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f17349a.mo20914a(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f17349a.mo20913b(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }
}
