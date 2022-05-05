package p459j.p460a.p582w0;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import p459j.p460a.p582w0.p583a5.C13891a;
/* renamed from: j.a.w0.n4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/n4.class */
public class C14093n4 {

    /* renamed from: a */
    public static HashMap<String, Integer> f31563a = new HashMap<>();

    /* renamed from: b */
    public static HashMap<String, Integer> f31564b = new HashMap<>();

    /* renamed from: c */
    public static final List<String> f31565c = new ArrayList();

    /* renamed from: d */
    public static final HashMap<Integer, String[]> f31566d = new HashMap<>();

    static {
        HashMap<String, Integer> hashMap = f31563a;
        Integer valueOf = Integer.valueOf((int) R$string.SN_0);
        hashMap.put("+0", valueOf);
        f31563a.put("+2", Integer.valueOf((int) R$string.SN_2));
        HashMap<String, Integer> hashMap2 = f31563a;
        Integer valueOf2 = Integer.valueOf((int) R$string.SN_886);
        hashMap2.put("886", valueOf2);
        f31563a.put("+886", valueOf2);
        f31564b.put("+0", valueOf);
        f31564b.put("+2", Integer.valueOf((int) R$string.empty_space));
        f31565c.addAll(Arrays.asList("112", "128", "136", "153", "181", "190", "191", "192", "193", "194", "197", "198", "199", "911"));
        f31566d.put(8, new String[]{"300", "400"});
        f31566d.put(10, new String[]{"0300", "0303", "0500", "0800"});
        f31566d.put(11, new String[]{"0300", "0303", "0500", "0800", "0900"});
    }

    /* renamed from: a */
    public static String m2582a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m2581a(Context context, String str) {
        return (str.equals(m2582a((int) R$string.block_telemarketing)) || str.equals(m2582a((int) R$string.block_hk_financing)) || str.equals(m2582a((int) R$string.block_hk_telecom)) || str.equals(m2582a((int) R$string.block_hk_invest)) || str.equals(m2582a((int) R$string.block_hk_beauty)) || str.equals(m2582a((int) R$string.block_hk_consumer)) || str.equals(m2582a((int) R$string.block_hk_education)) || str.equals(m2582a((int) R$string.block_hk_insurance)) || str.equals(m2582a((int) R$string.block_hk_otherbusiness)) || str.equals(m2582a((int) R$string.block_hk_call))) ? "TELMARKETING" : str.equals(m2582a((int) R$string.block_customerservice)) ? "CALLCENTER" : (str.equals(m2582a((int) R$string.block_fraud)) || str.equals(m2582a((int) R$string.block_hk_fraud))) ? "FRAUD" : str.equals(m2582a((int) R$string.block_phishing)) ? "PHISHING" : str.equals(m2582a((int) R$string.block_adult_content_threats)) ? "ADULT" : str.equals(m2582a((int) R$string.block_illegal_threats)) ? "ILLEGAL" : str.equals(m2582a((int) R$string.block_others)) ? "OTHER" : (str.equals(m2582a((int) R$string.block_harassing)) || str.equals(m2582a((int) R$string.block_hk_harrassing))) ? "HARASSMENT" : "";
    }

