package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byf.class */
public final class byf implements cah<byg> {

    /* renamed from: a */
    private final crs f12479a;

    /* renamed from: b */
    private final chh f12480b;

    /* renamed from: c */
    private final PackageInfo f12481c;

    /* renamed from: d */
    private final AbstractC3558uw f12482d;

    public byf(crs crsVar, chh chhVar, PackageInfo packageInfo, AbstractC3558uw abstractC3558uw) {
        this.f12479a = crsVar;
        this.f12480b = chhVar;
        this.f12481c = packageInfo;
        this.f12482d = abstractC3558uw;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<byg> mo11479a() {
        return this.f12479a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.byi

            /* renamed from: a */
            private final byf f12484a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12484a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12484a.m11556b();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m11557a(ArrayList arrayList, Bundle bundle) {
        String str;
        String str2;
        JSONArray optJSONArray;
        String str3;
        bundle.putInt("native_version", 3);
        bundle.putStringArrayList("native_templates", arrayList);
        bundle.putStringArrayList("native_custom_templates", this.f12480b.f13044h);
        if (((Boolean) dyx.m8158e().m7876a(edi.f16443bw)).booleanValue() && this.f12480b.f13045i.f11455a > 3) {
            bundle.putBoolean("enable_native_media_orientation", true);
            switch (this.f12480b.f13045i.f11462h) {
                case 1:
                    str3 = "any";
                    break;
                case 2:
                    str3 = "landscape";
                    break;
                case 3:
                    str3 = "portrait";
                    break;
                case 4:
                    str3 = "square";
                    break;
                default:
                    str3 = "unknown";
                    break;
            }
            if (!"unknown".equals(str3)) {
                bundle.putString("native_media_orientation", str3);
            }
        }
        switch (this.f12480b.f13045i.f11457c) {
            case 0:
                str = "any";
                break;
            case 1:
                str = "portrait";
                break;
            case 2:
                str = "landscape";
                break;
            default:
                str = "unknown";
                break;
        }
        if (!"unknown".equals(str)) {
            bundle.putString("native_image_orientation", str);
        }
        bundle.putBoolean("native_multiple_images", this.f12480b.f13045i.f11458d);
        bundle.putBoolean("use_custom_mute", this.f12480b.f13045i.f11461g);
        PackageInfo packageInfo = this.f12481c;
        int i = packageInfo == null ? 0 : packageInfo.versionCode;
        if (i > this.f12482d.mo7020g()) {
            this.f12482d.mo7014m();
            this.f12482d.mo7038a(i);
        }
        JSONObject mo7015l = this.f12482d.mo7015l();
        String jSONArray = (mo7015l == null || (optJSONArray = mo7015l.optJSONArray(this.f12480b.f13042f)) == null) ? null : optJSONArray.toString();
        if (!TextUtils.isEmpty(jSONArray)) {
            bundle.putString("native_advanced_settings", jSONArray);
        }
        if (this.f12480b.f13047k > 1) {
            bundle.putInt("max_num_ads", this.f12480b.f13047k);
        }
        C3171gn c3171gn = this.f12480b.f13039c;
        if (c3171gn != null) {
            if (TextUtils.isEmpty(c3171gn.f16697c)) {
                if (c3171gn.f16695a < 2) {
                    switch (c3171gn.f16696b) {
                        case 1:
                            str2 = "l";
                            break;
                        case 2:
                            str2 = "p";
                            break;
                        default:
                            C3645yb.m6749c(new StringBuilder(52).append("Instream ad video aspect ratio ").append(c3171gn.f16696b).append(" is wrong.").toString());
                            str2 = "l";
                            break;
                    }
                } else {
                    switch (c3171gn.f16698d) {
                        case 2:
                            str2 = "l";
                            break;
                        case 3:
                            str2 = "p";
                            break;
                        default:
                            str2 = "l";
                            break;
                    }
                }
                bundle.putString("ia_var", str2);
            } else {
                bundle.putString("ad_tag", c3171gn.f16697c);
            }
            bundle.putBoolean("instr", true);
        }
        if (this.f12480b.m11350a() != null) {
            bundle.putBoolean("has_delayed_banner_listener", true);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ byg m11556b() {
        ArrayList<String> arrayList = this.f12480b.f13043g;
        return arrayList == null ? byh.f12483a : arrayList.isEmpty() ? byk.f12487a : new byg(this, arrayList) { // from class: com.google.android.gms.internal.ads.byj

            /* renamed from: a */
            private final byf f12485a;

            /* renamed from: b */
            private final ArrayList f12486b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12485a = this;
                this.f12486b = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Bundle bundle) {
                this.f12485a.m11557a(this.f12486b, bundle);
            }
        };
    }
}
