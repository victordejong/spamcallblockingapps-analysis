package com.applovin.mediation.adapters;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.impl.mediation.MaxRewardImpl;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxNativeAdAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinSdk;
import java.io.InputStream;
import java.net.URL;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/MediationAdapterBase.class */
public abstract class MediationAdapterBase implements MaxAdapter, MaxInterstitialAdViewAdapter, MaxNativeAdAdapter, MaxRewardedAdViewAdapter {
    private static final ExecutorService sCachingExecutorService = Executors.newFixedThreadPool(4);
    private boolean alwaysRewardUser;
    private final C1479t mLogger;
    private final C1408l mSdk;
    private final String mTag = getClass().getSimpleName();
    private final AppLovinSdk mWrappingSdk;
    private MaxReward reward;

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/MediationAdapterBase$ExecutorServiceAdapter.class */
    public static class ExecutorServiceAdapter implements ExecutorService {
        private final Executor executor;

        private ExecutorServiceAdapter(Executor executor) {
            this.executor = executor;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return false;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.executor.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            throw new RuntimeException("Method not implemented, use 'execute'");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
            return null;
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
            throw new RuntimeException("Method not implemented, use 'execute'");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            throw new RuntimeException("Method not implemented, use 'execute'");
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return false;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return false;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            return null;
        }

        @Override // java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            throw new RuntimeException("Method not implemented, use 'execute'");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t) {
            throw new RuntimeException("Method not implemented, use 'execute'");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            throw new RuntimeException("Method not implemented, use 'execute'");
        }
    }

    public MediationAdapterBase(AppLovinSdk appLovinSdk) {
        this.mWrappingSdk = appLovinSdk;
        C1408l c1408l = appLovinSdk.coreSdk;
        this.mSdk = c1408l;
        this.mLogger = c1408l.m5542A();
    }

    public static String mediationTag() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinSdk_");
        m8752j.append(AppLovinSdk.VERSION);
        return m8752j.toString();
    }

    public void checkActivities(Context context, Class<?>... clsArr) {
    }

    public void checkExistence(Class<?>... clsArr) {
        if (clsArr == null || clsArr.length <= 0) {
            return;
        }
        for (Class<?> cls : clsArr) {
            StringBuilder m8752j = C0082b.m8752j("Found: ");
            m8752j.append(cls.getName());
            log(m8752j.toString());
        }
    }

    public void configureReward(MaxAdapterResponseParameters maxAdapterResponseParameters) {
        Bundle serverParameters = maxAdapterResponseParameters.getServerParameters();
        this.alwaysRewardUser = BundleUtils.getBoolean("always_reward_user", maxAdapterResponseParameters.isTesting(), serverParameters);
        int i = BundleUtils.getInt(AppLovinEventParameters.REVENUE_AMOUNT, 0, serverParameters);
        String string = BundleUtils.getString(AppLovinEventParameters.REVENUE_CURRENCY, "", serverParameters);
        log("Creating reward: " + i + " " + string);
        this.reward = MaxRewardImpl.create(i, string);
    }

    public Future<Drawable> createDrawableFuture(final String str, final Resources resources) {
        return getCachingExecutorService().submit(new Callable<Drawable>() { // from class: com.applovin.mediation.adapters.MediationAdapterBase.1
            @Override // java.util.concurrent.Callable
            public Drawable call() throws Exception {
                InputStream openStream = new URL(str).openStream();
                BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, BitmapFactory.decodeStream(openStream));
                openStream.close();
                return bitmapDrawable;
            }
        });
    }

    /* renamed from: d */
    public void m4888d(String str) {
        this.mLogger.m5116b(this.mTag, str);
    }

    /* renamed from: e */
    public void m4887e(String str) {
        this.mLogger.m5111e(this.mTag, str);
    }

    /* renamed from: e */
    public void m4886e(String str, Throwable th) {
        this.mLogger.m5115b(this.mTag, str, th);
    }

    public Context getApplicationContext() {
        return this.mSdk.m5532K();
    }

    public ExecutorService getCachingExecutorService() {
        return sCachingExecutorService;
    }

    public MaxReward getReward() {
        MaxReward maxReward = this.reward;
        if (maxReward == null) {
            maxReward = MaxRewardImpl.createDefault();
        }
        return maxReward;
    }

    public String getVersionString(Class cls, String str) {
        String string = Utils.getString(cls, str);
        if (string == null) {
            log("Failed to retrieve version string.");
        }
        return string;
    }

    public AppLovinSdk getWrappingSdk() {
        return this.mWrappingSdk;
    }

    /* renamed from: i */
    public void m4885i(String str) {
        this.mLogger.m5114c(this.mTag, str);
    }

    @Override // com.applovin.mediation.adapter.MaxAdapter
    public boolean isBeta() {
        return false;
    }

    public void loadNativeAd(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity, MaxNativeAdAdapterListener maxNativeAdAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("This adapter (");
        m8752j.append(getAdapterVersion());
        m8752j.append(") does not support native ads.");
        m4888d(m8752j.toString());
        maxNativeAdAdapterListener.onNativeAdLoadFailed(MaxAdapterError.INVALID_CONFIGURATION);
    }

    public void log(String str) {
        this.mLogger.m5114c(this.mTag, str);
    }

    public void log(String str, Throwable th) {
        this.mLogger.m5115b(this.mTag, str, th);
    }

    public boolean shouldAlwaysRewardUser() {
        return this.alwaysRewardUser;
    }

    public void showInterstitialAd(MaxAdapterResponseParameters maxAdapterResponseParameters, ViewGroup viewGroup, AbstractC0516f abstractC0516f, Activity activity, MaxInterstitialAdapterListener maxInterstitialAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("This adapter (");
        m8752j.append(getAdapterVersion());
        m8752j.append(") does not support interstitial ad view ads.");
        m4888d(m8752j.toString());
        maxInterstitialAdapterListener.onInterstitialAdDisplayFailed(MaxAdapterError.INVALID_CONFIGURATION);
    }

    public void showRewardedAd(MaxAdapterResponseParameters maxAdapterResponseParameters, ViewGroup viewGroup, AbstractC0516f abstractC0516f, Activity activity, MaxRewardedAdapterListener maxRewardedAdapterListener) {
        StringBuilder m8752j = C0082b.m8752j("This adapter (");
        m8752j.append(getAdapterVersion());
        m8752j.append(") does not support rewarded ad view ads.");
        m4888d(m8752j.toString());
        maxRewardedAdapterListener.onRewardedAdDisplayFailed(MaxAdapterError.INVALID_CONFIGURATION);
    }

    public void userError(String str) {
        userError(str, null);
    }

    public void userError(String str, Throwable th) {
        C1479t.m5113c(this.mTag, str, th);
    }

    /* renamed from: w */
    public void m4884w(String str) {
        this.mLogger.m5112d(this.mTag, str);
    }
}
