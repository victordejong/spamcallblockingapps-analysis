package com.callapp.framework.util;

import com.callapp.framework.phone.Phone;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/util/NameValidationUtils.class */
public class NameValidationUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f17107a;

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f17108b;

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f17109c;

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f17110d;
    private static final String[] e = {"PHONE CELL", "CELL PHONE"};
    private static final Set<String> f;

    static {
        String[] strArr = {"ALABAMA", "ALASKA", "ARIZONA", "ARKANSAS", "CALIFORNIA", "COLORADO", "CONNECTICUT", "DELAWARE", "FLORIDA", "GEORGIA", "HAWAII", "IDAHO", "ILLINOIS", "INDIANA", "IOWA", "KANSAS", "KENTUCKY", "LOUISIANA", "MAINE", "MARYLAND", "MASSACHUSETTS", "MICHIGAN", "MINNESOTA", "MISSISSIPPI", "MISSOURI", "MONTANA", "NEBRASKA", "NEVADA", "NEW HAMPSHIRE", "NEW JERSEY", "NEW MEXICO", "NEW YORK", "NORTH CAROLINA", "NORTH DAKOTA", "OHIO", "OKLAHOMA", "OREGON", "PENNSYLVANIA", "RHODE ISLAND", "SOUTH CAROLINA", "SOUTH DAKOTA", "TENNESSEE", "TEXAS", "UTAH", "VERMONT", "VIRGINIA", "WASHINGTON", "WEST VIRGINIA", "WISCONSIN", "WYOMING"};
        f17107a = strArr;
        String[] strArr2 = {" AL", " AK", " AZ", " AR", " CA", " CO", " CT", " DE", " DC", " FL", " GA", " HI", " ID", " IL", " IN", " IA", "KS", " KY", " LA", " ME", " MD", " MA", " MI", " MN", " MS", " MO", " MT", " NE", " NV", " NH", " NJ", " NM", " NY", " NC", " ND", " OH", " OK", " OR", " PA", "RI", " SC", " SD", " TN", " TX", " UT", " VT", " VA", " WA", " WV", " WI", " WY", " AS", " GU", " MP", " PR", " VI", " FM", " MH", " PW", " AA", " AE", " AP"};
        f17108b = strArr2;
        HashSet hashSet = new HashSet();
        f17109c = hashSet;
        String[] strArr3 = {"WIRELESS CALLER", "UNAVAILABLE", "CALLER UNKNOWN", "OFFICE", "SERVICE 800"};
        f17110d = strArr3;
        HashSet hashSet2 = new HashSet();
        f = hashSet2;
        hashSet.addAll(Arrays.asList(strArr2));
        hashSet2.addAll(Arrays.asList(strArr));
        hashSet2.addAll(Arrays.asList(strArr3));
    }

    public static boolean a(String str) {
        return StringUtils.b((CharSequence) str) && !StringUtils.g(str, "sent you a") && !StringUtils.g(str, "shared a") && !StringUtils.g(str, "joined telegram") && !StringUtils.g(str, "a new message") && !StringUtils.g(str, "tienes un nuevo") && !StringUtils.g(str, "te envió un") && !StringUtils.g(str, "قام بالتسجيل في تيليجرام") && !StringUtils.g(str, "قام بإرسال");
    }

    public static boolean b(String str) {
        if (!StringUtils.b((CharSequence) str) || StringUtils.g(str, "Phone Owner") || StringUtils.g(str, "Phone Statistics") || StringUtils.g(str, "Background report for owner") || StringUtils.g(str, "Owner Details")) {
            return false;
        }
        StringBuilder sb = new StringBuilder("+");
        sb.append(str.replace(VerificationLanguage.REGION_PREFIX, ""));
        return !Phone.b(sb.toString()).isValid();
    }
}
