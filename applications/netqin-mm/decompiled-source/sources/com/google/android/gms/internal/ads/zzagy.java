package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagy.class */
public final class zzagy implements zzahq<zzbgj> {
    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        zzbgj zzbgjVar2 = zzbgjVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get(AvidJSONUtil.KEY_TIMESTAMP);
            if (TextUtils.isEmpty(str2)) {
                zzbbq.m15852d("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                zzbbq.m15852d("No timestamp given for CSI tick.");
            } else {
                try {
                    long parseLong = Long.parseLong(str4);
                    long b = zzp.m17962j().mo17091b();
                    long a = zzp.m17962j().mo17092a();
                    String str5 = str3;
                    if (TextUtils.isEmpty(str3)) {
                        str5 = "native:view_load";
                    }
                    zzbgjVar2.mo15566d().m16890a(str2, str5, a + (parseLong - b));
                } catch (NumberFormatException e) {
                    zzbbq.m15853c("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str6 = (String) map.get("value");
            if (TextUtils.isEmpty(str6)) {
                zzbbq.m15852d("No value given for CSI experiment.");
                return;
            }
            zzabs a2 = zzbgjVar2.mo15566d().m16892a();
            if (a2 == null) {
                zzbbq.m15852d("No ticker for WebView, dropping experiment ID.");
            } else {
                a2.m16882a("e", str6);
            }
        } else if ("extra".equals(str)) {
            String str7 = (String) map.get("name");
            String str8 = (String) map.get("value");
            if (TextUtils.isEmpty(str8)) {
                zzbbq.m15852d("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str7)) {
                zzbbq.m15852d("No name given for CSI extra.");
            } else {
                zzabs a3 = zzbgjVar2.mo15566d().m16892a();
                if (a3 == null) {
                    zzbbq.m15852d("No ticker for WebView, dropping extra parameter.");
                } else {
                    a3.m16882a(str7, str8);
                }
            }
        }
    }
}
