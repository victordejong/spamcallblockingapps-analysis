package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafk.class */
public final class zzafk extends NativeContentAd {
    private final NativeAd.AdChoicesInfo zzdgc;
    private final zzafj zzdgd;
    private final zzaes zzdge;
    private final List<NativeAd.Image> zzdga = new ArrayList();
    private final VideoController zzckl = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(3:41|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:43|20|46)(1:45)|44|6|7)))|(2:39|23)|(7:25|29|37|30|(1:32)|35|36)|28|29|37|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ef, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f0, code lost:
        com.google.android.gms.internal.ads.zzazk.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00db A[Catch: RemoteException -> 0x00ef, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00ef, blocks: (B:30:0x00cf, B:32:0x00db), top: B:37:0x00cf }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzafk(com.google.android.gms.internal.ads.zzafj r5) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafk.<init>(com.google.android.gms.internal.ads.zzafj):void");
    }

    /* renamed from: zztm */
    public final IObjectWrapper zzjs() {
        try {
            return this.zzdgd.zztm();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final void destroy() {
        try {
            this.zzdgd.destroy();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzdgc;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getAdvertiser() {
        try {
            return this.zzdgd.getAdvertiser();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getBody() {
        try {
            return this.zzdgd.getBody();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getCallToAction() {
        try {
            return this.zzdgd.getCallToAction();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final Bundle getExtras() {
        try {
            return this.zzdgd.getExtras();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getHeadline() {
        try {
            return this.zzdgd.getHeadline();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final List<NativeAd.Image> getImages() {
        return this.zzdga;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.Image getLogo() {
        return this.zzdge;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.zzdgd.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final VideoController getVideoController() {
        try {
            if (this.zzdgd.getVideoController() != null) {
                this.zzckl.zza(this.zzdgd.getVideoController());
            }
        } catch (RemoteException e) {
            zzazk.zzc("Exception occurred while getting video controller", e);
        }
        return this.zzckl;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zzdgd.performClick(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zzdgd.recordImpression(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zzdgd.reportTouchEvent(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
