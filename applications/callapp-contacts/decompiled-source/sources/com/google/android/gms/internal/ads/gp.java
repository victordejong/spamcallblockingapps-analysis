package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gp.class */
public final class gp implements hi<adt> {
    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get(Reporting.Key.TIMESTAMP);
            if (TextUtils.isEmpty(str2)) {
                zzd.zzez("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                zzd.zzez("No timestamp given for CSI tick.");
            } else {
                try {
                    long b2 = zzr.zzlc().b() + (Long.parseLong(str4) - zzr.zzlc().a());
                    String str5 = str3;
                    if (TextUtils.isEmpty(str3)) {
                        str5 = "native:view_load";
                    }
                    bf j = adtVar2.j();
                    bi biVar = j.f24306b;
                    bg bgVar = j.f24305a.get(str5);
                    if (!(biVar == null || bgVar == null)) {
                        biVar.a(bgVar, b2, str2);
                    }
                    Map<String, bg> map2 = j.f24305a;
                    bi biVar2 = j.f24306b;
                    map2.put(str2, biVar2 == null ? null : biVar2.a(b2));
                } catch (NumberFormatException e) {
                    zzd.zzd("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str6 = (String) map.get("value");
            if (TextUtils.isEmpty(str6)) {
                zzd.zzez("No value given for CSI experiment.");
                return;
            }
            bi biVar3 = adtVar2.j().f24306b;
            if (biVar3 == null) {
                zzd.zzez("No ticker for WebView, dropping experiment ID.");
            } else {
                biVar3.a("e", str6);
            }
        } else if ("extra".equals(str)) {
            String str7 = (String) map.get("name");
            String str8 = (String) map.get("value");
            if (TextUtils.isEmpty(str8)) {
                zzd.zzez("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str7)) {
                zzd.zzez("No name given for CSI extra.");
            } else {
                bi biVar4 = adtVar2.j().f24306b;
                if (biVar4 == null) {
                    zzd.zzez("No ticker for WebView, dropping extra parameter.");
                } else {
                    biVar4.a(str7, str8);
                }
            }
        }
    }
}
