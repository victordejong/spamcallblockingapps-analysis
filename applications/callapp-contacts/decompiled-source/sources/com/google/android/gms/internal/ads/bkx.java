package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.AdType;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkx.class */
public final class bkx implements arp, atb, auf {

    /* renamed from: a  reason: collision with root package name */
    private final blf f24613a;

    /* renamed from: b  reason: collision with root package name */
    private final bln f24614b;

    public bkx(blf blfVar, bln blnVar) {
        this.f24613a = blfVar;
        this.f24614b = blnVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        this.f24613a.f24630a.put("action", "loaded");
        this.f24614b.a(this.f24613a.f24630a);
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(cpk cpkVar) {
        blf blfVar = this.f24613a;
        if (cpkVar.f26222b.f26216a.size() > 0) {
            switch (cpkVar.f26222b.f26216a.get(0).f26184b) {
                case 1:
                    blfVar.f24630a.put(Reporting.Key.AD_FORMAT, "banner");
                    break;
                case 2:
                    blfVar.f24630a.put(Reporting.Key.AD_FORMAT, AdType.INTERSTITIAL);
                    break;
                case 3:
                    blfVar.f24630a.put(Reporting.Key.AD_FORMAT, "native_express");
                    break;
                case 4:
                    blfVar.f24630a.put(Reporting.Key.AD_FORMAT, "native_advanced");
                    break;
                case 5:
                    blfVar.f24630a.put(Reporting.Key.AD_FORMAT, Reporting.AdFormat.REWARDED);
                    break;
                case 6:
                    blfVar.f24630a.put(Reporting.Key.AD_FORMAT, "app_open_ad");
                    blfVar.f24630a.put("as", blfVar.f24631b.e ? "1" : "0");
                    break;
                default:
                    blfVar.f24630a.put(Reporting.Key.AD_FORMAT, "unknown");
                    break;
            }
        }
        if (!TextUtils.isEmpty(cpkVar.f26222b.f26217b.f26197b)) {
            blfVar.f24630a.put("gqi", cpkVar.f26222b.f26217b.f26197b);
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
        blf blfVar = this.f24613a;
        Bundle bundle = zzaujVar.zzdys;
        if (bundle.containsKey("cnt")) {
            blfVar.f24630a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            blfVar.f24630a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(zzvh zzvhVar) {
        this.f24613a.f24630a.put("action", "ftl");
        this.f24613a.f24630a.put("ftl", String.valueOf(zzvhVar.errorCode));
        this.f24613a.f24630a.put("ed", zzvhVar.zzcht);
        this.f24614b.a(this.f24613a.f24630a);
    }
}
