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
public class VastManager implements VastXmlManagerAggregator.a {

    /* renamed from: a  reason: collision with root package name */
    private VastManagerListener f34272a;

    /* renamed from: b  reason: collision with root package name */
    private VastXmlManagerAggregator f34273b;

    /* renamed from: c  reason: collision with root package name */
    private String f34274c;

    /* renamed from: d  reason: collision with root package name */
    private double f34275d;
    private int e;
    private final boolean f;

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
        this.f34275d = width / height;
        this.e = (int) (width / f2);
        this.f = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (!CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            return false;
        }
        vastVideoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(networkMediaFileUrl));
        return true;
    }

    public void cancel() {
        VastXmlManagerAggregator vastXmlManagerAggregator = this.f34273b;
        if (vastXmlManagerAggregator != null) {
            vastXmlManagerAggregator.cancel(true);
            this.f34273b = null;
        }
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.a
    public void onAggregationComplete(final VastVideoConfig vastVideoConfig) {
        VastManagerListener vastManagerListener = this.f34272a;
        if (vastManagerListener == null) {
            throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
        } else if (vastVideoConfig == null) {
            vastManagerListener.onVastVideoConfigurationPrepared(null);
        } else {
            if (!TextUtils.isEmpty(this.f34274c)) {
                vastVideoConfig.setDspCreativeId(this.f34274c);
            }
            if (!this.f || b(vastVideoConfig)) {
                this.f34272a.onVastVideoConfigurationPrepared(vastVideoConfig);
                return;
            }
            VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), new VideoDownloader.a() { // from class: com.mopub.mobileads.VastManager.1
                @Override // com.mopub.mobileads.VideoDownloader.a
                public final void onComplete(boolean z) {
                    if (!z || !VastManager.b(vastVideoConfig)) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to download VAST video.");
                        VastManager.this.f34272a.onVastVideoConfigurationPrepared(null);
                        return;
                    }
                    VastManager.this.f34272a.onVastVideoConfigurationPrepared(vastVideoConfig);
                }
            });
        }
    }

    public void prepareVastVideoConfiguration(String str, VastManagerListener vastManagerListener, String str2, Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, "context cannot be null");
        if (this.f34273b == null) {
            this.f34272a = vastManagerListener;
            VastXmlManagerAggregator vastXmlManagerAggregator = new VastXmlManagerAggregator(this, this.f34275d, this.e, context.getApplicationContext());
            this.f34273b = vastXmlManagerAggregator;
            this.f34274c = str2;
            try {
                AsyncTasks.safeExecuteOnExecutor(vastXmlManagerAggregator, str);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to aggregate vast xml", e);
                this.f34272a.onVastVideoConfigurationPrepared(null);
            }
        }
    }
}
