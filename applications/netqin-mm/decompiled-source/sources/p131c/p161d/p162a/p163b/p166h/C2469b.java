package p131c.p161d.p162a.p163b.p166h;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.ads.mediation.inmobi.InMobiAdapter;
import com.google.ads.mediation.inmobi.MandatoryParamException;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.inmobi.sdk.InMobiSdk;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
/* renamed from: c.d.a.b.h.b */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/b.class */
public class C2469b {
    /* renamed from: a */
    public static AdSize m29718a(Context context, AdSize adSize, ArrayList<AdSize> arrayList) {
        AdSize adSize2 = null;
        AdSize adSize3 = null;
        if (arrayList != null) {
            if (adSize != null) {
                float f = context.getResources().getDisplayMetrics().density;
                AdSize adSize4 = new AdSize(Math.round(adSize.m18132b(context) / f), Math.round(adSize.m18135a(context) / f));
                Iterator<AdSize> it = arrayList.iterator();
                while (true) {
                    adSize3 = adSize2;
                    if (!it.hasNext()) {
                        break;
                    }
                    AdSize next = it.next();
                    if (m29709b(adSize4, next)) {
                        adSize2 = adSize2 == null ? next : m29716a(adSize2, next);
                    }
                }
            } else {
                adSize3 = null;
            }
        }
        return adSize3;
    }

