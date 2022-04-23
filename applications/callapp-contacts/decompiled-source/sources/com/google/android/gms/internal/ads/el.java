package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/el.class */
public final class el extends NativeAppInstallAd {

    /* renamed from: a  reason: collision with root package name */
    private final eg f27941a;

    /* renamed from: c  reason: collision with root package name */
    private final dw f27943c;
    private final NativeAd.AdChoicesInfo e;

    /* renamed from: b  reason: collision with root package name */
    private final List<NativeAd.Image> f27942b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final VideoController f27944d = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(3:41|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:43|20|46)(1:45)|44|6|7)))|(2:39|23)|(7:25|29|37|30|(1:32)|35|36)|28|29|37|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f0, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f1, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dc A[Catch: RemoteException -> 0x00f0, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00f0, blocks: (B:30:0x00d0, B:32:0x00dc), top: B:37:0x00d0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public el(com.google.android.gms.internal.ads.eg r5) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.el.<init>(com.google.android.gms.internal.ads.eg):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final b zzjw() {
        try {
            return this.f27941a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final void destroy() {
        try {
            this.f27941a.k();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getBody() {
        try {
            return this.f27941a.d();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getCallToAction() {
        try {
            return this.f27941a.f();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Bundle getExtras() {
        try {
            return this.f27941a.j();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getHeadline() {
        try {
            return this.f27941a.b();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.Image getIcon() {
        return this.f27943c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final List<NativeAd.Image> getImages() {
        return this.f27942b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.f27941a.o();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getPrice() {
        try {
            return this.f27941a.i();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Double getStarRating() {
        try {
            double g = this.f27941a.g();
            if (g == -1.0d) {
                return null;
            }
            return Double.valueOf(g);
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getStore() {
        try {
            return this.f27941a.h();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final VideoController getVideoController() {
        try {
            if (this.f27941a.l() != null) {
                this.f27944d.zza(this.f27941a.l());
            }
        } catch (RemoteException e) {
            za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f27944d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f27941a.a(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f27941a.b(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f27941a.c(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
