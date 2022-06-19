package com.callapp.framework.util;

import com.callapp.framework.phone.Phone;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/util/NameValidationUtils.class */
public class NameValidationUtils {

    /* renamed from: a */
    private static final String[] f29688a;

    /* renamed from: b */
    private static final String[] f29689b;

    /* renamed from: c */
    private static final Set<String> f29690c;

    /* renamed from: d */
    private static final String[] f29691d;

    /* renamed from: e */
    private static final String[] f29692e = {"PHONE CELL", "CELL PHONE"};

    /* renamed from: f */
    private static final Set<String> f29693f;

    static {
        String[] strArr = {"ALABAMA", "ALASKA", "ARIZONA", "ARKANSAS", "CALIFORNIA", "COLORADO", "CONNECTICUT", "DELAWARE", "FLORIDA", "GEORGIA", "HAWAII", "IDAHO", "ILLINOIS", "INDIANA", "IOWA", "KANSAS", "KENTUCKY", "LOUISIANA", "MAINE", "MARYLAND", "MASSACHUSETTS", "MICHIGAN", "MINNESOTA", "MISSISSIPPI", "MISSOURI", "MONTANA", "NEBRASKA", "NEVADA", "NEW HAMPSHIRE", "NEW JERSEY", "NEW MEXICO", "NEW YORK", "NORTH CAROLINA", "NORTH DAKOTA", "OHIO", "OKLAHOMA", "OREGON", "PENNSYLVANIA", "RHODE ISLAND", "SOUTH CAROLINA", "SOUTH DAKOTA", "TENNESSEE", "TEXAS", "UTAH", "VERMONT", "VIRGINIA", "WASHINGTON", "WEST VIRGINIA", "WISCONSIN", "WYOMING"};
        f29688a = strArr;
        String[] strArr2 = {" AL", " AK", " AZ", " AR", " CA", " CO", " CT", " DE", " DC", " FL", " GA", " HI", " ID", " IL", " IN", " IA", "KS", " KY", " LA", " ME", " MD", " MA", " MI", " MN", " MS", " MO", " MT", " NE", " NV", " NH", " NJ", " NM", " NY", " NC", " ND", " OH", " OK", " OR", " PA", "RI", " SC", " SD", " TN", " TX", " UT", " VT", " VA", " WA", " WV", " WI", " WY", " AS", " GU", " MP", " PR", " VI", " FM", " MH", " PW", " AA", " AE", " AP"};
        f29689b = strArr2;
        HashSet hashSet = new HashSet();
        f29690c = hashSet;
        String[] strArr3 = {"WIRELESS CALLER", "UNAVAILABLE", "CALLER UNKNOWN", "OFFICE", "SERVICE 800"};
        f29691d = strArr3;
        HashSet hashSet2 = new HashSet();
        f29693f = hashSet2;
        hashSet.addAll(Arrays.asList(strArr2));
        hashSet2.addAll(Arrays.asList(strArr));
        hashSet2.addAll(Arrays.asList(strArr3));
    }

    /* renamed from: a */
    public static boolean m26064a(String str) {
        return StringUtils.m26045b((CharSequence) str) && !StringUtils.m26025g(str, "sent you a") && !StringUtils.m26025g(str, "shared a") && !StringUtils.m26025g(str, "joined telegram") && !StringUtils.m26025g(str, "a new message") && !StringUtils.m26025g(str, "tienes un nuevo") && !StringUtils.m26025g(str, "te envió un") && !StringUtils.m26025g(str, "قام بالتسجيل في تيليجرام") && !StringUtils.m26025g(str, "قام بإرسال");
    }

    /* renamed from: b */
    public static boolean m26063b(String str) {
        if (!StringUtils.m26045b((CharSequence) str) || StringUtils.m26025g(str, "Phone Owner") || StringUtils.m26025g(str, "Phone Statistics") || StringUtils.m26025g(str, "Background report for owner") || StringUtils.m26025g(str, "Owner Details")) {
            return false;
        }
        StringBuilder sb = new StringBuilder("+");
        sb.append(str.replace(VerificationLanguage.REGION_PREFIX, ""));
        return !Phone.m26093b(sb.toString()).isValid();
    }
}
