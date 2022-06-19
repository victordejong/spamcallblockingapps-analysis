package com.facebook.referrals;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/referrals/ReferralResult.class */
public class ReferralResult {
    private final List<String> referralCodes;

    public ReferralResult(List<String> list) {
        this.referralCodes = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.referralCodes.equals(((ReferralResult) obj).referralCodes);
        }
        return false;
    }

    public List<String> getReferralCodes() {
        return Collections.unmodifiableList(this.referralCodes);
    }

    public int hashCode() {
        return this.referralCodes.hashCode();
    }
}
