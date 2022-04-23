package com.callerid.block.util;

import android.content.Context;
import java.util.Locale;
/* renamed from: com.callerid.block.util.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/b.class */
public class C1166b {
    /* renamed from: a */
    private static boolean m9906a(String str) {
        str.hashCode();
        boolean z = false;
        char c = 65535;
        switch (str.hashCode()) {
            case 2099:
                if (str.equals("AT")) {
                    c = 0;
                    break;
                }
                break;
            case 2115:
                if (str.equals("BE")) {
                    c = 1;
                    break;
                }
                break;
            case 2117:
                if (str.equals("BG")) {
                    c = 2;
                    break;
                }
                break;
            case 2166:
                if (str.equals("CY")) {
                    c = 3;
                    break;
                }
                break;
            case 2167:
                if (str.equals("CZ")) {
                    c = 4;
                    break;
                }
                break;
            case 2177:
                if (str.equals("DE")) {
                    c = 5;
                    break;
                }
                break;
            case 2183:
                if (str.equals("DK")) {
                    c = 6;
                    break;
                }
                break;
            case 2208:
                if (str.equals("EE")) {
                    c = 7;
                    break;
                }
                break;
            case 2222:
                if (str.equals("ES")) {
                    c = '\b';
                    break;
                }
                break;
            case 2243:
                if (str.equals("FI")) {
                    c = '\t';
                    break;
                }
                break;
            case 2252:
                if (str.equals("FR")) {
                    c = '\n';
                    break;
                }
                break;
            case 2267:
                if (str.equals("GB")) {
                    c = 11;
                    break;
                }
                break;
            case 2283:
                if (str.equals("GR")) {
                    c = '\f';
                    break;
                }
                break;
            case 2314:
                if (str.equals("HR")) {
                    c = '\r';
                    break;
                }
                break;
            case 2317:
                if (str.equals("HU")) {
                    c = 14;
                    break;
                }
                break;
            case 2332:
                if (str.equals("IE")) {
                    c = 15;
                    break;
                }
                break;
            case 2347:
                if (str.equals("IT")) {
                    c = 16;
                    break;
                }
                break;
            case 2440:
                if (str.equals("LT")) {
                    c = 17;
                    break;
                }
                break;
            case 2441:
                if (str.equals("LU")) {
                    c = 18;
                    break;
                }
                break;
            case 2442:
                if (str.equals("LV")) {
                    c = 19;
                    break;
                }
                break;
            case 2471:
                if (str.equals("MT")) {
                    c = 20;
                    break;
                }
                break;
            case 2494:
                if (str.equals("NL")) {
                    c = 21;
                    break;
                }
                break;
            case 2556:
                if (str.equals("PL")) {
                    c = 22;
                    break;
                }
                break;
            case 2564:
                if (str.equals("PT")) {
                    c = 23;
                    break;
                }
                break;
            case 2621:
                if (str.equals("RO")) {
                    c = 24;
                    break;
                }
                break;
            case 2642:
                if (str.equals("SE")) {
                    c = 25;
                    break;
                }
                break;
            case 2646:
                if (str.equals("SI")) {
                    c = 26;
                    break;
                }
                break;
            case 2648:
                if (str.equals("SK")) {
                    c = 27;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
                z = true;
                break;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m9905b(Context context) {
        boolean z;
        String str;
        String b = C1184j.m9828b(context);
        C1227w.m9527a("country", "countryISO=" + b);
        if (b == null || "".equals(b)) {
            String country = Locale.getDefault().getCountry();
            C1227w.m9527a("country", "locale=" + country);
            if (country == null || "".equals(country)) {
                String x = C1216t0.m9553x(context);
                C1227w.m9527a("country", "networkCountry=" + x);
                z = (x == null || "".equals(x)) ? false : m9906a(x);
                C1227w.m9527a("country", "isEU=" + z);
                return z;
            }
            str = country;
        } else {
            str = b;
        }
        z = m9906a(str);
        C1227w.m9527a("country", "isEU=" + z);
        return z;
    }
}
