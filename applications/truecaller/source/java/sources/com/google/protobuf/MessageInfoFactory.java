package com.google.protobuf;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/MessageInfoFactory.class */
public interface MessageInfoFactory {
    boolean isSupported(Class<?> cls);

    MessageInfo messageInfoFor(Class<?> cls);
}
