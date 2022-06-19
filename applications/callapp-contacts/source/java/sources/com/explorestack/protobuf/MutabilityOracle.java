package com.explorestack.protobuf;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MutabilityOracle.class */
interface MutabilityOracle {
    public static final MutabilityOracle IMMUTABLE = new MutabilityOracle() { // from class: com.explorestack.protobuf.MutabilityOracle.1
        @Override // com.explorestack.protobuf.MutabilityOracle
        public final void ensureMutable() {
            throw new UnsupportedOperationException();
        }
    };

    void ensureMutable();
}