    /* renamed from: a */
    public static AdSize m29716a(AdSize adSize, AdSize adSize2) {
        if (adSize.m18133b() * adSize.m18137a() <= adSize2.m18133b() * adSize2.m18137a()) {
            adSize = adSize2;
        }
        return adSize;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static InMobiSdk.AgeGroup m29710a(String str) {
        char c;
        switch (str.hashCode()) {
            case -2144603857:
                if (str.equals("BETWEEN_55_AND_65")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1892470079:
                if (str.equals("ABOVE_65")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1873932011:
                if (str.equals("BELOW_18")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1017207884:
                if (str.equals("BETWEEN_25_AND_29")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -337149426:
                if (str.equals("BETWEEN_45_AND_54")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1346187892:
                if (str.equals("BETWEEN_30_AND_34")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1470305006:
                if (str.equals("BETWEEN_35_AND_44")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1723710283:
                if (str.equals("BETWEEN_18_AND_24")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return InMobiSdk.AgeGroup.ABOVE_65;
            case 1:
                return InMobiSdk.AgeGroup.BELOW_18;
            case 2:
                return InMobiSdk.AgeGroup.BETWEEN_18_AND_24;
            case 3:
                return InMobiSdk.AgeGroup.BETWEEN_25_AND_29;
            case 4:
                return InMobiSdk.AgeGroup.BETWEEN_30_AND_34;
            case 5:
                return InMobiSdk.AgeGroup.BETWEEN_35_AND_44;
            case 6:
                return InMobiSdk.AgeGroup.BETWEEN_45_AND_54;
            case 7:
                return InMobiSdk.AgeGroup.BETWEEN_55_AND_65;
            default:
                return null;
        }
    }

    /* renamed from: a */
    public static <T> T m29711a(T t, String str) throws MandatoryParamException {
        if (t != null && !t.toString().isEmpty()) {
            return t;
        }
        throw new MandatoryParamException("Mandatory param " + str + " not present");
    }

    /* renamed from: a */
    public static HashMap<String, String> m29715a(MediationAdConfiguration mediationAdConfiguration) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("tp", "c_admob");
        if (mediationAdConfiguration.m17938f() == 1) {
            hashMap.put("coppa", "1");
        } else {
            hashMap.put("coppa", "0");
        }
        return hashMap;
    }

    /* renamed from: a */
    public static HashMap<String, String> m29714a(MediationAdRequest mediationAdRequest) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("tp", "c_admob");
        if (mediationAdRequest.mo16533c() == 1) {
            hashMap.put("coppa", "1");
        } else {
            hashMap.put("coppa", "0");
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m29717a(Bundle bundle) {
        InMobiSdk.AgeGroup a;
        InMobiSdk.Education b;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            Log.d(InMobiAdapter.f21879m, "Bundle extras are null");
            bundle2 = new Bundle();
        }
        String str = "";
        String str2 = str;
        String str3 = str;
        for (String str4 : bundle2.keySet()) {
            String string = bundle2.getString(str4);
            if (str4.equals("AREA_CODE")) {
                if (!"".equals(string)) {
                    InMobiSdk.setAreaCode(string);
                }
            } else if (str4.equals("AGE")) {
                try {
                    if (!"".equals(string)) {
                        InMobiSdk.setAge(Integer.parseInt(string));
                    }
                } catch (NumberFormatException e) {
                    Log.d("Please Set age properly", e.getMessage());
                }
            } else if (str4.equals("POSTAL_CODE")) {
                if (!"".equals(string)) {
                    InMobiSdk.setPostalCode(string);
                }
            } else if (str4.equals("LANGUAGE")) {
                if (!"".equals(string)) {
                    InMobiSdk.setLanguage(string);
                }
            } else if (str4.equals("CITY")) {
                str = string;
            } else if (str4.equals("STATE")) {
                str3 = string;
            } else if (str4.equals("COUNTRY")) {
                str2 = string;
            } else if (str4.equals("AGE_GROUP")) {
                if (!(string == null || (a = m29710a(string)) == null)) {
                    InMobiSdk.setAgeGroup(a);
                }
            } else if (str4.equals("EDUCATION")) {
                if (!(string == null || (b = m29708b(string)) == null)) {
                    InMobiSdk.setEducation(b);
                }
            } else if (str4.equals("LOGLEVEL")) {
                if (string != null) {
                    InMobiSdk.setLogLevel(m29707c(string));
                } else {
                    InMobiSdk.setLogLevel(InMobiSdk.LogLevel.NONE);
                }
            } else if (str4.equals("INTERESTS")) {
                InMobiSdk.setInterests(string);
            }
        }
        if (!(Build.VERSION.SDK_INT < 19 || Objects.equals(str, "") || Objects.equals(str3, "") || Objects.equals(str2, ""))) {
            InMobiSdk.setLocationWithCityStateCountry(str, str3, str2);
        }
    }

    /* renamed from: a */
    public static void m29713a(MediationAdRequest mediationAdRequest, Bundle bundle) {
        m29717a(bundle);
        if (mediationAdRequest.mo16526j() != null) {
            InMobiSdk.setLocation(mediationAdRequest.mo16526j());
        }
        if (mediationAdRequest.mo16529g() != null) {
            Calendar instance = Calendar.getInstance();
            instance.setTime(mediationAdRequest.mo16529g());
            InMobiSdk.setYearOfBirth(instance.get(1));
        }
        if (mediationAdRequest.mo16524l() != -1) {
            int l = mediationAdRequest.mo16524l();
            if (l == 1) {
                InMobiSdk.setGender(InMobiSdk.Gender.MALE);
            } else if (l == 2) {
                InMobiSdk.setGender(InMobiSdk.Gender.FEMALE);
            }
        }
    }

    /* renamed from: a */
    public static void m29712a(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, Bundle bundle) {
        m29717a(bundle);
        if (mediationRewardedAdConfiguration.m17941c() != null) {
            InMobiSdk.setLocation(mediationRewardedAdConfiguration.m17941c());
        }
    }

    /* renamed from: b */
    public static InMobiSdk.Education m29708b(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -2023680018) {
            if (str.equals("EDUCATION_COLLEGEORGRADUATE")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 1302797304) {
            if (hashCode == 1522352361 && str.equals("EDUCATION_HIGHSCHOOLORLESS")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("EDUCATION_POSTGRADUATEORABOVE")) {
                c = 2;
            }
            c = 65535;
        }
        if (c == 0) {
            return InMobiSdk.Education.COLLEGE_OR_GRADUATE;
        }
        if (c == 1) {
            return InMobiSdk.Education.HIGH_SCHOOL_OR_LESS;
        }
        if (c != 2) {
            return null;
        }
        return InMobiSdk.Education.POST_GRADUATE_OR_ABOVE;
    }

    /* renamed from: b */
    public static boolean m29709b(AdSize adSize, AdSize adSize2) {
        if (adSize2 == null) {
            return false;
        }
        int b = adSize.m18133b();
        int b2 = adSize2.m18133b();
        int a = adSize.m18137a();
        int a2 = adSize2.m18137a();
        double d = b;
        Double.isNaN(d);
        if (d * 0.5d > b2 || b < b2) {
            return false;
        }
        double d2 = a;
        Double.isNaN(d2);
        return d2 * 0.7d <= ((double) a2) && a >= a2;
    }

    /* renamed from: c */
    public static InMobiSdk.LogLevel m29707c(String str) {
        return str.equals("LOGLEVEL_DEBUG") ? InMobiSdk.LogLevel.DEBUG : str.equals("LOGLEVEL_ERROR") ? InMobiSdk.LogLevel.ERROR : str.equals("LOGLEVEL_NONE") ? InMobiSdk.LogLevel.NONE : InMobiSdk.LogLevel.NONE;
    }
}
