package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.common.AdType;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctz.class */
public final class ctz {

    /* renamed from: a  reason: collision with root package name */
    final HashMap<String, String> f26390a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final cud f26391b = new cud(zzr.zzlc());

    public static ctz a(String str) {
        ctz ctzVar = new ctz();
        ctzVar.f26390a.put("action", str);
        return ctzVar;
    }

    public final ctz a(cov covVar) {
        this.f26390a.put("aai", covVar.v);
        return this;
    }

    public final ctz a(coz cozVar) {
        if (!TextUtils.isEmpty(cozVar.f26197b)) {
            this.f26390a.put("gqi", cozVar.f26197b);
        }
        return this;
    }

    public final ctz a(cpk cpkVar, yo yoVar) {
        if (cpkVar.f26222b == null) {
            return this;
        }
        cpi cpiVar = cpkVar.f26222b;
        if (cpiVar.f26217b != null) {
            a(cpiVar.f26217b);
        }
        if (!cpiVar.f26216a.isEmpty()) {
            switch (cpiVar.f26216a.get(0).f26184b) {
                case 1:
                    this.f26390a.put(Reporting.Key.AD_FORMAT, "banner");
                    break;
                case 2:
                    this.f26390a.put(Reporting.Key.AD_FORMAT, AdType.INTERSTITIAL);
                    break;
                case 3:
                    this.f26390a.put(Reporting.Key.AD_FORMAT, "native_express");
                    break;
                case 4:
                    this.f26390a.put(Reporting.Key.AD_FORMAT, "native_advanced");
                    break;
                case 5:
                    this.f26390a.put(Reporting.Key.AD_FORMAT, Reporting.AdFormat.REWARDED);
                    break;
                case 6:
                    this.f26390a.put(Reporting.Key.AD_FORMAT, "app_open_ad");
                    if (yoVar != null) {
                        this.f26390a.put("as", yoVar.e ? "1" : "0");
                        break;
                    }
                    break;
                default:
                    this.f26390a.put(Reporting.Key.AD_FORMAT, "unknown");
                    break;
            }
        }
        return this;
    }

    public final ctz a(String str, String str2) {
        this.f26390a.put(str, str2);
        return this;
    }

    public final Map<String, String> a() {
        HashMap hashMap = new HashMap(this.f26390a);
        for (cug cugVar : this.f26391b.a()) {
            hashMap.put(cugVar.f26411a, cugVar.f26412b);
        }
        return hashMap;
    }

    public final ctz b(String str) {
        this.f26391b.a(str);
        return this;
    }

    public final ctz b(String str, String str2) {
        this.f26391b.a(str, str2);
        return this;
    }
}
