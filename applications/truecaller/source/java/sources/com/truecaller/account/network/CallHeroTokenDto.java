package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/truecaller/account/network/CallHeroTokenDto;", "", "", "ttlInSeconds", "J", "getTtlInSeconds", "()J", "", AnalyticsConstants.TOKEN, "Ljava/lang/String;", "getToken", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;J)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/CallHeroTokenDto.class */
public final class CallHeroTokenDto {
    private final String token;
    private final long ttlInSeconds;

    public CallHeroTokenDto(String str, long j) {
        l.e(str, AnalyticsConstants.TOKEN);
        this.token = str;
        this.ttlInSeconds = j;
    }

    public final String getToken() {
        return this.token;
    }

    public final long getTtlInSeconds() {
        return this.ttlInSeconds;
    }
}