    /* renamed from: a */
    public static String m2580a(Context context, String str, int i) {
        String str2 = "";
        if (str == null) {
            return "";
        }
        if (str.equals("TELMARKETING")) {
            if (i == 90) {
                return m2582a((int) R$string.block_hk_otherbusiness);
            }
            if (i == 95) {
                return m2582a((int) R$string.block_hk_call);
            }
            switch (i) {
                case 1:
                    return m2582a((int) R$string.block_hk_financing);
                case 2:
                    return m2582a((int) R$string.block_hk_telecom);
                case 3:
                    return m2582a((int) R$string.block_hk_invest);
                case 4:
                    return m2582a((int) R$string.block_hk_beauty);
                case 5:
                    return m2582a((int) R$string.block_hk_consumer);
                case 6:
                    return m2582a((int) R$string.block_hk_education);
                case 7:
                    return m2582a((int) R$string.block_hk_insurance);
                default:
                    return m2582a((int) R$string.block_telemarketing);
            }
        } else if (str.equals("CALLCENTER")) {
            return m2582a((int) R$string.block_customerservice);
        } else {
            if (str.equals("FRAUD")) {
                return i != 92 ? m2582a((int) R$string.block_fraud) : m2582a((int) R$string.block_hk_fraud);
            }
            if (str.equals("PHISHING")) {
                return m2582a((int) R$string.block_phishing);
            }
            if (str.equals("ADULT")) {
                return m2582a((int) R$string.block_adult_content_threats);
            }
            if (str.equals("ILLEGAL")) {
                return m2582a((int) R$string.block_illegal_threats);
            }
            if (str.equals("OTHER")) {
                return m2582a((int) R$string.block_others);
            }
            if (str.equals("HARASSMENT")) {
                if (i != 91) {
                    return m2582a((int) R$string.block_harassing);
                }
                str2 = m2582a((int) R$string.block_hk_harrassing);
            }
            return str2;
        }
    }

    @NonNull
    /* renamed from: a */
    public static String m2578a(@NonNull String str) {
        if (str.equals("TELMARKETING")) {
            return m2582a((int) R$string.calldialog_myreport_category_telemarketing);
        }
        if (str.equals("CALLCENTER")) {
            return m2582a((int) R$string.calldialog_myreport_category_customerservice);
        }
        if (str.equals("FRAUD")) {
            return m2582a((int) R$string.calldialog_myreport_category_fraud);
        }
        if (str.equals("HARASSMENT")) {
            return m2582a((int) R$string.calldialog_myreport_category_harassing);
        }
        if (str.equals("OTHER")) {
            return m2582a((int) R$string.calldialog_myreport_category_other);
        }
        String str2 = str;
        if ("HFB".equals(str)) {
            str2 = m2582a((int) R$string.topspam_HFB);
        }
        return str2;
    }

    /* renamed from: a */
    public static void m2579a(@NonNull RowInfo rowInfo, @NonNull String str) {
        rowInfo.m28226g().m28338d(!TextUtils.isEmpty(str) && m2569f(str));
    }

    /* renamed from: a */
    public static void m2577a(@NonNull String str, @NonNull NumberInfo numberInfo) {
        if (!TextUtils.isEmpty(str) && m2569f(str) && !C14108o4.m2475k(str)) {
            numberInfo.m28326g("FPN");
        } else if (!C14017g4.m2830F()) {
        } else {
            if (str.startsWith("+886204") || str.startsWith("+886509") || str.startsWith("+886209") || str.startsWith("+886203")) {
                numberInfo.m28326g("HPPN");
            }
        }
    }

    /* renamed from: b */
    public static int m2576b(Context context, String str) {
        if (str.equals(m2582a((int) R$string.block_hk_financing))) {
            return 1;
        }
        if (str.equals(m2582a((int) R$string.block_hk_telecom))) {
            return 2;
        }
        if (str.equals(m2582a((int) R$string.block_hk_invest))) {
            return 3;
        }
        if (str.equals(m2582a((int) R$string.block_hk_beauty))) {
            return 4;
        }
        if (str.equals(m2582a((int) R$string.block_hk_consumer))) {
            return 5;
        }
        if (str.equals(m2582a((int) R$string.block_hk_education))) {
            return 6;
        }
        if (str.equals(m2582a((int) R$string.block_hk_insurance))) {
            return 7;
        }
        if (str.equals(m2582a((int) R$string.block_hk_otherbusiness))) {
            return 90;
        }
        if (str.equals(m2582a((int) R$string.block_hk_fraud))) {
            return 92;
        }
        if (str.equals(m2582a((int) R$string.block_hk_harrassing))) {
            return 91;
        }
        return str.equals(m2582a((int) R$string.block_hk_call)) ? 95 : 0;
    }

