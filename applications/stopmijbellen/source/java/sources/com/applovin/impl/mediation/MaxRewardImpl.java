package com.applovin.impl.mediation;

import com.applovin.mediation.MaxReward;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxRewardImpl.class */
public class MaxRewardImpl implements MaxReward {

    /* renamed from: a */
    private final String f3761a;

    /* renamed from: b */
    private final int f3762b;

    private MaxRewardImpl(int i, String str) {
        if (i >= 0) {
            this.f3761a = str;
            this.f3762b = i;
            return;
        }
        throw new IllegalArgumentException("Reward amount must be greater than or equal to 0");
    }

    public static MaxReward create(int i, String str) {
        return new MaxRewardImpl(i, str);
    }

    public static MaxReward createDefault() {
        return create(0, "");
    }

    @Override // com.applovin.mediation.MaxReward
    public final int getAmount() {
        return this.f3762b;
    }

    @Override // com.applovin.mediation.MaxReward
    public final String getLabel() {
        return this.f3761a;
    }

    public String toString() {
        return "MaxReward{}";
    }
}
