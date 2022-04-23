package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ep.class */
public final class ep extends NativeContentAd {

    /* renamed from: a  reason: collision with root package name */
    private final ek f27983a;

    /* renamed from: c  reason: collision with root package name */
    private final dw f27985c;
    private final NativeAd.AdChoicesInfo e;

    /* renamed from: b  reason: collision with root package name */
    private final List<NativeAd.Image> f27984b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final VideoController f27986d = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(3:41|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:43|20|46)(1:45)|44|6|7)))|(2:39|23)|(7:25|29|37|30|(1:32)|35|36)|28|29|37|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ef, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f0, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00db A[Catch: RemoteException -> 0x00ef, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00ef, blocks: (B:30:0x00cf, B:32:0x00db), top: B:37:0x00cf }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ep(com.google.android.gms.internal.ads.ek r5) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ep.<init>(com.google.android.gms.internal.ads.ek):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final b zzjw() {
        try {
            return this.f27983a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final void destroy() {
        try {
            this.f27983a.i();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getAdvertiser() {
        try {
            return this.f27983a.g();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getBody() {
        try {
            return this.f27983a.d();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getCallToAction() {
        try {
            return this.f27983a.f();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final Bundle getExtras() {
        try {
            return this.f27983a.h();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getHeadline() {
        try {
            return this.f27983a.b();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final List<NativeAd.Image> getImages() {
        return this.f27984b;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.Image getLogo() {
        return this.f27985c;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.f27983a.m();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final VideoController getVideoController() {
        try {
            if (this.f27983a.j() != null) {
                this.f27986d.zza(this.f27983a.j());
            }
        } catch (RemoteException e) {
            za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f27986d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f27983a.a(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f27983a.b(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f27983a.c(bundle);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
