package com.privacystar.core.util;

import com.privacystar.core.data.offender.PhoneEntry;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallerCategoryUtil.class */
public class CallerCategoryUtil {
    public static int categoryIdFromBitValue(long j) {
        return PhoneEntry.isDebtCollector(j) ? 1 : PhoneEntry.isScammer(j) ? 5 : PhoneEntry.isTelemarketer(j) ? 14 : 0;
    }
}
