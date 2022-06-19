package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.CacheService;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastXmlManagerAggregator;
import com.mopub.mobileads.VideoDownloader;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastManager.class */
public class VastManager implements VastXmlManagerAggregator.AbstractC1117b {

    /* renamed from: a */
    public VastManagerListener f4832a;

    /* renamed from: b */
    public VastXmlManagerAggregator f4833b;

    /* renamed from: c */
    public String f4834c;

    /* renamed from: d */
    public double f4835d;

    /* renamed from: e */
    public int f4836e;

    /* renamed from: f */
    public final boolean f4837f;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastManager$VastManagerListener.class */
    public interface VastManagerListener {
        void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig);
    }

    /* renamed from: com.mopub.mobileads.VastManager$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastManager$a.class */
    public class C1106a implements VideoDownloader.AbstractC1118a {

        /* renamed from: a */
        public final /* synthetic */ VastVideoConfig f4838a;

        public C1106a(VastVideoConfig vastVideoConfig) {
            VastManager.this = r4;
            this.f4838a = vastVideoConfig;
        }

        @Override // com.mopub.mobileads.VideoDownloader.AbstractC1118a
        public void onComplete(boolean z) {
            VastVideoConfig vastVideoConfig;
            VastManagerListener vastManagerListener;
            if (!z || !VastManager.this.m3571d(this.f4838a)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to download VAST video.");
                vastManagerListener = VastManager.this.f4832a;
                vastVideoConfig = null;
            } else {
                vastManagerListener = VastManager.this.f4832a;
                vastVideoConfig = this.f4838a;
            }
            vastManagerListener.onVastVideoConfigurationPrepared(vastVideoConfig);
        }
    }

    public VastManager(Context context, boolean z) {
        m3572c(context);
        this.f4837f = z;
    }

    /* renamed from: c */
    public final void m3572c(Context context) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        float f = context.getResources().getDisplayMetrics().density;
        float f2 = f;
        if (f <= 0.0f) {
            f2 = 1.0f;
        }
        this.f4835d = width / height;
        this.f4836e = (int) (width / f2);
    }

    public void cancel() {
        VastXmlManagerAggregator vastXmlManagerAggregator = this.f4833b;
        if (vastXmlManagerAggregator != null) {
            vastXmlManagerAggregator.cancel(true);
            this.f4833b = null;
        }
    }

    /* renamed from: d */
    public final boolean m3571d(VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            vastVideoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(networkMediaFileUrl));
            return true;
        }
        return false;
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.AbstractC1117b
    public void onAggregationComplete(VastVideoConfig vastVideoConfig) {
        VastManagerListener vastManagerListener = this.f4832a;
        if (vastManagerListener != null) {
            if (vastVideoConfig == null) {
                vastManagerListener.onVastVideoConfigurationPrepared(null);
                return;
            }
            if (!TextUtils.isEmpty(this.f4834c)) {
                vastVideoConfig.setDspCreativeId(this.f4834c);
            }
            if (!this.f4837f || m3571d(vastVideoConfig)) {
                this.f4832a.onVastVideoConfigurationPrepared(vastVideoConfig);
                return;
            }
            VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), new C1106a(vastVideoConfig));
            return;
        }
        throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
    }

    public void prepareVastVideoConfiguration(String str, VastManagerListener vastManagerListener, String str2, Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, "context cannot be null");
        if (this.f4833b == null) {
            this.f4832a = vastManagerListener;
            VastXmlManagerAggregator vastXmlManagerAggregator = new VastXmlManagerAggregator(this, this.f4835d, this.f4836e, context.getApplicationContext());
            this.f4833b = vastXmlManagerAggregator;
            this.f4834c = str2;
            try {
                AsyncTasks.safeExecuteOnExecutor(vastXmlManagerAggregator, str);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to aggregate vast xml", e);
                this.f4832a.onVastVideoConfigurationPrepared(null);
            }
        }
    }
}
