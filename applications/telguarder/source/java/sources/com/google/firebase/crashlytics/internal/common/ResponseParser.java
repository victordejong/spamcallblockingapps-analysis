package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/ResponseParser.class */
public class ResponseParser {
    public static final int ResponseActionDiscard = 0;
    public static final int ResponseActionRetry = 1;

    public static int parse(int i) {
        if (i < 200 || i > 299) {
            if (i >= 300 && i <= 399) {
                return 1;
            }
            if (i >= 400 && i <= 499) {
                return 0;
            }
            if (i >= 500) {
            }
            return 1;
        }
        return 0;
    }
}
