package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.ads.internal.C5667s;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p10.class */
public final class p10 implements n20<wn0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        wn0 wn0Var2 = wn0Var;
        String str = (String) map.get("action");
        if (!"tick".equals(str)) {
            if ("experiment".equals(str)) {
                String str2 = (String) map.get("value");
                if (TextUtils.isEmpty(str2)) {
                    ei0.m15464f("No value given for CSI experiment.");
                    return;
                } else {
                    wn0Var2.mo7901k().m9038c().m16472d("e", str2);
                    return;
                }
            } else if (!"extra".equals(str)) {
                return;
            } else {
                String str3 = (String) map.get(ShortCut.NAME);
                String str4 = (String) map.get("value");
                if (TextUtils.isEmpty(str4)) {
                    ei0.m15464f("No value given for CSI extra.");
                    return;
                } else if (TextUtils.isEmpty(str3)) {
                    ei0.m15464f("No name given for CSI extra.");
                    return;
                } else {
                    wn0Var2.mo7901k().m9038c().m16472d(str3, str4);
                    return;
                }
            }
        }
        String str5 = (String) map.get("label");
        String str6 = (String) map.get("start_label");
        String str7 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str5)) {
            ei0.m15464f("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str7)) {
            ei0.m15464f("No timestamp given for CSI tick.");
        } else {
            try {
                long parseLong = Long.parseLong(str7);
                long mo16807a = C5667s.m18153k().mo16807a();
                long mo16806b = C5667s.m18153k().mo16806b();
                String str8 = str6;
                if (true == TextUtils.isEmpty(str6)) {
                    str8 = "native:view_load";
                }
                wn0Var2.mo7901k().m9039b(str5, str8, mo16806b + (parseLong - mo16807a));
            } catch (NumberFormatException e) {
                ei0.m15463g("Malformed timestamp for CSI tick.", e);
            }
        }
    }
}
