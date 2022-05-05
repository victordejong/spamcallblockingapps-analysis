package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.internal.MatcherApi;
import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/ShortNumberInfo.class */
public class ShortNumberInfo {

    /* renamed from: a */
    private static final Set<String> f12379a;

    /* renamed from: com.google.i18n.phonenumbers.ShortNumberInfo$1 */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/ShortNumberInfo$1.class */
    static /* synthetic */ class C14871 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12380a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ShortNumberCost.values().length];
            f12380a = iArr;
            try {
                iArr[ShortNumberCost.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12380a[ShortNumberCost.UNKNOWN_COST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12380a[ShortNumberCost.STANDARD_RATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12380a[ShortNumberCost.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost.class */
    public enum ShortNumberCost {
        TOLL_FREE,
        STANDARD_RATE,
        PREMIUM_RATE,
        UNKNOWN_COST
    }

    static {
        Logger.getLogger(ShortNumberInfo.class.getName());
        new ShortNumberInfo(RegexBasedMatcher.m7871b());
        HashSet hashSet = new HashSet();
        f12379a = hashSet;
        hashSet.add("BR");
        f12379a.add("CL");
        f12379a.add("NI");
    }

    ShortNumberInfo(MatcherApi matcherApi) {
        CountryCodeToRegionCodeMap.m8092a();
    }
}
