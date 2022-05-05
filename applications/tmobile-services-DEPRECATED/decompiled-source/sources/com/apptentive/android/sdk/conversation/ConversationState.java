package com.apptentive.android.sdk.conversation;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationState.class */
public enum ConversationState {
    UNDEFINED,
    LEGACY_PENDING,
    ANONYMOUS_PENDING,
    ANONYMOUS,
    LOGGED_IN,
    LOGGED_OUT;

    public static ConversationState valueOf(byte b) {
        ConversationState[] values = values();
        return (b < 0 || b >= values.length) ? UNDEFINED : values[b];
    }
}
