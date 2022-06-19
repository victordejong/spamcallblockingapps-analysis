package com.truecaller.attestation.data;

import androidx.annotation.Keep;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import kotlin.Metadata;
import p193e.p194a.p1310v2.p1312w.AbstractC21008i;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/truecaller/attestation/data/VerificationAttestationErrorResponseDto;", "Le/a/v2/w/i;", "", "message", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "", UpdateKey.STATUS, "I", "getStatus", "()I", "<init>", "(ILjava/lang/String;)V", "attestation_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/attestation/data/VerificationAttestationErrorResponseDto.class */
public final class VerificationAttestationErrorResponseDto extends AbstractC21008i {
    private final String message;
    private final int status;

    public VerificationAttestationErrorResponseDto(int i, String str) {
        super(null);
        this.status = i;
        this.message = str;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getStatus() {
        return this.status;
    }
}
