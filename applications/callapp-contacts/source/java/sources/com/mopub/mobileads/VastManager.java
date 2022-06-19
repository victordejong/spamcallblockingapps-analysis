package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.CacheService;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastXmlManagerAggregator;
import com.mopub.mobileads.VideoDownloader;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastManager.class */
public class VastManager implements VastXmlManagerAggregator.AbstractC16831a {

    /* renamed from: a */
    private VastManagerListener f59489a;

    /* renamed from: b */
    private VastXmlManagerAggregator f59490b;

    /* renamed from: c */
    private String f59491c;

    /* renamed from: d */
    private double f59492d;

    /* renamed from: e */
    private int f59493e;

    /* renamed from: f */
    private final boolean f59494f;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastManager$VastManagerListener.class */
    public interface VastManagerListener {
        void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig);
    }

    public VastManager(Context context, boolean z) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        float f = context.getResources().getDisplayMetrics().density;
        float f2 = f <= BitmapDescriptorFactory.HUE_RED ? 1.0f : f;
        this.f59492d = width / height;
        this.f59493e = (int) (width / f2);
        this.f59494f = z;
    }

    /* renamed from: b */
    public static boolean m6411b(VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            vastVideoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(networkMediaFileUrl));
            return true;
        }
        return false;
    }

    public void cancel() {
        VastXmlManagerAggregator vastXmlManagerAggregator = this.f59490b;
        if (vastXmlManagerAggregator != null) {
            vastXmlManagerAggregator.cancel(true);
            this.f59490b = null;
        }
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.AbstractC16831a
    public void onAggregationComplete(final VastVideoConfig vastVideoConfig) {
        VastManagerListener vastManagerListener = this.f59489a;
        if (vastManagerListener != null) {
            if (vastVideoConfig == null) {
                vastManagerListener.onVastVideoConfigurationPrepared(null);
                return;
            }
            if (!TextUtils.isEmpty(this.f59491c)) {
                vastVideoConfig.setDspCreativeId(this.f59491c);
            }
            if (!this.f59494f || m6411b(vastVideoConfig)) {
                this.f59489a.onVastVideoConfigurationPrepared(vastVideoConfig);
                return;
            }
            VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), new VideoDownloader.AbstractC16844a() { // from class: com.mopub.mobileads.VastManager.1
                @Override // com.mopub.mobileads.VideoDownloader.AbstractC16844a
                public final void onComplete(boolean z) {
                    if (z && VastManager.m6411b(vastVideoConfig)) {
                        VastManager.this.f59489a.onVastVideoConfigurationPrepared(vastVideoConfig);
                        return;
                    }
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to download VAST video.");
                    VastManager.this.f59489a.onVastVideoConfigurationPrepared(null);
                }
            });
            return;
        }
        throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
    }

    public void prepareVastVideoConfiguration(String str, VastManagerListener vastManagerListener, String str2, Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, "context cannot be null");
        if (this.f59490b == null) {
            this.f59489a = vastManagerListener;
            VastXmlManagerAggregator vastXmlManagerAggregator = new VastXmlManagerAggregator(this, this.f59492d, this.f59493e, context.getApplicationContext());
            this.f59490b = vastXmlManagerAggregator;
            this.f59491c = str2;
            try {
                AsyncTasks.safeExecuteOnExecutor(vastXmlManagerAggregator, str);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to aggregate vast xml", e);
                this.f59489a.onVastVideoConfigurationPrepared(null);
            }
        }
    }
}
