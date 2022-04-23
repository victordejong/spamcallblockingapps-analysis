package com.applovin.mediation;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxReward.class */
public class MaxReward {
    public static final int DEFAULT_AMOUNT = 0;
    public static final String DEFAULT_LABEL = "";

    /* renamed from: a */
    public final String f21816a;

    /* renamed from: b */
    public final int f21817b;

    public MaxReward(int i, String str) {
        if (i >= 0) {
            this.f21816a = str;
            this.f21817b = i;
            return;
        }
        throw new IllegalArgumentException("Reward amount must be greater than or equal to 0");
    }

    public static MaxReward create(int i, String str) {
        return new MaxReward(i, str);
    }

    public static MaxReward createDefault() {
        return create(0, "");
    }

    public final int getAmount() {
        return this.f21817b;
    }

    public final String getLabel() {
        return this.f21816a;
    }

    public String toString() {
        return "MaxReward{amount=" + this.f21817b + ", label='" + this.f21816a + "'}";
    }
}
