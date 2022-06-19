package com.freshchat.consumer.sdk.exception;

import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p057j.C1626as;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/exception/InvalidEventException.class */
public class InvalidEventException extends Exception {
    public InvalidEventException(String str, int i) {
        super(composeErrorMessage(str, i));
    }

    private static String composeErrorMessage(String str, int i) {
        String enumC1464c = EnumC1464c.USER_EVENT_NAME_KEY_LENGTH_ERROR.toString();
        if (C1626as.isEmpty(str)) {
            enumC1464c = EnumC1464c.USER_EVENT_NAME_KEY_EMPTY_ERROR.toString();
        }
        return enumC1464c.replace("{{user_event_key_placeholder}}", str).replace("{{user_event_name_length_placeholder}}", String.valueOf(i));
    }
}
