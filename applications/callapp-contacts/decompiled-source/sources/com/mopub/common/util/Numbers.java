package com.mopub.common.util;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Numbers.class */
public class Numbers {
    private Numbers() {
    }

    public static long convertMillisecondsToSecondsRoundedUp(long j) {
        return Math.round(Math.ceil(((float) j) / 1000.0f));
    }

    public static Double parseDouble(Object obj) throws ClassCastException {
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                throw new ClassCastException("Unable to parse " + obj + " as double.");
            }
        } else {
            throw new ClassCastException("Unable to parse " + obj + " as double.");
        }
    }
}
