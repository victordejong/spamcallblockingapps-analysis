package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;", "", "", "phoneNumber", "J", "getPhoneNumber", "()J", "<init>", "(J)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/DeleteSecondaryNumberRequestDto.class */
public final class DeleteSecondaryNumberRequestDto {
    private final long phoneNumber;

    public DeleteSecondaryNumberRequestDto(long j) {
        this.phoneNumber = j;
    }

    public final long getPhoneNumber() {
        return this.phoneNumber;
    }
}
