package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B;\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR\u0019\u0010\u000e\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000bR\u0019\u0010\u0010\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0011\u0010\u000bR\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/truecaller/account/network/VerifyTokenRequestDto;", "", "Lcom/truecaller/account/network/SimDto;", "verifiedSim", "Lcom/truecaller/account/network/SimDto;", "getVerifiedSim", "()Lcom/truecaller/account/network/SimDto;", "", "requestId", "Ljava/lang/String;", "getRequestId", "()Ljava/lang/String;", "countryCode", "getCountryCode", AnalyticsConstants.TOKEN, "getToken", "phoneNumber", "getPhoneNumber", "", "dialingCode", "Ljava/lang/Integer;", "getDialingCode", "()Ljava/lang/Integer;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/truecaller/account/network/SimDto;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/VerifyTokenRequestDto.class */
public final class VerifyTokenRequestDto {
    private final String countryCode;
    private final Integer dialingCode;
    private final String phoneNumber;
    private final String requestId;
    private final String token;
    private final SimDto verifiedSim;

    public VerifyTokenRequestDto(String str, String str2, String str3, Integer num, String str4, SimDto simDto) {
        C22128a.m8699J0(str, "requestId", str2, "phoneNumber", str3, "countryCode", str4, AnalyticsConstants.TOKEN);
        this.requestId = str;
        this.phoneNumber = str2;
        this.countryCode = str3;
        this.dialingCode = num;
        this.token = str4;
        this.verifiedSim = simDto;
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

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getToken() {
        return this.token;
    }

    public final SimDto getVerifiedSim() {
        return this.verifiedSim;
    }
}
