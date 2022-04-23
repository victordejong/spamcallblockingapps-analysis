package com.inmobi.commons.core.utilities.p516b;

import android.location.Location;
import com.inmobi.commons.core.p512d.C8364c;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.Locale;
/* renamed from: com.inmobi.commons.core.utilities.b.g */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b/g.class */
public final class C8404g {

    /* renamed from: a */
    public static int f32668a = Integer.MIN_VALUE;

    /* renamed from: b */
    public static String f32669b;

    /* renamed from: c */
    public static String f32670c;

    /* renamed from: d */
    public static String f32671d;

    /* renamed from: e */
    public static String f32672e;

    /* renamed from: f */
    public static String f32673f;

    /* renamed from: g */
    public static String f32674g;

    /* renamed from: h */
    public static int f32675h = Integer.MIN_VALUE;

    /* renamed from: i */
    public static String f32676i;

    /* renamed from: j */
    public static String f32677j;

    /* renamed from: k */
    public static String f32678k;

    /* renamed from: l */
    public static String f32679l;

    /* renamed from: m */
    public static Location f32680m;

    /* renamed from: a */
    public static String m5672a() {
        return C8364c.m5804a("user_info_store");
    }

    /* renamed from: a */
    public static void m5671a(int i) {
        if (!C8326a.m5899a() || i == Integer.MIN_VALUE) {
            f32668a = i;
        } else {
            C8364c.m5799b("user_info_store").m5803a("user_age", i);
        }
    }

    /* renamed from: a */
    public static void m5670a(Location location) {
        if (!C8326a.m5899a() || location == null) {
            f32680m = location;
            return;
        }
        C8364c.m5799b("user_info_store").m5801a("user_location", location.getLatitude() + "," + location.getLongitude() + "," + ((int) location.getAccuracy()) + "," + location.getTime());
    }

