package com.google.protobuf;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/MutabilityOracle.class */
public interface MutabilityOracle {
    public static final MutabilityOracle IMMUTABLE = new 1();

    void ensureMutable();
}
