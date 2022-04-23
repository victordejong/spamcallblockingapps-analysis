package com.applovin.mediation.adapters;

import android.content.Context;
import android.os.Bundle;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinSdk;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/MediationAdapterBase.class */
public abstract class MediationAdapterBase implements MaxAdapter {
    public boolean alwaysRewardUser;
    public final C2374t mLogger;
    public final C2341l mSdk;
    public final String mTag = getClass().getSimpleName();
    public final AppLovinSdk mWrappingSdk;
    public MaxReward reward;

    public MediationAdapterBase(AppLovinSdk appLovinSdk) {
        this.mWrappingSdk = appLovinSdk;
        C2341l a = AbstractC2426r.m29811a(appLovinSdk);
        this.mSdk = a;
        this.mLogger = a.m30262d0();
    }

    public static String mediationTag() {
        return "AppLovinSdk_" + AppLovinSdk.VERSION;
    }

    public void checkActivities(Context context, Class<?>... clsArr) {
    }

    public void checkExistence(Class<?>... clsArr) {
        if (clsArr != null && clsArr.length > 0) {
            for (Class<?> cls : clsArr) {
                log("Found: " + cls.getName());
            }
        }
    }

    public void configureReward(MaxAdapterResponseParameters maxAdapterResponseParameters) {
        Bundle serverParameters = maxAdapterResponseParameters.getServerParameters();
        this.alwaysRewardUser = BundleUtils.getBoolean("always_reward_user", maxAdapterResponseParameters.isTesting(), serverParameters);
        int i = BundleUtils.getInt(AppLovinEventParameters.REVENUE_AMOUNT, 0, serverParameters);
        String string = BundleUtils.getString("currency", "", serverParameters);
        log("Creating reward: " + i + " " + string);
        this.reward = MaxReward.create(i, string);
    }

    /* renamed from: d */
    public void m18791d(String str) {
        this.mLogger.m30044b(this.mTag, str);
    }

    /* renamed from: e */
    public void m18790e(String str) {
        this.mLogger.m30039e(this.mTag, str);
    }

    /* renamed from: e */
    public void m18789e(String str, Throwable th) {
        this.mLogger.m30043b(this.mTag, str, th);
    }

    public MaxReward getReward() {
        MaxReward maxReward = this.reward;
        if (maxReward == null) {
            maxReward = MaxReward.createDefault();
        }
        return maxReward;
    }

    public String getVersionString(Class cls, String str) {
        String b = AbstractC2426r.m29785b(cls, str);
        if (b == null) {
            log("Failed to retrieve version string.");
        }
        return b;
    }

    public AppLovinSdk getWrappingSdk() {
        return this.mWrappingSdk;
    }

    /* renamed from: i */
    public void m18788i(String str) {
        this.mLogger.m30042c(this.mTag, str);
    }

    public void log(String str) {
        this.mLogger.m30042c(this.mTag, str);
    }

    public void log(String str, Throwable th) {
        this.mLogger.m30043b(this.mTag, str, th);
    }

    public boolean shouldAlwaysRewardUser() {
        return this.alwaysRewardUser;
    }

    /* renamed from: w */
    public void m18787w(String str) {
        this.mLogger.m30040d(this.mTag, str);
    }
}
