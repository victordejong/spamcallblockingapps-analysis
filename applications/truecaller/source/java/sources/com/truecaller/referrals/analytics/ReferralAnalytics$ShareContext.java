package com.truecaller.referrals.analytics;

import com.truecaller.account.network.TokenResponseDto;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "WHATSAPP", "SMS", "OTHER", "referral_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/referrals/analytics/ReferralAnalytics$ShareContext.class */
public enum ReferralAnalytics$ShareContext {
    WHATSAPP("whatsapp"),
    SMS(TokenResponseDto.METHOD_SMS),
    OTHER("other");
    
    private final String value;

    ReferralAnalytics$ShareContext(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
