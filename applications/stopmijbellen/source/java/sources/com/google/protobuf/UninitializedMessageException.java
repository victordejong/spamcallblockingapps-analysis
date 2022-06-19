package com.google.protobuf;
/* loaded from: classes-dex2jar.jar:com/google/protobuf/UninitializedMessageException.class */
public class UninitializedMessageException extends RuntimeException {
    public UninitializedMessageException() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }
}
