package io.grpc.stub;

import io.grpc.stub.ClientCalls;
/* loaded from: classes2-dex2jar.jar:io/grpc/stub/InternalClientCalls$StubType.class */
public enum InternalClientCalls$StubType {
    BLOCKING(ClientCalls.StubType.BLOCKING),
    ASYNC(ClientCalls.StubType.ASYNC),
    FUTURE(ClientCalls.StubType.FUTURE);
    
    public final ClientCalls.StubType internalType;

    InternalClientCalls$StubType(ClientCalls.StubType stubType) {
        this.internalType = stubType;
    }

    /* renamed from: of */
    public static InternalClientCalls$StubType m269of(ClientCalls.StubType stubType) {
        InternalClientCalls$StubType[] values;
        for (InternalClientCalls$StubType internalClientCalls$StubType : values()) {
            if (internalClientCalls$StubType.internalType == stubType) {
                return internalClientCalls$StubType;
            }
        }
        throw new AssertionError("Unknown StubType: " + stubType.name());
    }
}
