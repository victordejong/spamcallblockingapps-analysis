package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/PayloadType.class */
public enum PayloadType {
    message,
    event,
    device,
    sdk,
    app_release,
    sdk_and_app_release,
    person,
    logout,
    unknown,
    survey;

    public static PayloadType parse(String str) {
        try {
            return valueOf(str);
        } catch (IllegalArgumentException e) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.PAYLOADS;
            ApptentiveLog.m403v(apptentiveLogTag, "Error parsing unknown Payload.PayloadType: " + str, new Object[0]);
            return unknown;
        }
    }
}
