package com.privacystar.core.data.offender;

import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/PhoneEntry.class */
public class PhoneEntry {
    public static final long FLAG_DEBTCOLLECTOR = 128;
    public static final long FLAG_HOTLIST = 4;
    public static final long FLAG_ROBOCALLER = 8;
    public static final long FLAG_SCAMMER = 1;
    public static final long FLAG_TELEMARKETER = 64;
    public static final long FLAG_UNSET = -1;
    public static final long FLAG_WHITELIST = 2;
    private long value;

    public static boolean isDebtCollector(long j) {
        return matches(j, 128L);
    }

    public static boolean isHotlist(long j) {
        return matches(j, 4L);
    }

    public static boolean isOffender(long j) {
        return j > 0;
    }

    public static boolean isRedNumber(long j) {
        return matches(j, 5L);
    }

    public static boolean isRobocaller(long j) {
        return matches(j, 8L);
    }

    public static boolean isScammer(long j) {
        return matches(j, 1L);
    }

    public static boolean isTelemarketer(long j) {
        return matches(j, 64L);
    }

    public static boolean isWhiteListed(long j) {
        return matches(j, 2L);
    }

    public static boolean isYellowNumber(long j) {
        return isOffender(j) && !isHotlist(j);
    }

    public static boolean matches(long j, long j2) {
        return (j2 & j) > 0 && j != -1;
    }

    public static String offenderToString(long j) {
        if (isScammer(j)) {
            return PSApplication.context().getString(C1566R.string.offender_display_name_scammer);
        }
        if (isDebtCollector(j)) {
            return PSApplication.context().getString(C1566R.string.offender_display_name_account_services);
        }
        if (isTelemarketer(j)) {
            return PSApplication.context().getString(C1566R.string.offender_display_name_telemarketer);
        }
        Timber.m28v("Evaluated the value %d which is not mapped to a string.", Long.valueOf(j));
        return "";
    }
}
