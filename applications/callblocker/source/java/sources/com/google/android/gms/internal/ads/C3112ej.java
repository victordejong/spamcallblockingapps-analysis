package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ej */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ej.class */
public final class C3112ej implements AbstractC3131fa<act> {
    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        act actVar2 = actVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                C3556uu.m6745e("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                C3556uu.m6745e("No timestamp given for CSI tick.");
            } else {
                try {
                    long parseLong = Long.parseLong(str4);
                    long mo13862a = C2341q.m14737j().mo13862a();
                    long mo13861b = C2341q.m14737j().mo13861b();
                    String str5 = str3;
                    if (TextUtils.isEmpty(str3)) {
                        str5 = "native:view_load";
                    }
                    actVar2.mo13439i().m7346a(str2, str5, (parseLong - mo13862a) + mo13861b);
                } catch (NumberFormatException e) {
                    C3556uu.m6746d("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str6 = (String) map.get("value");
            if (TextUtils.isEmpty(str6)) {
                C3556uu.m6745e("No value given for CSI experiment.");
                return;
            }
            C3373o m7348a = actVar2.mo13439i().m7348a();
            if (m7348a == null) {
                C3556uu.m6745e("No ticker for WebView, dropping experiment ID.");
            } else {
                m7348a.m7379a("e", str6);
            }
        } else if (!"extra".equals(str)) {
        } else {
            String str7 = (String) map.get("name");
            String str8 = (String) map.get("value");
            if (TextUtils.isEmpty(str8)) {
                C3556uu.m6745e("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str7)) {
                C3556uu.m6745e("No name given for CSI extra.");
            } else {
                C3373o m7348a2 = actVar2.mo13439i().m7348a();
                if (m7348a2 == null) {
                    C3556uu.m6745e("No ticker for WebView, dropping extra parameter.");
                } else {
                    m7348a2.m7379a(str7, str8);
                }
            }
        }
    }
}
