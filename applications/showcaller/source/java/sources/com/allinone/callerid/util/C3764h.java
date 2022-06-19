package com.allinone.callerid.util;

import android.content.Context;
import com.allinone.callerid.bean.CustomBlock;
import com.allinone.callerid.main.EZCallApplication;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.util.h */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/h.class */
public class C3764h {

    /* renamed from: a */
    private static List<CustomBlock> f11986a = new ArrayList();

    /* renamed from: b */
    private static List<CustomBlock> f11987b = new ArrayList();

    /* renamed from: c */
    private static List<CustomBlock> f11988c = new ArrayList();

    /* renamed from: d */
    private static C3800m f11989d;

    /* renamed from: a */
    private static boolean m24316a(Context context, String str) {
        List<CustomBlock> m24102g = f11989d.m24102g(0);
        f11986a = m24102g;
        if (m24102g != null && !m24102g.isEmpty() && f11986a.size() > 0) {
            for (int i = 0; i < f11986a.size(); i++) {
                String number = f11986a.get(i).getNumber();
                if (str.startsWith(number)) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("customblock", str + "是以" + number + "开头的");
                    }
                    C3711a1.m24526j1(true);
                    return true;
                }
            }
        }
        List<CustomBlock> m24102g2 = f11989d.m24102g(1);
        f11987b = m24102g2;
        if (m24102g2 != null && !m24102g2.isEmpty() && f11987b.size() > 0) {
            for (int i2 = 0; i2 < f11987b.size(); i2++) {
                String number2 = f11987b.get(i2).getNumber();
                if (str.substring(1, str.length() - 1).contains(number2)) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("customblock", str + "包含" + number2);
                    }
                    C3711a1.m24526j1(true);
                    return true;
                }
            }
        }
        List<CustomBlock> m24102g3 = f11989d.m24102g(2);
        f11988c = m24102g3;
        if (m24102g3 == null || m24102g3.isEmpty() || f11988c.size() <= 0) {
            return false;
        }
        for (int i3 = 0; i3 < f11988c.size(); i3++) {
            String number3 = f11988c.get(i3).getNumber();
            if (str.endsWith(number3)) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("customblock", str + "是以" + number3 + "结尾的");
                }
                C3711a1.m24526j1(true);
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static Boolean m24315b() {
        return f11989d.m24098k("3");
    }

    /* renamed from: c */
    public static boolean m24314c(Context context, String str) {
        try {
            f11989d = new C3800m(context);
            String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("customblock", "本地cc=" + country_code);
            }
            if (m24315b().booleanValue()) {
                if (str.startsWith("+")) {
                    if (!str.substring(1).startsWith(country_code)) {
                        C3711a1.m24526j1(true);
                        return true;
                    }
                } else if (str.startsWith("00")) {
                    String substring = str.substring(2);
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("customblock", "以00开头" + str + "-->" + substring);
                    }
                    if (!substring.startsWith(country_code)) {
                        C3711a1.m24526j1(true);
                        return true;
                    }
                }
            }
            return m24316a(context, str);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
