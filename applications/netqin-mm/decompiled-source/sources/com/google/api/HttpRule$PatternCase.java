package com.google.api;
/* loaded from: classes2-dex2jar.jar:com/google/api/HttpRule$PatternCase.class */
public enum HttpRule$PatternCase {
    GET(2),
    PUT(3),
    POST(4),
    DELETE(5),
    PATCH(6),
    CUSTOM(8),
    PATTERN_NOT_SET(0);
    
    public final int value;

    HttpRule$PatternCase(int i) {
        this.value = i;
    }

    public static HttpRule$PatternCase forNumber(int i) {
        if (i == 0) {
            return PATTERN_NOT_SET;
        }
        if (i == 8) {
            return CUSTOM;
        }
        if (i == 2) {
            return GET;
        }
        if (i == 3) {
            return PUT;
        }
        if (i == 4) {
            return POST;
        }
        if (i == 5) {
            return DELETE;
        }
        if (i != 6) {
            return null;
        }
        return PATCH;
    }

    @Deprecated
    public static HttpRule$PatternCase valueOf(int i) {
        return forNumber(i);
    }

    public int getNumber() {
        return this.value;
    }
}
