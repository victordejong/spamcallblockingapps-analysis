package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;", "", "", "tcToken", "Ljava/lang/String;", "getTcToken", "()Ljava/lang/String;", "", AnalyticsConstants.TIMEZONE, "J", "getTimezone", "()J", "carrierName", "getCarrierName", "<init>", "(Ljava/lang/String;Ljava/lang/String;J)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/SignupTcRequestDto.class */
public final class SignupTcRequestDto {
    private final String carrierName;
    @b("TCToken")
    private final String tcToken;
    private final long timezone;

    public SignupTcRequestDto(String str, String str2, long j) {
        l.e(str, "tcToken");
        this.tcToken = str;
        this.carrierName = str2;
        this.timezone = j;
    }

    public final String getCarrierName() {
        return this.carrierName;
    }

    public final String getTcToken() {
        return this.tcToken;
    }

    public final long getTimezone() {
        return this.timezone;
    }
}
