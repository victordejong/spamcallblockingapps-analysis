package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.l8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/l8.class */
public final class C7314l8 extends NativeContentAd {

    /* renamed from: a */
    public final AbstractC7289j8 f17378a;

    /* renamed from: c */
    public final C7434v7 f17380c;

    /* renamed from: e */
    public final NativeAd.AdChoicesInfo f17382e;

    /* renamed from: b */
    public final List<NativeAd.Image> f17379b = new ArrayList();

    /* renamed from: d */
    public final VideoController f17381d = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(3:41|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:43|20|46)(1:45)|44|6|7)))|(2:39|23)|(7:25|29|37|30|(1:32)|35|36)|28|29|37|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f3, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f4, code lost:
        p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00df A[Catch: RemoteException -> 0x00f3, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00f3, blocks: (B:30:0x00d3, B:32:0x00df), top: B:37:0x00d3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7314l8(p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8 r5) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p260a.C7314l8.<init>(h.i.a.e.j.a.j8):void");
    }

    /* renamed from: a */
    public final AbstractC7106b zzbd() {
        try {
            return this.f17378a.mo20845t();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final void destroy() {
        try {
            this.f17378a.destroy();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f17382e;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getAdvertiser() {
        try {
            return this.f17378a.mo20846q();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getBody() {
        try {
            return this.f17378a.mo20848j();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getCallToAction() {
        try {
            return this.f17378a.mo20850h();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final Bundle getExtras() {
        try {
            return this.f17378a.getExtras();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getHeadline() {
        try {
            return this.f17378a.mo20849i();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final List<NativeAd.Image> getImages() {
        return this.f17379b;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.Image getLogo() {
        return this.f17380c;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.f17378a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final VideoController getVideoController() {
        try {
            if (this.f17378a.getVideoController() != null) {
                this.f17381d.zza(this.f17378a.getVideoController());
            }
        } catch (RemoteException e) {
            C7452x1.m20571b("Exception occurred while getting video controller", e);
        }
        return this.f17381d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f17378a.mo20852c(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f17378a.mo20854a(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f17378a.mo20853b(bundle);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }
}
