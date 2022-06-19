package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.common.AdType;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctz.class */
public final class ctz {

    /* renamed from: a */
    final HashMap<String, String> f46536a = new HashMap<>();

    /* renamed from: b */
    private final cud f46537b = new cud(zzr.zzlc());

    /* renamed from: a */
    public static ctz m17226a(String str) {
        ctz ctzVar = new ctz();
        ctzVar.f46536a.put("action", str);
        return ctzVar;
    }

    /* renamed from: a */
    public final ctz m17229a(cov covVar) {
        this.f46536a.put("aai", covVar.f46275v);
        return this;
    }

    /* renamed from: a */
    public final ctz m17228a(coz cozVar) {
        if (!TextUtils.isEmpty(cozVar.f46290b)) {
            this.f46536a.put("gqi", cozVar.f46290b);
        }
        return this;
    }

    /* renamed from: a */
    public final ctz m17227a(cpk cpkVar, C13075yo c13075yo) {
        if (cpkVar.f46319b == null) {
            return this;
        }
        cpi cpiVar = cpkVar.f46319b;
        if (cpiVar.f46314b != null) {
            m17228a(cpiVar.f46314b);
        }
        if (!cpiVar.f46313a.isEmpty()) {
            switch (cpiVar.f46313a.get(0).f46255b) {
                case 1:
                    this.f46536a.put(Reporting.Key.AD_FORMAT, "banner");
                    break;
                case 2:
                    this.f46536a.put(Reporting.Key.AD_FORMAT, AdType.INTERSTITIAL);
                    break;
                case 3:
                    this.f46536a.put(Reporting.Key.AD_FORMAT, "native_express");
                    break;
                case 4:
                    this.f46536a.put(Reporting.Key.AD_FORMAT, "native_advanced");
                    break;
                case 5:
                    this.f46536a.put(Reporting.Key.AD_FORMAT, Reporting.AdFormat.REWARDED);
                    break;
                case 6:
                    this.f46536a.put(Reporting.Key.AD_FORMAT, "app_open_ad");
                    if (c13075yo != null) {
                        this.f46536a.put("as", c13075yo.f50091e ? "1" : "0");
                        break;
                    }
                    break;
                default:
                    this.f46536a.put(Reporting.Key.AD_FORMAT, "unknown");
                    break;
            }
        }
        return this;
    }

    /* renamed from: a */
    public final ctz m17225a(String str, String str2) {
        this.f46536a.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public final Map<String, String> m17230a() {
        HashMap hashMap = new HashMap(this.f46536a);
        for (cug cugVar : this.f46537b.m17222a()) {
            hashMap.put(cugVar.f46560a, cugVar.f46561b);
        }
        return hashMap;
    }

    /* renamed from: b */
    public final ctz m17224b(String str) {
        this.f46537b.m17221a(str);
        return this;
    }

    /* renamed from: b */
    public final ctz m17223b(String str, String str2) {
        this.f46537b.m17220a(str, str2);
        return this;
    }
}
