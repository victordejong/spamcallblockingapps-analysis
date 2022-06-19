package com.google.type;
/* loaded from: classes-dex2jar.jar:com/google/type/DateTime$TimeOffsetCase.class */
public enum DateTime$TimeOffsetCase {
    UTC_OFFSET(8),
    TIME_ZONE(9),
    TIMEOFFSET_NOT_SET(0);
    
    private final int value;

    DateTime$TimeOffsetCase(int i) {
        this.value = i;
    }

    public static DateTime$TimeOffsetCase forNumber(int i) {
        if (i != 0) {
            if (i == 8) {
                return UTC_OFFSET;
            }
            if (i == 9) {
                return TIME_ZONE;
            }
            return null;
        }
        return TIMEOFFSET_NOT_SET;
    }

    @Deprecated
    public static DateTime$TimeOffsetCase valueOf(int i) {
        return forNumber(i);
    }

    public int getNumber() {
        return this.value;
    }
}
