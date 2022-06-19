package com.mopub.common;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubReward.class */
public final class MoPubReward {
    public static final int DEFAULT_REWARD_AMOUNT = 0;
    public static final int NO_REWARD_AMOUNT = -123;
    public static final String NO_REWARD_LABEL = "";

    /* renamed from: a */
    private final boolean f58781a;

    /* renamed from: b */
    private final String f58782b;

    /* renamed from: c */
    private final int f58783c;

    private MoPubReward(boolean z, String str, int i) {
        this.f58781a = z;
        this.f58782b = str;
        this.f58783c = i < 0 ? 0 : i;
    }

    public static MoPubReward failure() {
        return new MoPubReward(false, "", 0);
    }

    public static MoPubReward success(String str, int i) {
        return new MoPubReward(true, str, i);
    }

    public final int getAmount() {
        return this.f58783c;
    }

    public final String getLabel() {
        return this.f58782b;
    }

    public final boolean isSuccessful() {
        return this.f58781a;
    }
}
