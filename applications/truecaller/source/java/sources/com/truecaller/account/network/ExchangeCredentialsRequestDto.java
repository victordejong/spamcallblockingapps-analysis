package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/account/network/ExchangeCredentialsRequestDto;", "", "", "installationId", "Ljava/lang/String;", "getInstallationId", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/ExchangeCredentialsRequestDto.class */
public final class ExchangeCredentialsRequestDto {
    private final String installationId;

    public ExchangeCredentialsRequestDto(String str) {
        l.e(str, "installationId");
        this.installationId = str;
    }

    public final String getInstallationId() {
        return this.installationId;
    }
}
