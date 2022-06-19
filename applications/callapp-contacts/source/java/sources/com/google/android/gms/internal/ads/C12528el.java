package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.el */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/el.class */
public final class C12528el extends NativeAppInstallAd {

    /* renamed from: a */
    private final AbstractC12442eg f49163a;

    /* renamed from: c */
    private final C12430dw f49165c;

    /* renamed from: e */
    private final NativeAd.AdChoicesInfo f49167e;

    /* renamed from: b */
    private final List<NativeAd.Image> f49164b = new ArrayList();

    /* renamed from: d */
    private final VideoController f49166d = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(3:41|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:43|20|46)(1:45)|44|6|7)))|(2:39|23)|(7:25|29|37|30|(1:32)|35|36)|28|29|37|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f0, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f1, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dc A[Catch: RemoteException -> 0x00f0, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00f0, blocks: (B:30:0x00d0, B:32:0x00dc), top: B:37:0x00d0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12528el(com.google.android.gms.internal.ads.AbstractC12442eg r5) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12528el.<init>(com.google.android.gms.internal.ads.eg):void");
    }

    /* renamed from: a */
    public final AbstractC12126b zzjw() {
        try {
            return this.f49163a.mo14886a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final void destroy() {
        try {
            this.f49163a.mo14873k();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f49167e;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getBody() {
        try {
            return this.f49163a.mo14880d();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getCallToAction() {
        try {
            return this.f49163a.mo14878f();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Bundle getExtras() {
        try {
            return this.f49163a.mo14874j();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getHeadline() {
        try {
            return this.f49163a.mo14884b();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.Image getIcon() {
        return this.f49165c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final List<NativeAd.Image> getImages() {
        return this.f49164b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.f49163a.mo14869o();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getPrice() {
        try {
            return this.f49163a.mo14875i();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Double getStarRating() {
        try {
            double mo14877g = this.f49163a.mo14877g();
            if (mo14877g != -1.0d) {
                return Double.valueOf(mo14877g);
            }
            return null;
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getStore() {
        try {
            return this.f49163a.mo14876h();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final VideoController getVideoController() {
        try {
            if (this.f49163a.mo14872l() != null) {
                this.f49166d.zza(this.f49163a.mo14872l());
            }
        } catch (RemoteException e) {
            C13088za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f49166d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f49163a.mo14885a(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f49163a.mo14883b(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f49163a.mo14881c(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
