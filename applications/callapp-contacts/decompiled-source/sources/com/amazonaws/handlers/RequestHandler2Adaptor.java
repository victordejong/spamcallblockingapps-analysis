package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.util.AWSRequestMetrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/handlers/RequestHandler2Adaptor.class */
final class RequestHandler2Adaptor extends RequestHandler2 {

    /* renamed from: a  reason: collision with root package name */
    private final RequestHandler f6606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestHandler2Adaptor(RequestHandler requestHandler) {
        if (requestHandler != null) {
            this.f6606a = requestHandler;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    public final void a(Request<?> request, Response<?> response) {
        AWSRequestMetrics k = request == null ? null : request.k();
        if (k != null) {
            k.a();
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RequestHandler2Adaptor)) {
            return false;
        }
        return this.f6606a.equals(((RequestHandler2Adaptor) obj).f6606a);
    }

    public final int hashCode() {
        return this.f6606a.hashCode();
    }
}
