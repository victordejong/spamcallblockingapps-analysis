package com.allinone.callerid.util;

import android.content.Context;
import java.util.Locale;
/* renamed from: com.allinone.callerid.util.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/b.class */
public class C3712b {
    /* renamed from: a */
    private static boolean m24460a(String str) {
        str.hashCode();
        boolean z = false;
        boolean z2 = true;
        switch (str.hashCode()) {
            case 2099:
                if (str.equals("AT")) {
                    z2 = false;
                    break;
                }
                break;
            case 2115:
                if (str.equals("BE")) {
                    z2 = true;
                    break;
                }
                break;
            case 2117:
                if (str.equals("BG")) {
                    z2 = true;
                    break;
                }
                break;
            case 2166:
                if (str.equals("CY")) {
                    z2 = true;
                    break;
                }
                break;
            case 2167:
                if (str.equals("CZ")) {
                    z2 = true;
                    break;
                }
                break;
            case 2177:
                if (str.equals("DE")) {
                    z2 = true;
                    break;
                }
                break;
            case 2183:
                if (str.equals("DK")) {
                    z2 = true;
                    break;
                }
                break;
            case 2208:
                if (str.equals("EE")) {
                    z2 = true;
                    break;
                }
                break;
            case 2222:
                if (str.equals("ES")) {
                    z2 = true;
                    break;
                }
                break;
            case 2243:
                if (str.equals("FI")) {
                    z2 = true;
                    break;
                }
                break;
            case 2252:
                if (str.equals("FR")) {
                    z2 = true;
                    break;
                }
                break;
            case 2267:
                if (str.equals("GB")) {
                    z2 = true;
                    break;
                }
                break;
            case 2283:
                if (str.equals("GR")) {
                    z2 = true;
                    break;
                }
                break;
            case 2314:
                if (str.equals("HR")) {
                    z2 = true;
                    break;
                }
                break;
            case 2317:
                if (str.equals("HU")) {
                    z2 = true;
                    break;
                }
                break;
            case 2332:
                if (str.equals("IE")) {
                    z2 = true;
                    break;
                }
                break;
            case 2347:
                if (str.equals("IT")) {
                    z2 = true;
                    break;
                }
                break;
            case 2440:
                if (str.equals("LT")) {
                    z2 = true;
                    break;
                }
                break;
            case 2441:
                if (str.equals("LU")) {
                    z2 = true;
                    break;
                }
                break;
            case 2442:
                if (str.equals("LV")) {
                    z2 = true;
                    break;
                }
                break;
            case 2471:
                if (str.equals("MT")) {
                    z2 = true;
                    break;
                }
                break;
            case 2494:
                if (str.equals("NL")) {
                    z2 = true;
                    break;
                }
                break;
            case 2556:
                if (str.equals("PL")) {
                    z2 = true;
                    break;
                }
                break;
            case 2564:
                if (str.equals("PT")) {
                    z2 = true;
                    break;
                }
                break;
            case 2621:
                if (str.equals("RO")) {
                    z2 = true;
                    break;
                }
                break;
            case 2642:
                if (str.equals("SE")) {
                    z2 = true;
                    break;
                }
                break;
            case 2646:
                if (str.equals("SI")) {
                    z2 = true;
                    break;
                }
                break;
            case 2648:
                if (str.equals("SK")) {
                    z2 = true;
                    break;
                }
                break;
        }
        switch (z2) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
                z = true;
                break;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m24459b(Context context) {
        boolean z;
        String m24085b = C3806p.m24085b(context);
        C3718c0.m24436a("country", "countryISO=" + m24085b);
        if (m24085b == null || "".equals(m24085b)) {
            String country = Locale.getDefault().getCountry();
            C3718c0.m24436a("country", "locale=" + country);
            if (country == null || "".equals(country)) {
                String m24278K = C3767h1.m24278K(context);
                C3718c0.m24436a("country", "networkCountry=" + m24278K);
                z = (m24278K == null || "".equals(m24278K)) ? false : m24460a(m24278K);
            } else {
                z = m24460a(country);
            }
        } else {
            z = m24460a(m24085b);
        }
        C3718c0.m24436a("country", "isEU=" + z);
        return z;
    }
}
