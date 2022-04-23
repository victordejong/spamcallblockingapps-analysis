package io.grpc.internal;

import io.grpc.Status;
import p530d.p531a.C9260k0;
import p530d.p531a.p532v0.AbstractC9521w1;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/ClientStreamListener.class */
public interface ClientStreamListener extends AbstractC9521w1 {

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ClientStreamListener$RpcProgress.class */
    public enum RpcProgress {
        PROCESSED,
        REFUSED,
        DROPPED
    }

    /* renamed from: a */
    void mo575a(C9260k0 k0Var);

    /* renamed from: a */
    void mo574a(Status status, C9260k0 k0Var);

    /* renamed from: a */
    void mo573a(Status status, RpcProgress rpcProgress, C9260k0 k0Var);
}
