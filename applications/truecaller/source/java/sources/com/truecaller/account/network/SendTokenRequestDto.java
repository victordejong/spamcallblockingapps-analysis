package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018�� \u001b2\u00020\u0001:\u0001\u001cB9\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0019\u0010\u001aR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, d2 = {"Lcom/truecaller/account/network/SendTokenRequestDto;", "", "", "region", "Ljava/lang/String;", "getRegion", "()Ljava/lang/String;", "Lcom/truecaller/account/network/InstallationDetailsDto;", "installationDetails", "Lcom/truecaller/account/network/InstallationDetailsDto;", "getInstallationDetails", "()Lcom/truecaller/account/network/InstallationDetailsDto;", "phoneNumber", "getPhoneNumber", "countryCode", "getCountryCode", "", "dialingCode", "Ljava/lang/Integer;", "getDialingCode", "()Ljava/lang/Integer;", "sequenceNo", "I", "getSequenceNo", "()I", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/truecaller/account/network/InstallationDetailsDto;)V", "Companion", "a", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/SendTokenRequestDto.class */
public final class SendTokenRequestDto {
    public static final C2773a Companion = new C2773a(null);
    public static final String PRIVACY_REGION_1 = "region-1";
    public static final String PRIVACY_REGION_BR = "region-br";
    public static final String PRIVACY_REGION_C = "region-c";
    public static final String PRIVACY_REGION_ROW = "region-2";
    public static final String PRIVACY_REGION_ZA = "region-za";
    private final String countryCode;
    private final Integer dialingCode;
    private final InstallationDetailsDto installationDetails;
    private final String phoneNumber;
    private final String region;
    private final int sequenceNo;

    /* renamed from: com.truecaller.account.network.SendTokenRequestDto$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/SendTokenRequestDto$a.class */
    public static final class C2773a {
        public C2773a(f fVar) {
        }
    }

    public SendTokenRequestDto(String str, String str2, Integer num, int i, String str3, InstallationDetailsDto installationDetailsDto) {
        l.e(str, "phoneNumber");
        l.e(str2, "countryCode");
        l.e(str3, "region");
        l.e(installationDetailsDto, "installationDetails");
        this.phoneNumber = str;
        this.countryCode = str2;
        this.dialingCode = num;
        this.sequenceNo = i;
        this.region = str3;
        this.installationDetails = installationDetailsDto;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final Integer getDialingCode() {
        return this.dialingCode;
    }

    public final InstallationDetailsDto getInstallationDetails() {
        return this.installationDetails;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getRegion() {
        return this.region;
    }

    public final int getSequenceNo() {
        return this.sequenceNo;
    }
}
