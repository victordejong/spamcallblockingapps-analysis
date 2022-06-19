package com.truecaller.attestation.data;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;", "", "", "requestId", "Ljava/lang/String;", "getRequestId", "()Ljava/lang/String;", "statement", "getStatement", "", "phoneNumber", "J", "getPhoneNumber", "()J", "<init>", "(Ljava/lang/String;Ljava/lang/String;J)V", "attestation_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/attestation/data/VerificationAttestationRequestDto.class */
public final class VerificationAttestationRequestDto {
    private final long phoneNumber;
    private final String requestId;
    private final String statement;

    public VerificationAttestationRequestDto(String str, String str2, long j) {
        l.e(str, "statement");
        l.e(str2, "requestId");
        this.statement = str;
        this.requestId = str2;
        this.phoneNumber = j;
    }

    public final long getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getStatement() {
        return this.statement;
    }
}
