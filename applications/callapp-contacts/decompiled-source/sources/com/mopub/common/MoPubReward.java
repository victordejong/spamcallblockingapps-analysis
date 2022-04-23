package com.mopub.common;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubReward.class */
public final class MoPubReward {
    public static final int DEFAULT_REWARD_AMOUNT = 0;
    public static final int NO_REWARD_AMOUNT = -123;
    public static final String NO_REWARD_LABEL = "";

    /* renamed from: a  reason: collision with root package name */
    private final boolean f33855a;

    /* renamed from: b  reason: collision with root package name */
    private final String f33856b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33857c;

    private MoPubReward(boolean z, String str, int i) {
        this.f33855a = z;
        this.f33856b = str;
        this.f33857c = i < 0 ? 0 : i;
    }

    public static MoPubReward failure() {
        return new MoPubReward(false, "", 0);
    }

    public static MoPubReward success(String str, int i) {
        return new MoPubReward(true, str, i);
    }

    public final int getAmount() {
        return this.f33857c;
    }

    public final String getLabel() {
        return this.f33856b;
    }

    public final boolean isSuccessful() {
        return this.f33855a;
    }
}
