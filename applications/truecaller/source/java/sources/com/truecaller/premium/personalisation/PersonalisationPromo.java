package com.truecaller.premium.personalisation;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/premium/personalisation/PersonalisationPromo;", "", "", "remoteConfigValue", "Ljava/lang/String;", "getRemoteConfigValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "NO_PROMO", "PROMO_10", "PROMO_30", "PRICE_INCREASE_10", "premium_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/personalisation/PersonalisationPromo.class */
public enum PersonalisationPromo {
    NO_PROMO("no_promo"),
    PROMO_10("promo_10"),
    PROMO_30("promo_30"),
    PRICE_INCREASE_10("promo_10_plus");
    
    private final String remoteConfigValue;

    PersonalisationPromo(String str) {
        this.remoteConfigValue = str;
    }

    public final String getRemoteConfigValue() {
        return this.remoteConfigValue;
    }
}
