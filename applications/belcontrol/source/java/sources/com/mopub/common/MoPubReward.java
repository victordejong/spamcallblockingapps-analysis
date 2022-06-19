package com.mopub.common;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubReward.class */
public final class MoPubReward {
    public static final int DEFAULT_REWARD_AMOUNT = 0;
    public static final int NO_REWARD_AMOUNT = -123;
    public static final String NO_REWARD_LABEL = "";

    /* renamed from: a */
    public final boolean f4287a;

    /* renamed from: b */
    public final String f4288b;

    /* renamed from: c */
    public final int f4289c;

    public MoPubReward(boolean z, String str, int i) {
        this.f4287a = z;
        this.f4288b = str;
        this.f4289c = i < 0 ? 0 : i;
    }

    public static MoPubReward failure() {
        return new MoPubReward(false, "", 0);
    }

    public static MoPubReward success(String str, int i) {
        return new MoPubReward(true, str, i);
    }

    public final int getAmount() {
        return this.f4289c;
    }

    public final String getLabel() {
        return this.f4288b;
    }

    public final boolean isSuccessful() {
        return this.f4287a;
    }
}