    /* renamed from: a */
    public static void m5669a(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32669b = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_age_group", str);
        }
    }

    /* renamed from: b */
    public static void m5668b() {
        m5671a(f32668a);
        m5669a(f32669b);
        m5666b(f32670c);
        m5664c(f32671d);
        m5662d(f32672e);
        m5661e(f32673f);
        m5660f(f32674g);
        m5667b(f32675h);
        m5659g(f32676i);
        m5658h(f32677j);
        m5657i(f32678k);
        m5656j(f32679l);
        m5670a(f32680m);
    }

    /* renamed from: b */
    public static void m5667b(int i) {
        if (!C8326a.m5899a() || i == Integer.MIN_VALUE) {
            f32675h = i;
        } else {
            C8364c.m5799b("user_info_store").m5803a("user_yob", i);
        }
    }

    /* renamed from: b */
    public static void m5666b(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32670c = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_area_code", str);
        }
    }

    /* renamed from: c */
    public static Location m5665c() {
        Location location = f32680m;
        if (location != null) {
            return location;
        }
        String c = C8364c.m5799b("user_info_store").m5796c("user_location");
        Location location2 = null;
        if (c == null) {
            return null;
        }
        Location location3 = new Location("");
        try {
            String[] split = c.split(",");
            location3.setLatitude(Double.parseDouble(split[0]));
            location3.setLongitude(Double.parseDouble(split[1]));
            location3.setAccuracy(Float.parseFloat(split[2]));
            location3.setTime(Long.parseLong(split[3]));
            location2 = location3;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException e) {
        }
        return location2;
    }

    /* renamed from: c */
    public static void m5664c(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32671d = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_post_code", str);
        }
    }

    /* renamed from: d */
    public static HashMap<String, String> m5663d() {
        HashMap<String, String> hashMap = new HashMap<>();
        int i = f32668a;
        if (i == Integer.MIN_VALUE) {
            i = C8364c.m5799b("user_info_store").m5795d("user_age");
        }
        if (i != Integer.MIN_VALUE && i > 0) {
            hashMap.put("u-age", String.valueOf(i));
        }
        int i2 = f32675h;
        if (i2 == Integer.MIN_VALUE) {
            i2 = C8364c.m5799b("user_info_store").m5795d("user_yob");
        }
        if (i2 != Integer.MIN_VALUE && i2 > 0) {
            hashMap.put("u-yearofbirth", String.valueOf(i2));
        }
        String str = f32672e;
        if (str == null) {
            str = C8364c.m5799b("user_info_store").m5796c("user_city_code");
        }
        String str2 = f32673f;
        if (str2 == null) {
            str2 = C8364c.m5799b("user_info_store").m5796c("user_state_code");
        }
        String str3 = f32674g;
        if (str3 == null) {
            str3 = C8364c.m5799b("user_info_store").m5796c("user_country_code");
        }
        String trim = (str == null || str.trim().length() == 0) ? "" : str.trim();
        String str4 = trim;
        if (str2 != null) {
            str4 = trim;
            if (str2.trim().length() != 0) {
                str4 = trim + "-" + str2.trim();
            }
        }
        String str5 = str4;
        if (str3 != null) {
            str5 = str4;
            if (str3.trim().length() != 0) {
                str5 = str4 + "-" + str3.trim();
            }
        }
        if (!(str5 == null || str5.trim().length() == 0)) {
            hashMap.put("u-location", str5);
        }
        String str6 = f32669b;
        if (str6 == null) {
            str6 = C8364c.m5799b("user_info_store").m5796c("user_age_group");
        }
        if (str6 != null) {
            hashMap.put("u-agegroup", str6.toLowerCase(Locale.ENGLISH));
        }
        String str7 = f32670c;
        if (str7 == null) {
            str7 = C8364c.m5799b("user_info_store").m5796c("user_area_code");
        }
        if (str7 != null) {
            hashMap.put("u-areacode", str7);
        }
        String str8 = f32671d;
        if (str8 == null) {
            str8 = C8364c.m5799b("user_info_store").m5796c("user_post_code");
        }
        if (str8 != null) {
            hashMap.put("u-postalcode", str8);
        }
        String str9 = f32676i;
        if (str9 == null) {
            str9 = C8364c.m5799b("user_info_store").m5796c("user_gender");
        }
        if (str9 != null) {
            hashMap.put("u-gender", str9);
        }
        String str10 = f32677j;
        if (str10 == null) {
            str10 = C8364c.m5799b("user_info_store").m5796c("user_education");
        }
        if (str10 != null) {
            hashMap.put("u-education", str10);
        }
        String str11 = f32678k;
        if (str11 == null) {
            str11 = C8364c.m5799b("user_info_store").m5796c("user_language");
        }
        if (str11 != null) {
            hashMap.put("u-language", str11);
        }
        String str12 = f32679l;
        if (str12 == null) {
            str12 = C8364c.m5799b("user_info_store").m5796c("user_interest");
        }
        if (str12 != null) {
            hashMap.put("u-interests", str12);
        }
        return hashMap;
    }

    /* renamed from: d */
    public static void m5662d(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32672e = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_city_code", str);
        }
    }

    /* renamed from: e */
    public static void m5661e(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32673f = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_state_code", str);
        }
    }

    /* renamed from: f */
    public static void m5660f(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32674g = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_country_code", str);
        }
    }

    /* renamed from: g */
    public static void m5659g(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32676i = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_gender", str);
        }
    }

    /* renamed from: h */
    public static void m5658h(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32677j = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_education", str);
        }
    }

    /* renamed from: i */
    public static void m5657i(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32678k = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_language", str);
        }
    }

    /* renamed from: j */
    public static void m5656j(String str) {
        if (!C8326a.m5899a() || str == null) {
            f32679l = str;
        } else {
            C8364c.m5799b("user_info_store").m5801a("user_interest", str);
        }
    }
}
