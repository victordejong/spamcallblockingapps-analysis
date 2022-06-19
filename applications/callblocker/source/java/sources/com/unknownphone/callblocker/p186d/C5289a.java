package com.unknownphone.callblocker.p186d;

import android.text.TextUtils;
/* renamed from: com.unknownphone.callblocker.d.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/d/a.class */
public class C5289a {

    /* renamed from: a */
    private static final String[] f22144a = {"AD", "AE", "AF", "AL", "AM", "AN", "AO", "AQ", "AR", "AT", "AU", "AW", "AZ", "BA", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BN", "BO", "BR", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IT", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KP", "KR", "KW", "KZ", "LA", "LB", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MR", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VE", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"};

    /* renamed from: b */
    private static final String[] f22145b = {"376", "971", "93", "355", "374", "599", "244", "672", "54", "43", "61", "297", "994", "387", "880", "32", "226", "359", "973", "257", "229", "590", "673", "591", "55", "975", "267", "375", "501", "1", "61", "243", "236", "242", "41", "225", "682", "56", "237", "86", "57", "506", "53", "238", "61", "357", "420", "49", "253", "45", "213", "593", "372", "20", "291", "34", "251", "358", "679", "500", "691", "298", "33", "241", "44", "995", "233", "350", "299", "220", "224", "240", "30", "502", "245", "592", "852", "504", "385", "509", "36", "62", "353", "972", "44", "91", "964", "98", "39", "962", "81", "254", "996", "855", "686", "269", "850", "82", "965", "7", "856", "961", "423", "94", "231", "266", "370", "352", "371", "218", "212", "377", "373", "382", "261", "692", "389", "223", "95", "976", "853", "222", "356", "230", "960", "265", "52", "60", "258", "264", "687", "227", "234", "505", "31", "47", "977", "674", "683", "64", "968", "507", "51", "689", "675", "63", "92", "48", "508", "870", "1", "351", "680", "595", "974", "40", "381", "7", "250", "966", "677", "248", "249", "46", "65", "290", "386", "421", "232", "378", "221", "252", "597", "239", "503", "963", "268", "235", "228", "66", "992", "690", "670", "993", "216", "676", "90", "688", "886", "255", "380", "256", "1", "598", "998", "39", "58", "84", "678", "681", "685", "967", "262", "27", "260", "263"};

    /* renamed from: a */
    public static String m1069a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            int m1067c = m1067c(str.trim());
            str2 = null;
            if (m1067c != -1) {
                str2 = f22145b[m1067c];
            }
        }
        return str2;
    }

    /* renamed from: b */
    public static String m1068b(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            int m1066d = m1066d(str.trim());
            str2 = null;
            if (m1066d != -1) {
                str2 = f22144a[m1066d];
            }
        }
        return str2;
    }

    /* renamed from: c */
    private static int m1067c(String str) {
        int i = 0;
        while (true) {
            if (i >= f22144a.length) {
                i = -1;
                break;
            } else if (f22144a[i].equalsIgnoreCase(str)) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: d */
    private static int m1066d(String str) {
        int i = 0;
        while (true) {
            if (i >= f22145b.length) {
                i = -1;
                break;
            } else if (f22145b[i].equalsIgnoreCase(str)) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }
}
