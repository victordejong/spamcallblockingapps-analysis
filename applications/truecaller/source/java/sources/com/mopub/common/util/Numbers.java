package com.mopub.common.util;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Numbers.class */
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
        if (!(obj instanceof String)) {
            throw new ClassCastException(C22128a.m8547y2("Unable to parse ", obj, " as double."));
        }
        try {
            return Double.valueOf((String) obj);
        } catch (NumberFormatException e) {
            throw new ClassCastException(C22128a.m8547y2("Unable to parse ", obj, " as double."));
        }
    }
}
