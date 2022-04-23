package com.mopub.common;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubReward.class */
public final class MoPubReward {
    public static final int DEFAULT_REWARD_AMOUNT = 0;
    public static final int NO_REWARD_AMOUNT = -123;
    public static final String NO_REWARD_LABEL = "";

    /* renamed from: a */
    public final boolean f33770a;

    /* renamed from: b */
    public final String f33771b;

    /* renamed from: c */
    public final int f33772c;

    public MoPubReward(boolean z, String str, int i) {
        this.f33770a = z;
        this.f33771b = str;
        this.f33772c = i;
    }

    public static MoPubReward failure() {
        return new MoPubReward(false, "", 0);
    }

    public static MoPubReward success(String str, int i) {
        return new MoPubReward(true, str, i);
    }

    public final int getAmount() {
        return this.f33772c;
    }

    public final String getLabel() {
        return this.f33771b;
    }

    public final boolean isSuccessful() {
        return this.f33770a;
    }
}
