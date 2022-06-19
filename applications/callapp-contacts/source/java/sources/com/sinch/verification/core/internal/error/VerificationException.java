package com.sinch.verification.core.internal.error;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m4298d2 = {"Lcom/sinch/verification/core/internal/error/VerificationException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "message", "", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/VerificationException.class */
public final class VerificationException extends Exception {
    private final String message;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerificationException(String message) {
        super(message);
        C18524p.m3841c(message, "message");
        this.message = message;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.message;
    }
}
