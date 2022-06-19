package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u0001B)\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001b\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u000e\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;", "", "", "countryCode", "Ljava/lang/String;", "getCountryCode", "()Ljava/lang/String;", "phoneNumber", "getPhoneNumber", "", "dialingCode", "Ljava/lang/Integer;", "getDialingCode", "()Ljava/lang/Integer;", "sequenceNo", "I", "getSequenceNo", "()I", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/AddSecondaryNumberRequestDto.class */
public final class AddSecondaryNumberRequestDto {
    private final String countryCode;
    private final Integer dialingCode;
    private final String phoneNumber;
    private final int sequenceNo;

    public AddSecondaryNumberRequestDto(String str, String str2, Integer num, int i) {
        l.e(str, "phoneNumber");
        l.e(str2, "countryCode");
        this.phoneNumber = str;
        this.countryCode = str2;
        this.dialingCode = num;
        this.sequenceNo = i;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final Integer getDialingCode() {
        return this.dialingCode;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final int getSequenceNo() {
        return this.sequenceNo;
    }
}
