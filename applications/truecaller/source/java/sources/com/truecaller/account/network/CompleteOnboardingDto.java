package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018��2\u00020\u0001B3\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/truecaller/account/network/CompleteOnboardingDto;", "", "", "countryCode", "Ljava/lang/String;", "getCountryCode", "()Ljava/lang/String;", "", "dialingCode", "Ljava/lang/Integer;", "getDialingCode", "()Ljava/lang/Integer;", "phoneNumber", "getPhoneNumber", "installationId", "getInstallationId", "requestId", "getRequestId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/CompleteOnboardingDto.class */
public final class CompleteOnboardingDto {
    private final String countryCode;
    private final Integer dialingCode;
    private final String installationId;
    private final String phoneNumber;
    private final String requestId;

    public CompleteOnboardingDto(String str, String str2, String str3, Integer num, String str4) {
        C22128a.m8703I0(str, "requestId", str2, "phoneNumber", str3, "countryCode");
        this.requestId = str;
        this.phoneNumber = str2;
        this.countryCode = str3;
        this.dialingCode = num;
        this.installationId = str4;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final Integer getDialingCode() {
        return this.dialingCode;
    }

    public final String getInstallationId() {
        return this.installationId;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getRequestId() {
        return this.requestId;
    }
}
