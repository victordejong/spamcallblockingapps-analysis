package com.google.gson;
/* loaded from: classes-dex2jar.jar:com/google/gson/ExclusionStrategy.class */
public interface ExclusionStrategy {
    boolean shouldSkipClass(Class<?> cls);

    boolean shouldSkipField(FieldAttributes fieldAttributes);
}
