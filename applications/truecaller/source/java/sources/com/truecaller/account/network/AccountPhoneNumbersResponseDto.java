package com.truecaller.account.network;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\b\u0010\tR\u001f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/truecaller/account/network/AccountPhoneNumbersResponseDto;", "", "", "Lcom/truecaller/account/network/AccountPhoneNumberDto;", "phones", "Ljava/util/List;", "getPhones", "()Ljava/util/List;", "<init>", "(Ljava/util/List;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/AccountPhoneNumbersResponseDto.class */
public final class AccountPhoneNumbersResponseDto {
    private final List<AccountPhoneNumberDto> phones;

    public AccountPhoneNumbersResponseDto(List<AccountPhoneNumberDto> list) {
        l.e(list, "phones");
        this.phones = list;
    }

    public final List<AccountPhoneNumberDto> getPhones() {
        return this.phones;
    }
}
