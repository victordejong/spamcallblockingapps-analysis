package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.util.AWSRequestMetrics;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/handlers/RequestHandler2Adaptor.class */
public final class RequestHandler2Adaptor extends RequestHandler2 {

    /* renamed from: a */
    private final RequestHandler f12049a;

    public RequestHandler2Adaptor(RequestHandler requestHandler) {
        if (requestHandler != null) {
            this.f12049a = requestHandler;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: a */
    public final void mo38633a(Request<?> request, Response<?> response) {
        AWSRequestMetrics mo38700k = request == null ? null : request.mo38700k();
        if (mo38700k != null) {
            mo38700k.m38282a();
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RequestHandler2Adaptor)) {
            return false;
        }
        return this.f12049a.equals(((RequestHandler2Adaptor) obj).f12049a);
    }

    public final int hashCode() {
        return this.f12049a.hashCode();
    }
}