    /* renamed from: b */
    public static String m2575b(@NonNull String str) {
        HashMap<String, Integer> hashMap = C14017g4.m2830F() ? f31563a : C14017g4.m2835A() ? f31564b : null;
        if (hashMap == null) {
            return null;
        }
        for (String str2 : hashMap.keySet()) {
            if (str.startsWith(str2)) {
                return str2;
            }
        }
        return null;
    }

    /* renamed from: c */
    public static int m2573c(@NonNull String str) {
        String b = m2575b(str);
        if (TextUtils.isEmpty(b)) {
            return 0;
        }
        if (C14017g4.m2830F()) {
            return f31563a.get(b).intValue();
        }
        if (C14017g4.m2835A()) {
            return f31564b.get(b).intValue();
        }
        return 0;
    }

    /* renamed from: c */
    public static String m2574c(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return "" + m2582a((int) R$string.topspam_OTHER);
        } else if (str.equals("HFB")) {
            return "" + m2582a((int) R$string.topspam_HFB);
        } else if (str.equals("TELMARKETING")) {
            return "" + m2582a((int) R$string.topspam_TELMARKETING);
        } else if (str.equals("CALLCENTER")) {
            return "" + m2582a((int) R$string.topspam_CALLCENTER);
        } else if (str.equals("FRAUD")) {
            return "" + m2582a((int) R$string.topspam_FRAUD);
        } else if (str.equals("HFD")) {
            return "" + m2582a((int) R$string.topspam_HFD);
        } else if (str.equals("HFSR") || str.equals("ONERING")) {
            return "" + m2582a((int) R$string.topspam_HFSR);
        } else if (str.equals("PHISHING")) {
            return "" + m2582a((int) R$string.topspam_PHISHING);
        } else if (str.equals("ADULT")) {
            return "" + m2582a((int) R$string.topspam_ADULT);
        } else if (str.equals("ILLEGAL")) {
            return "" + m2582a((int) R$string.topspam_ILLEGAL);
        } else if (str.equals("ADVERTISEMENT")) {
            return "" + m2582a((int) R$string.topspam_AD);
        } else if (str.equals("HARASSMENT")) {
            return "" + m2582a((int) R$string.topspam_HA);
        } else if (str.equals("OTHER")) {
            return "" + m2582a((int) R$string.topspam_OTHER);
        } else if (str.equals("FPN")) {
            return "" + m2582a((int) R$string.FPN);
        } else if (str.equals("HPPN")) {
            return "" + m2582a((int) R$string.HPPN);
        } else if (str.equals("TOP")) {
            return "" + m2582a((int) R$string.profile_offline_frenquent);
        } else if (str.equals("YPDB")) {
            return "" + m2582a((int) R$string.profile_offline_yp);
        } else {
            return "" + m2582a((int) R$string.topspam_OTHER);
        }
    }

    /* renamed from: d */
    public static String m2572d(Context context, String str) {
        String c = m2574c(context, str);
        if (str.equals("TELMARKETING")) {
            c = m2582a((int) R$string.topspam_SALES);
        }
        return c;
    }

    /* renamed from: d */
    public static boolean m2571d(@NonNull String str) {
        String[] strArr = f31566d.get(Integer.valueOf(str.length()));
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (m2571d(r3) != false) goto L_0x0021;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2570e(@androidx.annotation.NonNull java.lang.String r3) {
        /*
            boolean r0 = p459j.p460a.p582w0.C14017g4.m2835A()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            java.util.List<java.lang.String> r0 = p459j.p460a.p582w0.C14093n4.f31565c
            r1 = r3
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0021
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = m2571d(r0)
            if (r0 == 0) goto L_0x0023
        L_0x0021:
            r0 = 1
            r6 = r0
        L_0x0023:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14093n4.m2570e(java.lang.String):boolean");
    }

    /* renamed from: f */
    public static boolean m2569f(@NonNull String str) {
        return C13891a.m3146p() && !TextUtils.isEmpty(m2575b(str));
    }
}
