package com.privacystar.core.data.offender;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/CategoryIdUtil.class */
public class CategoryIdUtil {
    public static final int CHARITY = 9;
    public static final int DEBT_COLLECTION = 1;
    public static final int MARKET_RESEARCH = 12;
    public static final int POLITICAL = 11;
    public static final int SCAMMER = 5;
    public static final int TELEMARKETING = 14;

    public static boolean isOffender(int i) {
        return i > 0;
    }

    public static boolean isRedNumber(int i) {
        return i == 5;
    }

    public static boolean isYellowNumber(int i) {
        return i > 0 && !isRedNumber(i);
    }
}
