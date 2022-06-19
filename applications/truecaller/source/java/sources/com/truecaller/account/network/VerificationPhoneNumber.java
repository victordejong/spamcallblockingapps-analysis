package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/truecaller/account/network/VerificationPhoneNumber;", "", "", "countryCode", "Ljava/lang/String;", "getCountryCode", "()Ljava/lang/String;", "", RemoteMessageConst.Notification.PRIORITY, "I", "getPriority", "()I", "", "phoneNumber", "J", "getPhoneNumber", "()J", "<init>", "(JLjava/lang/String;I)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/VerificationPhoneNumber.class */
public final class VerificationPhoneNumber {
    private final String countryCode;
    private final long phoneNumber;
    private final int priority;

    public VerificationPhoneNumber(long j, String str, int i) {
        l.e(str, "countryCode");
        this.phoneNumber = j;
        this.countryCode = str;
        this.priority = i;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final long getPhoneNumber() {
        return this.phoneNumber;
    }

    public final int getPriority() {
        return this.priority;
    }
}
