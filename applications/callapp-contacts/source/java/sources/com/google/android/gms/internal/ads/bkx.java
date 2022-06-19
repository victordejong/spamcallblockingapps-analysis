package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.AdType;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkx.class */
public final class bkx implements arp, atb, auf {

    /* renamed from: a */
    private final blf f44171a;

    /* renamed from: b */
    private final bln f44172b;

    public bkx(blf blfVar, bln blnVar) {
        this.f44171a = blfVar;
        this.f44172b = blnVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        this.f44171a.f44188a.put("action", "loaded");
        this.f44172b.m17761a(this.f44171a.f44188a);
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
        blf blfVar = this.f44171a;
        if (cpkVar.f46319b.f46313a.size() > 0) {
            switch (cpkVar.f46319b.f46313a.get(0).f46255b) {
                case 1:
                    blfVar.f44188a.put(Reporting.Key.AD_FORMAT, "banner");
                    break;
                case 2:
                    blfVar.f44188a.put(Reporting.Key.AD_FORMAT, AdType.INTERSTITIAL);
                    break;
                case 3:
                    blfVar.f44188a.put(Reporting.Key.AD_FORMAT, "native_express");
                    break;
                case 4:
                    blfVar.f44188a.put(Reporting.Key.AD_FORMAT, "native_advanced");
                    break;
                case 5:
                    blfVar.f44188a.put(Reporting.Key.AD_FORMAT, Reporting.AdFormat.REWARDED);
                    break;
                case 6:
                    blfVar.f44188a.put(Reporting.Key.AD_FORMAT, "app_open_ad");
                    blfVar.f44188a.put("as", blfVar.f44189b.f50091e ? "1" : "0");
                    break;
                default:
                    blfVar.f44188a.put(Reporting.Key.AD_FORMAT, "unknown");
                    break;
            }
        }
        if (!TextUtils.isEmpty(cpkVar.f46319b.f46314b.f46290b)) {
            blfVar.f44188a.put("gqi", cpkVar.f46319b.f46314b.f46290b);
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
        blf blfVar = this.f44171a;
        Bundle bundle = zzaujVar.zzdys;
        if (bundle.containsKey("cnt")) {
            blfVar.f44188a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            blfVar.f44188a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        this.f44171a.f44188a.put("action", "ftl");
        this.f44171a.f44188a.put("ftl", String.valueOf(zzvhVar.errorCode));
        this.f44171a.f44188a.put("ed", zzvhVar.zzcht);
        this.f44172b.m17761a(this.f44171a.f44188a);
    }
}
