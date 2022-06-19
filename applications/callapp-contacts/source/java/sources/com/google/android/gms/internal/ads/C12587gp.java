package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
/* renamed from: com.google.android.gms.internal.ads.gp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gp.class */
public final class C12587gp implements AbstractC12607hi<adt> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
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
                    long mo19038b = zzr.zzlc().mo19038b() + (Long.parseLong(str4) - zzr.zzlc().mo19039a());
                    String str5 = str3;
                    if (TextUtils.isEmpty(str3)) {
                        str5 = "native:view_load";
                    }
                    C12238bf mo13740j = adtVar2.mo13740j();
                    C12241bi c12241bi = mo13740j.f43768b;
                    C12239bg c12239bg = mo13740j.f43767a.get(str5);
                    if (c12241bi != null && c12239bg != null) {
                        c12241bi.m17832a(c12239bg, mo19038b, str2);
                    }
                    Map<String, C12239bg> map2 = mo13740j.f43767a;
                    C12241bi c12241bi2 = mo13740j.f43768b;
                    map2.put(str2, c12241bi2 == null ? null : c12241bi2.m17833a(mo19038b));
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
            C12241bi c12241bi3 = adtVar2.mo13740j().f43768b;
            if (c12241bi3 == null) {
                zzd.zzez("No ticker for WebView, dropping experiment ID.");
            } else {
                c12241bi3.m17831a("e", str6);
            }
        } else if (!"extra".equals(str)) {
        } else {
            String str7 = (String) map.get("name");
            String str8 = (String) map.get("value");
            if (TextUtils.isEmpty(str8)) {
                zzd.zzez("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str7)) {
                zzd.zzez("No name given for CSI extra.");
            } else {
                C12241bi c12241bi4 = adtVar2.mo13740j().f43768b;
                if (c12241bi4 == null) {
                    zzd.zzez("No ticker for WebView, dropping extra parameter.");
                } else {
                    c12241bi4.m17831a(str7, str8);
                }
            }
        }
    }
}
