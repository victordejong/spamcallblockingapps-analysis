package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ep */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ep.class */
public final class C12533ep extends NativeContentAd {

    /* renamed from: a */
    private final AbstractC12527ek f49270a;

    /* renamed from: c */
    private final C12430dw f49272c;

    /* renamed from: e */
    private final NativeAd.AdChoicesInfo f49274e;

    /* renamed from: b */
    private final List<NativeAd.Image> f49271b = new ArrayList();

    /* renamed from: d */
    private final VideoController f49273d = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(3:41|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:43|20|46)(1:45)|44|6|7)))|(2:39|23)|(7:25|29|37|30|(1:32)|35|36)|28|29|37|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ef, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f0, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00db A[Catch: RemoteException -> 0x00ef, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00ef, blocks: (B:30:0x00cf, B:32:0x00db), top: B:37:0x00cf }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12533ep(com.google.android.gms.internal.ads.AbstractC12527ek r5) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12533ep.<init>(com.google.android.gms.internal.ads.ek):void");
    }

    /* renamed from: a */
    public final AbstractC12126b zzjw() {
        try {
            return this.f49270a.mo14801a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final void destroy() {
        try {
            this.f49270a.mo14790i();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f49274e;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getAdvertiser() {
        try {
            return this.f49270a.mo14792g();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getBody() {
        try {
            return this.f49270a.mo14795d();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getCallToAction() {
        try {
            return this.f49270a.mo14793f();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final Bundle getExtras() {
        try {
            return this.f49270a.mo14791h();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getHeadline() {
        try {
            return this.f49270a.mo14799b();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final List<NativeAd.Image> getImages() {
        return this.f49271b;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.Image getLogo() {
        return this.f49272c;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.f49270a.mo14786m();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final VideoController getVideoController() {
        try {
            if (this.f49270a.mo14789j() != null) {
                this.f49273d.zza(this.f49270a.mo14789j());
            }
        } catch (RemoteException e) {
            C13088za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f49273d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f49270a.mo14800a(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f49270a.mo14798b(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f49270a.mo14796c(bundle);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
