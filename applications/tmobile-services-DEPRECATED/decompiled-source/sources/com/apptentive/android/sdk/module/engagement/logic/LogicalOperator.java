package com.apptentive.android.sdk.module.engagement.logic;

import com.apptentive.android.sdk.debug.ErrorMetrics;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/LogicalOperator.class */
public enum LogicalOperator {
    $and,
    $or,
    $not,
    unknown;

    public static LogicalOperator parse(String str) {
        if (str != null) {
            try {
                return valueOf(str.trim());
            } catch (IllegalArgumentException e) {
                ErrorMetrics.logException(e);
            }
        }
        return unknown;
    }
}
